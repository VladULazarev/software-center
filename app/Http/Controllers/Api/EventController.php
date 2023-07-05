<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Http\Requests\StoreEventRequest;
use App\Models\Event;
use App\Models\User;
use Illuminate\Http\JsonResponse;
use Illuminate\Http\Request;
use App\Http\Resources\EventResource;
use Illuminate\Support\Facades\Auth;
use App\Traits\HttpResponses;

class EventController extends Controller
{
    use HttpResponses;

    /**
     * Display a listing of the resource.
     */
    public function index(): JsonResponse|\Illuminate\Http\Resources\Json\AnonymousResourceCollection
    {
        $events = EventResource::collection(Event::latest('id')->get());

        if (! count($events)) {
            return $this->error('', 'The resource you requested could not be found.', 404);
        }

        return $events;
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(StoreEventRequest $request): EventResource
    {
        $participantIds = [Auth::user()->id];

        $event = Event::create([
            'user_id' => Auth::user()->id,
            'title' => $request->title,
            'description' => $request->description,
            'participants' => serialize($participantIds)
        ]);

        $currentEvent = Event::latest()->first();

        # Add the user to participants of the created event
        $users = User::find(Auth::user()->id);
        $currentEvent->users()->attach($users);

        return new EventResource($event);
    }

    /**
     * Display the specified resource.
     */
    public function show($id): JsonResponse|EventResource
    {
        $event = Event::find($id);

        if (! $event) {
            return $this->error('', 'The resource you requested could not be found', 404);
        }

        return new EventResource($event);
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, Event $event): EventResource
    {
        $currentUser = Auth::user();

        $participants = unserialize($event->participants);

        $currentEvent = Event::find($event->id);

        // Remove the current user from the participation of the current event
        if ($request->remove_current_user_from_participation) {

            if (($key = array_search(Auth::user()->id, $participants)) !== false) {

                unset($participants[$key]);

                $updatedParticipants = serialize($participants);

                $event->update([ 'participants' => $updatedParticipants ]);

                // Remove the user from participants of the current event
                $currentEvent->users()->detach($currentUser);

                return new EventResource($event);
            }
        }

        // Check if the current event was created by the current user
        $isEventOfCurrentUser = $event->user_id === $currentUser->id;

        // Check if the current user is taking part in the current event
        $isParticipant = in_array($currentUser->id, $participants);

        if ($isEventOfCurrentUser && $isParticipant) {
            $event->update([
                'title' => $request->title,
                'description' => $request->description
            ]);

            return new EventResource($event);

        } elseif ($isParticipant) {

            // Nothing was updated
            return new EventResource($event);

        } else {

            // It means, the current user is adding himself to 'Participants' of the current event.
            // 'title' and 'description' cannot be updated
            $participants[] = $currentUser->id;

            $updatedParticipants = serialize($participants);

            $event->update([ 'participants' => $updatedParticipants ]);

            // Add the user to participants of the current event
            $currentEvent->users()->attach($currentUser);

            return new EventResource($event);
        }
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id): JsonResponse
    {
        $currentUser = Auth::user();

        $event = Event::find($id);

        if (!$event) {
            return $this->error('', 'The resource you requested could not be found', 404);
        }

        if (!$this->isAuthorized($event)) {
            return $this->error('', 'You are not authorized to make this request', 403);
        }

        $event->users()->detach($currentUser);

        $event->delete();

        return $this->success('', 'The resource was deleted', 200);
    }

    /**
     * Check if the user is authorized to make the current request (By default,
     * the current user can only manage his/her own events)
     *
     * @param $event
     * @return bool
     */
    private function isAuthorized($event): bool
    {
        return Auth::user()->id === $event->user_id;
    }
}

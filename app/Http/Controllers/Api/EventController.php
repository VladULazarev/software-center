<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Http\Requests\StoreEventRequest;
use App\Models\Event;
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
        $events = EventResource::collection(

            Event::latest('id')->get()
        );

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
        $participants[] = Auth::user()->id;

        $event = Event::create([
            'user_id' => Auth::user()->id,
            'title' => $request->title,
            'description' => $request->description,
            'participants' => serialize($participants)
        ]);

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
        $participants = unserialize($event['participants']);

        // Remove the current user from the participation of the current event
        if ($request->remove_current_user_from_participation) {

            if (($key = array_search(Auth::user()->id, $participants)) !== false) {

                unset($participants[$key]);

                $updatedParticipants = serialize($participants);

                $event->update([
                    'participants' => $updatedParticipants
                ]);

                return new EventResource($event);
            }
        }

        // Check the '$participants'
        foreach ($participants as $participant) {

            if ($participant == Auth::user()->id && $event->user_id == Auth::user()->id) {

                // If '$participant == Auth::user()->id' was found, and it's his/her own event, it means the current user
                // is updating his/her own event
                $itsEventOfTheCurrentUser = true;

            } elseif ($participant == Auth::user()->id && $event->user_id != Auth::user()->id) {

                $itsNotEventOfTheCurrentUserButUserIsParticipant = true;
            }
        }

            if (isset($itsEventOfTheCurrentUser)) {

                $event->update([
                    'title' => $request->title,
                    'description' => $request->description
                ]);

                return new EventResource($event);

            } elseif (isset($itsNotEventOfTheCurrentUserButUserIsParticipant) ) {

                // Nothing was updated
                return new EventResource($event);

            } else {

                // It means the current user is adding himself/herself in 'Participants' of the current event
                // witch was NOT created by the current user. 'title' and 'description' can not be updated
                $participants[] = Auth::user()->id;

                $updatedParticipants = serialize($participants);

                $event->update([
                    'participants' => $updatedParticipants
                ]);

                return new EventResource($event);
            }
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id): JsonResponse
    {
        $event = Event::find($id);

        if (! $event) {
            return $this->error('', 'The resource you requested could not be found', 404);
        }

        if ( $this->isNotAuthorized($event) ) {
            return $this->isNotAuthorized($event);
        }

        $event->delete();

        return $this->success('', 'The resource was deleted', 200);
    }

    /**
     * Check if the user is authorized to make the current request (By default,
     * the current user can only manage his own events)
     * @param $event
     * @return JsonResponse if user is authorized, otherwise - null
     */
    private function isNotAuthorized($event)
    {
        if ( Auth::user()->id !== $event->user_id ) {
            return $this->error('', 'You are not authorized to make this request', 403);
        }

        return null;
    }
}

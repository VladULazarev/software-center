<?php

namespace App\Http\Resources;

use Illuminate\Http\Request;
use Illuminate\Http\Resources\Json\JsonResource;

class EventResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @return array<string, mixed>
     */
    public function toArray(Request $request): array
    {
        return [
            'event_id' => (string)$this->id,
            'event_attributes' => [
                'title' => $this->title,
                'description' => $this->description,
                'participants' => $this->participants,
                'created at' => $this->created_at,
                'updated at' => $this->updated_at
            ],
            'event_author' => [
                'author_id' => $this->user->id,
                'first_name' => $this->user->first_name,
                'last_name' => $this->user->last_name

            ],
            'event_participants' => $this->users
        ];
    }
}

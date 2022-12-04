<?php

namespace App\Http\Controllers;

use App\Events\NewMessage;
use App\Models\User;
use App\Models\UserMessageModel;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Broadcast;
use Illuminate\Support\Facades\DB;

class UserMessagesController extends Controller
{
    public function postMessages(Request $request)
    {
        $message = UserMessageModel::create([
            'user_id' => $request['user_id'],
            'message' => $request['message'],
            'message_answer_id' => $request['message_answer_id'],
            'image_path' => $request['image_path'],
            'viewed' => $request['viewed'],
            'created_at' => $request['created_at'],
            'updated_at' => $request['updated_at'],
            'deleted_at' => $request['deleted_at']
        ]);

        if ($request->file($request['image_by_user_id'])) {
            //save an image then update message
        }
        Broadcast(new NewMessage(json_encode($message)))->toOthers();
        return response([
            'success' => true
        ]);
    }

    public function getAllChats(Request $request)
    {
        $users = User::get();
        $usersMessages = [];
        foreach ($users as $user) {
            $usersMessages[] = UserMessageModel
                ::where('user_id', $user['id'])
                ->latest()->first();
        }
        foreach ($usersMessages as $usersMessage) {
            $usersMessage['user'] = User::where('id', $usersMessage['user_id'])->first();
            $usersMessage['count_of_messages'] = count(UserMessageModel
                ::where('id', $usersMessage['id'])
                ->where('created_at', '>', $request['date_time'])
                ->get());
        }
        return $usersMessage;
    }
}

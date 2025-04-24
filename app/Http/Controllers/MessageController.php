<?php

namespace App\Http\Controllers;
use App\Events\MessageSent;

use Illuminate\Http\Request;

class MessageController extends Controller
{
    public function send(Request $request)
    {
        event(new MessageSent($request->message));
        return back();
    }

    public function index()
    {
        return view('chat');
    }
}

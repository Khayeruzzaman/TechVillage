<?php

namespace App\Http\Controllers\api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

use App\Models\User;
use Illuminate\Support\Facades\DB;


class ApiSearchController extends Controller
{
    public function list(){
        //DB::Table('user')->select('uuid','first_name')->get();
        return response()->json([
            'items' => User::select('uuid', DB::raw("CONCAT(users.first_name,' ',users.last_name) as name"))->get()
        ]);
    }

    public function search(Request $request){
       
        $data = $request->search;
        $items = User::select('uuid', DB::raw("CONCAT(users.first_name,' ',users.last_name) as name"))
        ->where('first_name', 'LIKE' , '%'.$data.'%')
        ->orWhere('last_name', 'LIKE' , '%'.$data.'%')
        ->orWhere('email', 'LIKE' , '%'.$data.'%')
        ->paginate(10)->withQueryString();
        return view('search')->with('items', $items);

    }
}

<?php

namespace App\Http\Controllers\web;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

use App\Models\User;
use Illuminate\Support\Facades\DB;

class SearchController extends Controller
{
    public function list(){

        return view ('welcome');
    }
}

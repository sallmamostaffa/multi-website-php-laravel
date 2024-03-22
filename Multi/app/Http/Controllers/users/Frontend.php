<?php

namespace App\Http\Controllers\users;

use App\Http\Controllers\Controller;
use App\Models\admin\Mainbanner;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class Frontend extends Controller
{
    public function index(){
        $mainBanner = Mainbanner::all();

        $ourWorkCats = DB::select("SELECT * FROM `workcategories`");

        $ourWork = DB::select("SELECT `workprojects`.`title`, `workprojects`.`description`, `workprojects`.`photo`, GROUP_CONCAT(`workcategories`.`categoryName` SEPARATOR ' ') AS `categories` FROM `workprojects`, `workcatproj`, `workcategories` WHERE `workprojects`.`id` = `workcatproj`.`projId` AND `workcategories`.`id` = `workcatproj`.`catId` GROUP BY `workprojects`.`id`;");

        return view('users.index', compact('mainBanner', 'ourWork', 'ourWorkCats'));
        /* return view('users.index', compact('mainBanner', '....', '....')); */
    }
}

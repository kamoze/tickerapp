<?php




namespace App\Http\Controllers;

use Illuminate\Http\Request;
 use Illuminate\Support\Facades\Schema;
use App\Role;
use DB;

class RoleController extends Controller
{
    public function addrole(Request $request){
// $roles=new Role;
// $roles->user_role=$request->input('role');
// $roles->user_name=$request->input('name');



// $roles->save();

//  return redirect('/addrole');

    	return view('role.add');
}

public function saverole(Request $request){
// return view('role.add');
// $roleinfo= DB::table('roles')->where('id',$id)->first();
// echo($roleinfo);
// print_r($roleinfo);
// exit;
$roles=new Role;
$roles->user_role=$request->input('role');
$roles->user_name=$request->input('name');
$roles->company=$request->session()->get('companyId');
// $roles->id=$request->DB::table('roles')->where('id',$_REQUEST['id'])->get();




$roles->save();
return redirect('/roles');
}
public function rolelist(Request $request){
    // $roleinfo = DB::table('roles')->where('id',$_GET['id'])->get();
    // echo($roleinfo->id);
    // exit();

    // $roleinfo= DB::table('roles')->where('id',$_GET['id'])->get();
// echo($roleinfo);
// print_r($roleinfo);
// exit;
    // $roleid=$request->DB::table('roles')->where('id',$_REQUEST['id'])->get();
$role_info = DB::table('roles')->where('company',$request->session()->get('companyId'))->get();
return view ('role.list')->with('roles', $role_info);
}
public function editrole(Request $request){

            
            
$roleedit= DB::table('roles')->where('id',$_GET['id'])->get();
            
// echo($roleupdate);
return view('role.edit')->with('roles',$roleedit); 
	// return view('role.edit');
}

public function updaterole(Request $request){



DB::table('roles')
           ->where('id',$_REQUEST['id'])
            ->update(
            	['user_name' => $_REQUEST['name'],
            	'user_role' => $_REQUEST['role']
            ]);
            return redirect('/roles');

           
}
public function destroy_role(Request $request){



 DB::beginTransaction();
 DB::table('roles')->where('id',$_GET['id'])->delete();
  
DB::commit();

    return redirect('/roles');

  
 
}


}

<?php
namespace App\Http\Controllers;
use Illuminate\Http\Request;
use App\User;
use App\Ticker;
use Illuminate\Support\Facades\users;
use DB;
class DashboardController extends Controller
{
public function dashboard(Request $request){
$users= DB::table('users')->where('company',$request->session()->get('companyId'))->count();
$roles= DB::table('roles')->where('company',$request->session()->get('companyId'))->count();
$tickers= DB::table('ticker_types')->where('companyId',$request->session()->get('companyId'))->count();
$tickers_types= DB::table('tickers')->where('company',$request->session()->get('companyId'))->count();
// echo($users);
// exit;
// echo $UserId = $request->session()->get('UserId');
// echo $companyId = $request->session()->get('companyId');
$companyemail= $request->session()->get('companyemail');
$email= $request->session()->get('emaiId');
$id = $request->session()->get('companyId');
$companyname = $request->session()->get('companyname');
// $id = $request->session()->get('UserId');
$data = [
'companyemail'  => $companyemail,
'companyId'   => $id,
'companyname'=>$companyname,
// 'UserId'=>$id
'emaiId'  => $email
];
// $data = [
//    'UserId'  => $UserId,
//    'companyId'   => $companyId
// ];
return view ('register.dashboard')->with('data',$data)->with('userscount',$users)->with('rolesscount',$roles)->with('tickersscount',$tickers)->with('tickers_count',$tickers_types); 
// return view ('register.dashboard')->with('data',$UserId,$companyId); 
}
// public function destroy(Request $request) {
//    $value =$request->session()->flush();
//   // exit;
//   // return view ('register.login')->with('data',$value); 
//    $mydata=['value'=>$value];
//    return view('register.login')->with('mydata', $mydata); 
// }  
public function logout(Request $request) {
$request->session()->flush();
return redirect('/login')->with('status','logged out');
// return redirect()->route('logout');
}
public function logout_session(Request $request) {
return  view ('register.login');
}
// public function index(Request $request)
//     {
//       $showCounts = DB::table('users')->count();
//       // $showCounts = DB::table('users')->where('id',$id)->count();
//       return view('register.dashboard')->with('showCounts',$showCounts);
//     }
public function dashboardpage(Request $request){
// return view ('register.dashboard')->with('users',$users);
return view ('register.dashboard');
} 
public function user(Request $request){
return view ('register.user');
} 
public function newuser(Request $request){
return view ('register.adduser');
} 
public function adduser(Request $request){
return view ('register.adduser');
} 
// public function userAdd(Request $request){
// $users_role = DB::table('roles')->where('company',$request->session()->get('companyId'))->get();
// // `    echo "kiran";
// return view ('user.add')->with('data', $users_role);
// }
public function addticker(Request $request){
$roles = DB::table('roles')->where('company',$request->session()->get('companyId'))->get();
// return view ('user.add')->with('data', $users_role);
$ticker_type = DB::table('ticker_types')->get();
return view('register.addticker')->with('data', $ticker_type)->with('info', $roles);
} 
public function saveticker(Request $request){
// print_r($_REQUEST);
$roles=implode(',', $request->input('role'));
// exit();
$ticker=new Ticker;
$ticker->name=$request->input('name');
$ticker->type=$request->input('type');
$ticker->company=23;
$ticker->ticker_direction=$request->input('direction');
$ticker->ticker_fontsize=$request->input('fontsize');
$ticker->ticker_background_color=$request->input('backgroundcolor');
$ticker->ticker_text_color=$request->input('textcolor');
$ticker->ticker_fileds=$request->input('fileds');
$ticker->ticker_visisble_fileds=$request->input('visiblefileds');
$ticker->company=$request->session()->get('companyId');
$ticker->role=$roles;
$ticker->message=$request->input('message');
$ticker->save();
return redirect('/tickers');
} 
public function ticker_type(){
$ticker_type = DB::table('ticker_type')->pluck('ticker_type_name');
foreach($ticker_type as $ticker_type_name) {
echo $ticker_type_name;
}}
public function tickerList(Request $request){
$ticker_data = DB::table('tickers')->where('company',$request->session()->get('companyId'))->get();
return view ('ticker.list')->with('tickers', $ticker_data);
}
public function userList(Request $request){
// $user= DB::table('users')->where('email', $request->input('email'))->where('password', $request->input('password'))->first();
// echo($user['id']);
// exit();
$ticker_data = DB::table('users')->where('company',$request->session()->get('companyId'))->get();
// $user_data = DB::table('users')->where('companyemail',$request->session()->get('companyemail'))->get();
// echo($user_data);
// // echo $request->session()->get('companyId');
// exit();
// $ticker_data = DB::table('users')->where('id',$id)->pluck('id');
// if (DB::table('users')->where('id',$id)->pluck('id') == $info) {
//   return view ('user.list')->with('users', $ticker_data);
// }
// else
// {
//   echo "no records";
//   return view ('user.list');
// }
return view ('user.list')->with('users', $ticker_data);
}
public function userAdd(Request $request){
$users_role = DB::table('roles')->where('company',$request->session()->get('companyId'))->get();
// `    echo "kiran";
return view ('user.add')->with('data', $users_role);
}
public function userSave(Request $request){
$users=new User;
$users->name=$request->input('name');
$users->email=$request->input('email');
$users->user_role=$request->input('type');
$users->password=$request->input('password');
$users->contact=$request->input('contact');
$users->company=$request->session()->get('companyId');
// $users->id=$request-> DB::table('users')->where('id',$_GET['id'])->get('roleid');
// $user= DB::table('users')->where('email', $request->input('email'))->where('password', $request->input('password'))->first();
$users->save();
return redirect('/users');
//exit();
}
// public function checkuserlogin(Request $request){
//   $user= DB::table('users')->where('email', $request->input('email'))->where('password', $request->input('password'))->first();
//   if($user == null){
// return redirect('/login')->with ('responses','NOT REGISTERED');
// }
// else{
//   // session(array('UserId' => '8','companyId'=>'313'));
//   // session(array('email' => $request->input('email') ,'companyId'=>$user->company));
//   return redirect('/dashboard');
// }
// }
public function editUser(Request $request){
// DB::table('users')
//             ->where('id', 8)
//             ->update(['name' => 'ark']);
$userupdate= DB::table('users')->where('id',$_GET['id'])->get();
// $userupdate= DB::table('users')->where('id',$request->get('id'))
// $userupdate= DB::table('users')->pluck(id)
// echo ($userupdate);             
// return '$ticker_type_field'->with('data', $ticker_type_id); 
//             $userupdate = DB::table('users')->get();
return view('user.edit')->with('users',$userupdate); 
}
// public function editUpdate(){
// return view('user.edit');
// }
public function editSave(Request $request){
return view('user.edit');
}
public function addrole(Request $request){
$roles=new Role;
$roles->user_role=$request->input('role');
$roles->save();
return redirect('/addrole');
}
public function saverole(Request $request){
return view('role.add');
}
public function updateuser(Request $request){
DB::table('users')
->where('id',$_REQUEST['id'])
->update(
['name' => $_REQUEST['name'],
'email' => $_REQUEST['email'],
'contact' => $_REQUEST['contact'],
'password' => $_REQUEST['password']
]);
return redirect('/users');
}
public function destroy_user(Request $request){  
DB::beginTransaction();
DB::table('users')->where('id',$_GET['id'])->delete();
DB::commit();
return redirect('/users');
}
// public function index()
// {
//     $roles = Roles::all();
//     $selectedRole = User::first()->role_id;
//     return view('my_view', compact('roles', 'selectedRole');
// }
}
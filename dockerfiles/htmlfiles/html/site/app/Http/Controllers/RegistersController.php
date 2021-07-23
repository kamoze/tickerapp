<?php

namespace App\Http\Controllers;
use Illuminate\Http\Request;
use App\Customer;
use Illuminate\Support\Facades\customers;
use App\Http\Controllers\Hash;
use DB;

class RegistersController extends Controller
{
	
    public function companyRegister(Request $request){
	    //echo"kiran exit";
//print_r($_REQUEST);
//exit();
	     return view ('register.companyRegister');
	   

	}	
	public function login(Request $request){
	    
	     return view ('register.login');
	   

	}	
	
	 public function savecompany(Request $request){
	    //echo"kiran exit";
	    
$Customers=new customer;
$Customers->firstname=$request->input('firstname');
$Customers->lastname=$request->input('lastname');
$Customers->companyemail=$request->input('companyemail');
$Customers->companyname=$request->input('companyname');
$Customers->password=$request->input('password');
		$Customers->save();
		
		return redirect('/login')->with ('response','register successful');
	}	
	public function create(){
    return view('post.create');
	}
	public function store(Request $request){
	$validatedData = $request->validate([
    'firstname' => 'required',
      
    ]);

   
	}
	public function checklogin(Request $request){
$customer = DB::table('customers')->where('companyemail', $request->input('companyemail'))->where('password', $request->input('password'))->first();
$user= DB::table('users')->where('email', $request->input('companyemail'))->where('password', $request->input('password'))->first();

// print_r($customer);
// echo($customer->id);
// echo $user;

//  echo($user->id);
// exit();
//echo $customer->count();
if($customer == null && $user == null){
return redirect('/login')->with ('responses','NOT REGISTERED');
}

else{
	if($customer == null) {
		session(array('companyemail' => $request->input('companyemail') ,'companyId'=>$user->company ,'emailId'=>$user->email));
	}else {
		session(array('companyemail' => $request->input('companyemail') ,'companyId'=>$customer->id ,'emailId'=>$customer->companyemail,'companyname'=>$customer->companyname ));
	}
	// session(array('UserId' => '8','companyId'=>'313'));
	
	
	// 
// 
	return redirect('/dashboard');
}


}


	public function savelogin(){
		return 'okay';
	}
	
	public  function loginPost( Request $request ) { 
        $companyemail = $request->companyemail;
        $password  =  $request ->password ;
        $data  = DB::table('customers')->where('companyemail' ,$_REQUEST['companyemail'] ) ->  get();
        if ( count ( $data ) >  0 )  // whether the email exists or not
            {
                
                Session :: put (   $data -> companyemail );
                
                return redirect ( '/companyRegister' );
            }
            else
            {
            	return redirect ( '/companyRegister' );
            
            }
            
    }




}
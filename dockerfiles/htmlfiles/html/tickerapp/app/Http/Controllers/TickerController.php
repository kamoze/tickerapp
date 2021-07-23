<?php
namespace App\Http\Controllers;
use Illuminate\Http\Request;
use App\Ticker_type;
use App\TickerData;
use DB;
class TickerController extends Controller
{
public function addtickertype(Request $request){
return view('ticker.add');
}
public function savetickertype(Request $request){
// return view('ticker.list');
//    	$info = DB::table('graphs')->where('active', true)->orderBy('type')->graphs( 'id','type');
//    	echo($info);
// exit();
$ticker_types=new Ticker_type;
$ticker_types->ticker_name=$request->input('name');
$ticker_types->ticker_direction=$request->input('direction');
$ticker_types->ticker_fontsize=$request->input('fontsize');
$ticker_types->ticker_background_color=$request->input('backgroundcolor');
$ticker_types->ticker_text_color=$request->input('textcolor');
$ticker_types->fileds=$request->input('fileds');
$ticker_types->stock=$request->input('stock');
// $ticker_types->type=$request->input('type');
$ticker_types->graph=$request->input('graph');
$ticker_types->companyId=$request->session()->get('companyId');
$ticker_types->save();
return redirect('/ticker_types');
}
public function tickertypelist(Request $request){
$ticker_info = DB::table('ticker_types')->where('companyId',$request->session()->get('companyId'))->get();
return view ('ticker.list_ticker_type')->with('ticker_types', $ticker_info);
}
public function showTicker(Request $request){
$ticker_info = DB::table('tickers')->where('id',$_GET['tickerid'])->get();
$ticker_data = DB::table('tickers_data')->where('tickerid',$_GET['tickerid'])->get();
return view ('ticker.tickerdisplay')->with('ticker_info', $ticker_info)->with('ticker_data', $ticker_data);
}
public function addTickerData(){
// print_r($_FILES);
$ticker_info = DB::table('tickers')->where('id',$_GET['tickerid'])->get();
$ticker_data = DB::table('tickers_data')->where('tickerid',$_GET['tickerid'])->get();
// print_r($ticker_info);exit;
return view ('ticker.addTickerData')->with('ticker_info', $ticker_info)->with('ticker_data', $ticker_data); 
}
public function saveTickerData(Request $request){
print_r($_FILES);
print_r($_REQUEST);
// $file = fopen("contacts.csv","r");
$file = fopen($_FILES['csvdata']['tmp_name'], 'r');
while(! feof($file))
{
// if(is_array(fgetcsv($file))) {
$data = implode(",",(array)fgetcsv($file));
$ticker_data =new TickerData;
$ticker_data->tickerid=$request->input('tickerid');
$ticker_data->data=$data;
$ticker_data->save();
// }
}
fclose($file);
// exit;
return redirect('/addtickerdata?tickerid='.$request->input('tickerid'));
// $ticker_info = DB::table('tickers')->where('id',$_GET['tickerid'])->get();
// print_r($ticker_info);exit;
// return view ('ticker.addTickerData')->with('ticker_info', $ticker_info);
}
public function editticker(Request $request){
	echo "in edit ticker";
$roles = DB::table('roles')->where('company',$request->session()->get('companyId'))->get();
$ticker_type = DB::table('ticker_types')->get();
$tickeredit=DB::table('tickers')->where('id',$_GET['id'])->get();
return view('ticker.editticker')->with('tickers',$tickeredit)->with('info', $roles)->with('data', $ticker_type);
}
public function updateticker(Request $request){
$roles=implode(',', $request->input('role'));
DB::table('tickers')
->where('id',$_REQUEST['id'])
->update(
['name' => $_REQUEST['name'],
'type' => $_REQUEST['type'],
'company' => $_REQUEST['company'],
'ticker_direction' => $_REQUEST['direction'],
'ticker_fontsize' => $_REQUEST['fontsize'],
'ticker_background_color' => $_REQUEST['ticker_background_color'],
'ticker_text_color' => $_REQUEST['textcolor'],
'ticker_fileds' => $_REQUEST['ticker_fileds'],
'ticker_visisble_fileds' => $_REQUEST['ticker_visisble_fileds'],
'message' => $_REQUEST['message'],
// 'role' => $_REQUEST['role']
'role'=>$roles
]);
return redirect('/tickers');
}
public function destroyticker(Request $request){
DB::beginTransaction();
DB::table('tickers')->where('id',$_GET['id'])->delete();
DB::commit();
return redirect('/tickers');
}
public function edittickertype(Request $request){
$tickertypeedit= DB::table('ticker_types')->where('id',$_GET['id'])->get();
// echo($roleupdate);
return view('ticker.edit')->with('ticker_types',$tickertypeedit); 
// 	// return view('role.edit');
}
public function updatetickertype(Request $request){
DB::table('ticker_types')
->where('id',$_REQUEST['id'])
->update(
['ticker_name' => $_REQUEST['name'],
'ticker_direction' => $_REQUEST['direction'],
'ticker_fontsize' => $_REQUEST['fontsize'],
'ticker_background_color' => $_REQUEST['backgroundcolor'],
'ticker_text_color' => $_REQUEST['textcolor'],
'fileds' => $_REQUEST['fileds'],
'stock' => $_REQUEST['stock']
]);
return redirect('/ticker_types');
}
public function destroy_ticker_type(Request $request){
DB::beginTransaction();
DB::table('ticker_types')->where('id',$_GET['id'])->delete();
DB::commit();
// DB::commitTransaction();
return redirect('/ticker_types');
}
// public function create()
// {
// // $items = Items::lists('name', 'id');
// $graph = DB::where('active', true)->orderBy('type')->graphs( 'id','type');
// exit;
// // $graphs=DB::table('graphs')->where()
// return view('ticker.add')->with('graphs',$graphs); 
// }
}
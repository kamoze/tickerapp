<link href="companyRegister/css/now-ui-dashboard.min69ea.css?v=1.1.2" rel="stylesheet" />
<?php
function sparrow($value){
 if($value < 0){
 return '<img src="red.png"  class="down_red" />';
 }
elseif ($value > 0 ) {
 return '<img src="green.png"  class="up_green" />';
 }
 
 else{
 return '<img src="indifferent.png"  class="up_green" />';
 }
}
?>
<style>
body {width:100%;
height:100%;
margin: 0;
padding:0;
    display:flex;
	background-color:#000000;}
.TickerNews {
  margin-bottom:-100px;
padding-top: 0;
background-size: 100%;

    width:100%;
    margin:auto;
    max-width:100%;
    overflow:hidden;
	font-size: 30px;
}

.ti_wrapper {
  width: 100%;
  position: relative;
  overflow: hidden;
  
}

.ti_slide {
  width: 30000px;
  position: relative;
  left: 0;
  top: 0;
}

.ti_content {
  width: 8000px;
  position: relative;
  float: left;
}

.ti_news { float: left; }

.ti_news a {
color:#00CDCD !important;
  display: block;
  margin-right:10px;
  color: white;
  text-decoration: none;
display: inline-block;
    overflow: hidden;
    white-space: nowrap;
	
}

h5{color:#eee;
font-size:30px !important;
margin-bottom:-7px;
margin-top:-15px;

    display: inline-block;
    overflow: hidden;
    white-space: nowrap;
}

p{color:red;
font-size:20px !important;
margin-bottom:-5px;
margin-top:-15px;

    display: inline-block;
    overflow: hidden;
    white-space: nowrap;
}


.container {
    display: block;
    
    margin: 0 auto;
    max-width: 100%;
    position: relative;
}

div span
		{
			width: 100%;
			left: 5px;
			top: 0px;
			overflow: hidden;
			position: relative;
			line-height: 10px;
			font-size-adjust: none;
		
		}
		.green{
			color: #00FF00 !important;
		}
		.red{
		 color: red !important;
		}
		div
		{
			font-size: 30px;
			list-style-type: none;
			margin:0;
			padding: 0;
			position: relative;
			
		}
		div span a
		{
		
			margin: 0;
			font-weight: bold;
			color: #ECECEC;
			padding: 0 5px 0 10px;
		}
		b
		{
			color:#eee;
		}
		
		a{colour:#eee;}
		.up_green
		{
			padding-right:10px;
			
			
			
			
		}
		.down_red
		{
			padding-right:10px;
			
			
			
		}
		
		@media screen and (orientation: portrait) {
  img.up_green { max-width: 8px; }
}

@media screen and (orientation: landscape) {
  img.up_green { max-height: 13px; }
}

@media screen and (orientation: portrait) {
  img.down_red { max-width: 8px; }
}

@media screen and (orientation: landscape) {
  img.down_red { max-height: 13px; }
}
</style>

						<div class="TickerNews theme2" id="T1">
						  <div class="ti_wrapper">
							<div class="ti_slide">
							  <div class="ti_content">

							
							  
						@foreach($ticker_data as $data)
						<?php
						$row = array();
								 // $data = $ticker_info->all();
								 // $fileds =  explode(',',$data[0]->ticker_fileds);
								 $datarray = explode(",",$data->data);
								 // print_r($datarray);
								 if(isset($datarray[4]) and isset($datarray[1]) and isset($datarray[2]) and isset($datarray[3])){
								$row['date_maturity'] = $datarray[1];
								$row['change_yield'] = $datarray[4];
								$row['discount'] = $datarray[2];
								$row['yield'] = $datarray[3];
								 
								
						?>
						<div class="ti_news"><a class="<?php if($row['change_yield'] < 0){ echo 'red'; }elseif ($row['change_yield'] > 0 ) {echo 'green';} else{ echo '';} ?>"> <?php echo ' '.date('d'.'-'.'M'.'-'.'Y', strtotime($row['date_maturity'])).' '.'<h5>Disc:</h5>'. $row['discount'].' '.'<h5>Yield:</h5>'.$row['yield'].sparrow($row['change_yield']).'<h5>|<h5>'; ?></a></div>
							   
								 <?php } ?>  
						 @endforeach
						</div>
							</div>
						  </div>
						</div>
						
						<!-- -->
						
   @include('register.footer')
  <script src="libs/jquery.tickerNews.min.js"></script>
	<script type="text/javascript">
									$(function(){
										setTimeout(function(){
										
										$("#T1").newsTicker();
										$("#T").hover(
						  function(handlerIn) {$("#T2").stopTicker();},function(handlerOut) {$("#T2").newsTicker();}
						);
									$(".ti_content")
									
						    }, 500);
							});
								</script>
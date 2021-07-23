@include('register.header')
<?php
   $ticker_data=json_decode($tickers);
   // echo "<br/>";
   // print_r( $ticker_type_data[0]);
   //print_r($userdata[0]->id);
   
   
   // exit;
   
   ?>                   
<!-- {{$tickers}} -->
<style>
   .navbar .navbar-toggle .navbar-toggler-bar {
   background-color: black;
   }
</style>
<body class=" sidebar-mini ">
   @include('register.nav')
   <!-- <div class="wrapper "> -->
   <div class="main-panel">
   <!--  <div class="container-fluid"> -->
   <!-- Navbar -->
   <nav class="navbar">
      <div class="container-fluid">
         <div class="navbar-wrapper ">
            <div class="navbar-toggle">
               <button type="button" class="navbar-toggler">
               <span class="navbar-toggler-bar bar1"></span>
               <span class="navbar-toggler-bar bar2"></span>
               <span class="navbar-toggler-bar bar3"></span>
               </button>
            </div>
         </div>
      </div>
   </nav>
   <!-- <div class="panel-header panel-header-sm">
      <canvas id="bigDashboardChart"></canvas>
      </div>
      -->
   <div class="container-fluid">
   <div class="content">
      <div class="row">
         <div class="col-md-12">
            <div class="card">
               <div class="card-header">
                  <h4 class="card-title">Edit Tickers</h4>
               </div>
               <div class="card-body">
                  <form method="post" >
                     {{csrf_field()}}
                     <div class="toolbar">
                        <!--        Here you can write extra buttons/actions for the toolbar              -->
                     </div>
                     <div class="row">
                        <div class="col-sm-7">
                           <div class="form-group">
                              <input class="form-control" type="hidden" name="Id" id="id" required="true" value="{{$ticker_data[0]->id}}">
                           </div>
                        </div>
                     </div>
                     <div class="row">
                        <label class="col-sm-2 col-form-label">Name</label>
                        <div class="col-sm-7">
                           <div class="form-group">
                              <input class="form-control"
                                 type="text"
                                 name="name"
                                 id="name"
                                 required="true"
                                 value="{{ $ticker_data[0]->name}}"
                                 />
                           </div>
                        </div>
                     </div>
                     <div class="row">
                        <label class="col-sm-2 col-form-label">type</label>
                        <div class="col-sm-7">
                           <div class="form-group">
                              <select class="form-control" name="type" id="type required="true">                                                         
									<option value="1" <?php if ("1"==$ticker_data[0]->type) echo 'selected="selected"'; ?> >Stocks</option>
                                    <option value="2" <?php if ("2"==$ticker_data[0]->type) echo 'selected="selected"'; ?>>Bonds</option>
                                    <option value="3" <?php if ("3"==$ticker_data[0]->type) echo 'selected="selected"'; ?>>Bills</option>
                                    <option value="4" <?php if ("4"==$ticker_data[0]->type) echo 'selected="selected"'; ?>>Message</option>
                                    <option value="5" <?php if ("5"==$ticker_data[0]->type) echo 'selected="selected"'; ?>>FX</option>
							  </select>
                         </div>
                        </div>
                     </div>
                     <div class="row">
                        <label class="col-sm-2 col-form-label">company</label>
                        <div class="col-sm-7">
                           <div class="form-group">
                              <input class="form-control"
                                 type="int"
                                 name="company"
                                 id="company" 
                                 required="true"
                                 value="{{  $ticker_data[0]->company}}"
                                 />
                           </div>
                        </div>
                     </div>
                     <div class="row">
                        <label class="col-sm-2 col-form-label">Direction</label>
                        <div class="col-sm-7">
                           <div class="form-group">
                              <input class="form-control"
                                 type="text"
                                 name="direction"
                                 id="direction"
                                 value="{{  $ticker_data[0]->ticker_direction}}"
                                 required="true"
                                 >
                           </div>
                        </div>
                     </div>
                     <div class="row">
                        <label class="col-sm-2 col-form-label">Fontsize</label>
                        <div class="col-sm-7">
                           <div class="form-group">
                              <input class="form-control"
                                 type="size"
                                 name="fontsize"
                                 id="fontsize"
                                 value="{{  $ticker_data[0]->ticker_fontsize}}"
                                 required="true"
                                 >
                           </div>
                        </div>
                     </div>
                     <div class="row">
                        <label class="col-sm-2 col-form-label">Text Background Color</label>
                        <div class="col-sm-7">
                           <div class="form-group">
                              <input class=""
                                 type="color"
                                 name="ticker_background_color"
                                 id="ticker_background_color"
                                 value="{{  $ticker_data[0]->ticker_background_color}}"
                                 required="true"
                                 >
                           </div>
                        </div>
                     </div>
                     <div class="row">
                        <label class="col-sm-2 col-form-label">Text Color</label>
                        <div class="col-sm-7">
                           <div class="form-group">
                              <input class=""
                                 type="color"
                                 name="textcolor"
                                 id="textcolor"
                                 value="{{  $ticker_data[0]->ticker_text_color}}"
                                 required="true"
                                 >
                           </div>
                        </div>
                     </div>
                     <div class="row">
                        <label class="col-sm-2 col-form-label">Ticker Fields</label>
                        <div class="col-sm-7">
                           <div class="form-group">
                              <input class="form-control"
                                 type="text"
                                 name="ticker_fileds"
                                 id="ticker_fileds"
                                 value="{{  $ticker_data[0]->ticker_fileds}}"
                                 required=""
                                 >
                           </div>
                        </div>
                     </div>
                     <div class="row">
                        <label class="col-sm-2 col-form-label">Ticker visisble fileds</label>
                        <div class="col-sm-7">
                           <div class="form-group">
                              <input class="form-control"
                                 type="text"
                                 name="ticker_visisble_fileds"
                                 id="ticker_visisble_fileds"
                                 value="{{  $ticker_data[0]->ticker_visisble_fileds}}"
                                 required=""
                                 >
                           </div>
                        </div>
                     </div>
                     <div class="row">
                        <label class="col-sm-2 col-form-label">Ticker role</label>
                        <div class="col-lg-5 col-md-8 col-sm-5 mb-3">
                           <div class="form-group">
                              <select class="form-control"
                                 multiple required="multiple"
                                 name="role[]"
                                 id="role"
                                 required="true"
                                 >
                                 <!--  @foreach($info as $e)
                                    <option value="{{$e->id}}">
                                          {{$e->user_role}}
                                       </option>
                                       @endforeach
                                    </select> -->
                                 <?php $userrolesarray = explode(',', $ticker_data[0]->role); ?>
                                 @foreach($info as $e)
                                 <option value="{{$e->id}}" 
                                    <?php if(in_array($e->id, $userrolesarray)) { ?>
                                    selected="selected" 
                                    <?php } ?>
                                    >{{$e->user_role}}
                                 </option>
                                 @endforeach
                              </select>
                           </div>
                        </div>
                     </div>
                     <div class="row">
                        <label class="col-sm-2 col-form-label">Message(Note)</label>
                        <div class="col-lg-5 col-md-8 col-sm-5 mb-3">
                           <div class="form-group">
                              <input type="text" name="message" id="message" class="form-control" value="{{  $ticker_data[0]->message}}">
                           </div>
                        </div>
                     </div>
                     <div class="row">
                        <div class="col-sm-7">
                           <div class="form-group">
                              <input class="form-control" type="submit" name="submit" required=""  />
                           </div>
                        </div>
                     </div>
                  </form>
               </div>
            </div>
         </div>
      </div>
   </div>
   @include('register.footer')
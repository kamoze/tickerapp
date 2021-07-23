@include('register.header')
<?php
   $ticker_type_data=json_decode($ticker_types);
   // echo "<br/>";
   // print_r( $ticker_type_data[0]);
   //print_r($userdata[0]->id);
   
   
   // exit;
   
   ?>                   
<!-- {{$ticker_types}} -->
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
                  <h4 class="card-title">Edit Data Type</h4>
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
                              <input class="form-control" type="hidden" name="Id" id="id" required="true" value="{{$ticker_type_data[0]->id}}">
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
                                 value="{{ $ticker_type_data[0]->ticker_name}}"
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
                                 required="true"
                                 value="{{ $ticker_type_data[0]->ticker_direction}}"
                                 />
                           </div>
                        </div>
                     </div>
                     <div class="row">
                        <label class="col-sm-2 col-form-label">Font size</label>
                        <div class="col-sm-7">
                           <div class="form-group">
                              <input class="form-control"
                                 type="text"
                                 name="fontsize"
                                 id="fontsize" 
                                 required="true"
                                 value="{{ $ticker_type_data[0]->ticker_fontsize}}"
                                 />
                           </div>
                        </div>
                     </div>
                     <div class="row">
                        <label class="col-sm-2 col-form-label">Background Color</label>
                        <div class="col-sm-7">
                           <div class="form-group">
                              <input class=""
                                 type="color"
                                 name="backgroundcolor"
                                 id="backgroundcolor"
                                 value="{{ $ticker_type_data[0]->ticker_background_color}}"
                                 required="true"
                                 >
                           </div>
                        </div>
                     </div>
                     <div class="row">
                        <label class="col-sm-2 col-form-label">Text Color</label>
                        <div class="col-sm-7">
                           <div class=""> 
                              <input class=""
                                 type="color"
                                 name="textcolor"
                                 id="textcolor"
                                 value="{{ $ticker_type_data[0]->ticker_text_color}}"
                                 required="true"
                                 >
                           </div>
                        </div>
                     </div>
                     <div class="row">
                        <label class="col-sm-2 col-form-label">Fileds Comma separated</label>
                        <div class="col-sm-7">
                           <div class="form-group">
                              <input class="form-control"
                                 type="text"
                                 name="fileds"
                                 id="fileds"
                                 required="true"
                                 >
                           </div>
                        </div>
                     </div>
                     <div class="row">
                        <label class="col-sm-2 col-form-label">Stock</label>
                        <div class="col-sm-7">
                           <div class="form-group">
                              <input class="form-control"
                                 type="text"
                                 name="stock"
                                 id="stock"
                                 value="{{ $ticker_type_data[0]->stock}}"
                                 required="true"
                                 >
                           </div>
                        </div>
                     </div>
                     <div class="row">
                        <div class="col-sm-7">
                           <div class="form-group">
                              <input class="form-control" type="submit" name="submit" required="true"  />
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
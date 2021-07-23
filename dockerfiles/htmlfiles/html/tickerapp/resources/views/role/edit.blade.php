@include('register.header')

<?php
   $roledata=json_decode($roles);
   // echo "<br/>";
   //print_r($roledata[0]);
   //print_r($userdata[0]->id);
   
   
   //exit;
   
   ?>                   
<!-- {{$roles}} -->
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
                  <h4 class="card-title">Edit Role</h4>
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
                            <input class="form-control" type="hidden" name="Id" id="id" required="true" value="{{$roledata[0]->id}}">
                           </div>
                        </div>
                     </div>

                     <div class="row">
                        <label class="col-sm-2 col-form-label">Name</label>
                        <div class="col-sm-7">
                           <div class="form-group">
                              <input class="form-control" type="text" name="name" id="name" required="true" value="{{$roledata[0]->user_name}}" >
                           </div>
                        </div>
                     </div>
                     
                     <div class="row">
                        <label class="col-sm-2 col-form-label">Role</label>
                        <div class="col-sm-7">
                           <div class="form-group">
                              <input class="form-control" type="text" name="role" id="role" required="true" value="{{$roledata[0]->user_role}}"  >
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
@include('register.header')
</script>
<?php
   $userdata=json_decode($users);
   // echo "<br/>";
   // print_r($userdata);
   // print_r($userdata[0]->id);
   
   
   // exit;
   
   ?>                   
<!-- {{$users}} -->

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
                  <h4 class="card-title">Users</h4>
               </div>
               <div class="card-body">
                  <div class="toolbar">
                     <a class="btn btn-primary btn-simple" href="{{ url('/adduser') }} " >Add User</a>
                     <!--        Here you can write extra buttons/actions for the toolbar              -->
                  </div>
                  <table id="datatable" class="table table-striped table-bordered" cellspacing="0" width="100%">
                     <thead>
                        <tr>
                           <th>Name</th>
                           <th>Email</th>
                           <th>Contact</th>
                           <th>Role</th>
                           <th class="disabled-sorting text-right">Actions</th>
                        </tr>
                     </thead>
                     <tfoot>
                        <tr>
                           <th>Name</th>
                           <th>Email</th>
                           <th>Contact</th>
                           <th>Role</th>
                           <th class="disabled-sorting text-right">Actions</th>
                        </tr>
                     </tfoot>
                     <tbody>
                        @foreach($users as $user)
                        <tr>
                           <td>{{$user->name}}</td>
                           <td>{{$user->email}}</td>
                           <td>{{$user->contact}}</td>
                           <td>{{$user->role}}</td>
                           <td class="text-right">
                              <a href="{{ URL('http://159.89.167.238/ticker/public/edituser?id='.$user->id)}}" class="btn btn-round btn-warning btn-icon btn-sm edit"><i class="fa fa-edit"></i></a>
                              
                              <a href="{{ URL('http://159.89.167.238/ticker/public/deleteuser?id='.$user->id)}}" class="btn btn-round btn-danger btn-icon btn-sm remove"><i class="fas fa-times"></i></a>
                           </td>
                        </tr>
                        @endforeach
                     </tbody>
                  </table>
               </div>
               <!-- end content-->
            </div>
            <!--  end card  -->
         </div>
         <!-- end col-md-12 -->
      </div>
      <!-- end row -->
   </div>
   @include('register.footer')
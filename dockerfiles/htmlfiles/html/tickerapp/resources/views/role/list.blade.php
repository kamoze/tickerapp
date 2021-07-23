
@include('register.header')

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
                  <h4 class="card-title">Roles</h4>
               </div>
               <div class="card-body">
                  <div class="toolbar">
                     <a class="btn btn-primary btn-simple" href="{{ url('/addrole') }} " >Add Role</a>
                     <!--        Here you can write extra buttons/actions for the toolbar              -->
                  </div>
                  <table id="datatable" class="table table-striped table-bordered" cellspacing="0" width="100%">
                     <thead>
                        <tr>
                           <th>Name</th>
                           <th>company</th>
                           <th>Role</th>
                           <th class="disabled-sorting text-right">Actions</th>
                        </tr>
                     </thead>
                     <tfoot>
                        <tr>
                           <th>Name</th>
                     <th>company</th>
                           <th>Role</th>
                           <th class="disabled-sorting text-right">Actions</th>
                        </tr>
                     </tfoot>
                     <tbody>
                        @foreach($roles as $role)
                        <tr>
                           <td>{{$role->user_name}}</td>
                             <td>{{$role->id}}</td>
                           <td>{{$role->user_role}}</td>
                           <td class="text-right">
                              <a href="{{ URL('http://159.89.167.238/ticker/public/editrole?id='.$role->id)}}" class="btn btn-round btn-warning btn-icon btn-sm edit"><i class="fa fa-edit"></i></a>
                             
                              <a href="{{ URL('http://159.89.167.238/ticker/public/deleterole?id='.$role->id)}}"  class="btn btn-round btn-danger btn-icon btn-sm remove"><i class="fa fa-times"></i></a>
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

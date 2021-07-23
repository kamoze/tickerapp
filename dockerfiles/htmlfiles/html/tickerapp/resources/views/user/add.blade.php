@include('register.header')
<script type="text/javascript">
        function validateform(){
            
                if(document.getElementById("name").value == '') {
                    //swal("Please Enter First Name")
                     swal(" Name", "Please enter  name", "error")
                    // alert("name required");
                    return false;
                }
                if(document.getElementById("email").value == '') {
                    //swal("Please Enter lastname")
                   swal(" email", "Please enter  email", "error")
                    //alert();
                    return false;
                }
                if(document.getElementById("contact").value == '') {
                    //swal("Please Enter lastname")
                    swal(" contact", "Please enter contact", "error")
                    //alert();
                    return false;
                }
                if(document.getElementById("password").value == '') {
                    //swal("Please Enter lastname")
                    swal("password", "Please enter password", "error")
                    //alert();
                    return false;
                }
                else{
                	swal("User added", "user added successfully", "success")
                }
            

        }
    </script>

    <body class=" sidebar-mini ">
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
                    <h4 class="card-title">Add User</h4>
                </div>
                <div class="card-body">
					<form method="post" >
						{{csrf_field()}}
                    <div class="toolbar">
                        <!--        Here you can write extra buttons/actions for the toolbar              -->
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
								 >
							</div>
						</div>
					</div>
					
					<div class="row">
						<label class="col-sm-2 col-form-label">Email</label>

						<div class="col-sm-7">
							<div class="form-group">
								<input class="form-control"
								   type="text"
								   name="email"
								   id="email"
								   required="true"
								 />
							</div>
						</div>
					</div>
				
					<div class="row">
						<label class="col-sm-2 col-form-label">Contact</label>

						<div class="col-sm-7">
							<div class="form-group">
								<input class="form-control"
								   type="text"
								   
								   name="contact"
								   id="contact" 
								  required="true"
								 />
							</div>
						</div>
					</div>
					<div class="row">
                              <label class="col-sm-2 col-form-label">User role</label>
                              <div class="col-lg-5 col-md-8 col-sm-5 mb-3">
                                 <div class="form-group">
                                 <select  id="role" class="form-control" name="type">
                                    @foreach($data as $d)
                                    <option value="{{$d->id}}">
                                       {{$d->user_role}}
                                    </option>
                                    @endforeach
                                 </select>
                                 </div>
                                 
                              </div>
                           </div>

					
					<div class="row">
						<label class="col-sm-2 col-form-label">Password</label>
						<div class="col-sm-7">
							<div class="form-group">
								<input class="form-control"
									type="password"
									name="password"
									id="password"
									required="true"
								 >
							</div>
						</div>
					</div>
					
					<div class="row">
						<div class="col-sm-7">
							<div class="form-group">
								<input class="form-control"
									type="submit"
									name="submit"

									required="true"
									onclick="return validateform()" 
								 />
							</div>
						</div>
					</div>

					
					</form>
                   
                </div><!-- end content-->
            </div><!--  end card  -->
        </div> <!-- end col-md-12 -->
    </div> <!-- end row -->

                  </div>


                  @include('register.footer')



 
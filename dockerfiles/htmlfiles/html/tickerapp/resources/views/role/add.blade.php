@include('register.header')
<script type="text/javascript">
        function validateform(){

                if(document.getElementById("name").value == '') {
                    //swal("Please Enter First Name")
                     swal(" Name", "Please enter  name", "error")
                    // alert("name required");
                    return false;
                }
                if(document.getElementById("role").value == '') {
                    //swal("Please Enter lastname")
                   swal("role", "Please enter role", "error")
                    //alert();
                    return false;
                }
                

        }
    
    </script>

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
                    <h4 class="card-title">Add Role</h4>
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
						<label class="col-sm-2 col-form-label">Role</label>
						<div class="col-sm-7">
							<div class="form-group">
								<input class="form-control"
									type="text"
									name="role"
									id="role"
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



 
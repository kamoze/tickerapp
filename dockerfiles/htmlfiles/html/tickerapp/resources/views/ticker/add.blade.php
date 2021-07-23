
@include('register.header')

<script type="text/javascript">
        function validateform(){
            
                if(document.getElementById("name").value == '') {
                    //swal("Please Enter First Name")
                     swal(" Name", "Please enter  name", "error")
                    // alert("name required");
                    return false;
                }
                if(document.getElementById("direction").value == '') {
                    //swal("Please Enter lastname")
                   swal(" direction", "Please enter  direction", "error")
                    //alert();
                    return false;
                }
                if(document.getElementById("fontsize").value == '') {
                    //swal("Please Enter lastname")
                    swal(" fontsize", "Please enter fontsize", "error")
                    //alert();
                    return false;
                }
                if(document.getElementById("backgroundcolor").value == '') {
                    //swal("Please Enter lastname")
                    swal("backgroundcolor", "Please enter backgroundcolor", "error")
                    //alert();
                    return false;
                }
                 if(document.getElementById("textcolor").value == '') {
                    //swal("Please Enter lastname")
                    swal("textcolor", "Please enter textcolor", "error")
                    //alert();
                    return false;
                }
                if(document.getElementById("stock").value == '') {
                    //swal("Please Enter lastname")
                    swal("stock", "Please enter stock", "error")
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
                    <h4 class="card-title">Add Data Type</h4>
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
						<label class="col-sm-2 col-form-label">Direction</label>

						<div class="col-sm-7">
							<div class="form-group">
								<input class="form-control"
								   type="text"
								   name="direction"
								   id="direction"
								   required="true"
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
									required="true"
									value="#ff0000"
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
                 
                  required="true"
                 >
              </div>
            </div>
          </div>
         <div class="row">
						<label class="col-sm-2 col-form-label">Graph</label>

						<div class="col-sm-7">
							<div class="form-group">
								<select  id="graph" class="form-control" name="graph">
                                    <option value="pie">PIE</option>
                                    <option value="line">LINE</option>
                                     <option value="stock">STOCK</option>
                                    <option value="bar">BAR</option>
                                 </select>
								
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



 
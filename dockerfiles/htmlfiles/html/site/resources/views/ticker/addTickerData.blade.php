@include('register.header')
<?php
   // print_r($ticker_info);
   $data = $ticker_info->all();
   // print_r($data[0]);
   $fileds =  explode(',',$data[0]->ticker_fileds);
   // print_r($fileds);
   // exit;
   // echo $ticker_info = 
   
   ?>            
<body class=" sidebar-mini ">
   <div class="main-panel ps-container ps-theme-default">
   @include('register.nav')
   <div class="panel-header">
   </div>
   <div class="content">
      <div class="row">
         <div class="col-md-12">
            <div class="card">
               <div class="card-header">
                  <h4 class="card-title">Add Ticker Data</h4>
               </div>
               <div class="card-body">
                  <div class="toolbar">
                     <!--        Here you can write extra buttons/actions for the toolbar              -->
					 <form method="post"  enctype="multipart/form-data">
					 {{csrf_field()}}
					<div class="row" style="display:none;">
						<label class="col-sm-2 col-form-label">Font size</label>

						<div class="col-sm-7">
							<div class="form-group">
								<input class="form-control"
								   type="text"
								   name="tickerid"
								   id="tickerid" 
								  required="true"
								  value="<?php echo $_REQUEST['tickerid']?>"
								 />
							</div>
						</div>
					</div>
					<div class="row" >
						<div class="col-sm-4">
                        <div class="form-group form-file-upload form-file-simple">
                            <input type="file" class="" name="csvdata" >
                        </div>
						</div>
					</div>
						<div class="row">
						<div class="col-sm-4">
							<div class="form-group">
								<input class="form-control"
									type="submit"
									name="submit"
									required="true"
									
								 />
							</div>
						</div>
					</div>
					 </form>
                  </div>
                  <table id="datatable" class="table table-striped table-bordered" cellspacing="0" width="100%">
                     <thead>
                        <tr>
						@foreach($fileds as $field)
                           <th>{{$field}}</th>
						 @endforeach
                        </tr>
                     </thead>
					  <tbody>
                        
						@foreach($ticker_data as $data)
						<tr>
							<?php
								$datarray = explode(",",$data->data);
								foreach($datarray as $data) { 
								echo " <td>$data</td>";
								}
							?>
						</tr>
						 @endforeach
                        </tr>
                     </tbody>
                     <tfoot>
                        <tr>
                           @foreach($fileds as $field)
                           <th>{{$field}}</th>
						 @endforeach
                        </tr>
                     </tfoot>
                     <tbody>
                        
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
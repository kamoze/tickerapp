@include('register.header')

<?php
   $ticker_delete_data=json_decode($ticker_types);
   // echo "<br/>";
   // print_r($ticker_delete_data[0]);
   // print_r($ticker_delete_data['id']);
   
   
   // exit;
   
   ?>  
   <!-- {{$ticker_types}}                  -->
<body class=" sidebar-mni ">
   <div class="main-panel ps-container ps-theme-default">
   @include('register.nav')
   <div class="panel-header">
   </div>
   <div class="content">
      <div class="row">
         <div class="col-md-12">
            <div class="card">
               <div class="card-header">
                  <h4 class="card-title">Edit Ticker</h4>
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
                  <input class="form-control" type="hidden" name="Id" id="id" required="true" value="{{$ticker_delete_data[0]->id}}">
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
                  value="{{$ticker_delete_data[0]->ticker_name}}"
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
                   value="{{$ticker_delete_data[0]->ticker_direction}}"
                 />
              </div>
            </div>
          <div class="row">
          </div>
          
            <label class="col-sm-2 col-form-label">Font size</label>

            <div class="col-sm-7">
              <div class="form-group">
                <input class="form-control"
                   type="text"
                   
                   name="fontsize"
                   id="fontsize" 
                  required="true"
                  value="{{$ticker_delete_data[0]->ticker_fontsize}}"
                 />
              </div>
            </div>
          </div>

          
          <div class="row">
            <label class="col-sm-2 col-form-label">Background Color</label>
            <div class="col-sm-7">
              <div class="form-group">
                <input class="form-control"
                  type="text"
                  name="backgroundcolor"
                  id="backgroundcolor"
                  value="{{$ticker_delete_data[0]->ticker_background_color}}"

                  required="true"
                 >
              </div>
            </div>
          </div>
          <div class="row">
            <label class="col-sm-2 col-form-label">Text Color</label>
            <div class="col-sm-7">
              <div class="form-group">
                <input class="form-control"
                  type="text"
                  name="textcolor"
                  id="textcolor"
                  value="{$ticker_delete_data[0]->ticker_text_color}}"
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
@include('register.header')
<!-- <?php
   // print_r($info);
   // $role = $info->all();
   
    // print_r($role = $info->all());
    // print_r($role[0]->role);
    // print_r($role[1]->role);
    // print_r($role[2]->role);
    // $userdata=json_encode($role);
    // print_r($userdata);
   
    // $part=explode(" ",$role[0]->id,3);
   // $part=implode(",",$userdata);
   // $part=explode(',',$userdata,3);
   
   
   // 
    // $array[]=$role[1]->id;/
    // print_r($array);
    // print_r($part);
    // $idlength=count($role);
   
    // for ($i=0; $i <$idlength ; $i++) { 
    //    $array[$i]=$role[$i]->id;
    //  print_r($array);
   
    // }
   
     //  $array = explode(", ", $array);
     // print_r($array);
   
    // exit;
     ?>   -->
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
               <div class="card ">
                  <div class="card-header ">
                     <h4 class="card-title">ADD Ticker</h4>
                  </div>
                  <div class="card-body ">
                     <form method="post"  class="form-horizontal">
                        {{csrf_field()}}
                        <div class="row">
                           <label class="col-sm-2 col-form-label"  value=""> Name</label>
                           <div class="col-sm-10">
                              <div class="form-group">          
                                 <input type="text" class="form-control" id="name" name="name">
                              </div>
                           </div>
                        </div>
                        <div class="row">
                           <label class="col-sm-2 col-form-label">Ticker type:</label>
                           <div class="col-lg-5 col-md-8 col-sm-5 mb-3">
                              <div class="form-group">
                                 <select  id="type" class="form-control" name="type">
                                    @foreach($data as $d)
                                    <option value="{{$d->id}}">
                                       {{$d->ticker_name}}
                                    </option>
                                    @endforeach
                                 </select>
                              </div>
                           </div>
                        </div>
                        <div class="row">
                           <label class="col-sm-2 col-form-label">Direction</label>
                           <div class="col-sm-7">
                              <div class="form-group">
                                 <select  id="direction" class="form-control" name="direction">
                                    <option value="L">Left</option>
                                    <option value="R">Right</option>
                                 </select>
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
                           <label class="col-sm-2 col-form-label">Visisble Fileds Comma separated</label>
                           <div class="col-sm-7">
                              <div class="form-group">
                                 <input class="form-control"
                                    type="text"
                                    name="visiblefileds"
                                    id="visiblefileds"
                                    required="true"
                                    >
                              </div>
                           </div>
                        </div>
                        <div class="row">
                           <label class="col-sm-2 col-form-label">Ticker role</label>
                           <div class="col-lg-5 col-md-8 col-sm-5 mb-3">
                              <div class="form-group">
                                 <select  id="role" class="form-control" name="role[]" multiple required="multiple">
                                    @foreach($info as $e)
                                    <option value="{{$e->id}}">
                                       {{$e->user_role}}
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
                                 <input type="text" name="message" id="message" class="form-control">
                              </div>
                           </div>
                        </div>
                        <!--   <div class="row">
                           <label class="col-sm-2 col-form-label">Ticker role</label>
                           <div class="col-lg-5 col-md-8 col-sm-5 mb-3">
                              <div class="form-group">
                               
                             
                                 @foreach($info as $e)
                                 <input type="checkbox" name="user_role" id="user_role" value="{{$e->id}}">
                                    {{$e->user_role}} 
                               @endforeach
                              
                              </div>
                              
                           </div>
                           </div> -->
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
                  </div>
               </div>
            </div>
         </div>
      </div>
   </div>
   @include('register.footer')
   <script>
      /*
          $("#ticker").change(function() {
            var value = $(this).val();
           $.ajax({
            url: "/ticker/public/ticker?id="+value, 
            success: function(result){
            console.log(result)
            // var result = $(this).val();
            // alert(result);
            
            var person=JSON.parse(result);
            console.log(person)
            for(var i =0; i< person.length ; i++){
              console.log(person[i]['ticker_type_name'])
              
              // document.getElementById("div1").innerHTML=person[i]['ticker_type_name']
              var mydiv = document.getElementById("div3");
              
        mydiv.appendChild(document.createTextNode(person[i]['ticker_type_name']));
        
        
              // console.log(person[i]['ticker_field_id'])
               // document.getElementById("div2").innerHTML=person[i]['ticker_field_id']
               var mydive = document.getElementById("div4");
        mydive.appendChild(document.createTextNode(person[i]['ticker_field_id']));
            }
      
      
      
          
          }});
          });
      
      
          $(document).ready(function() {
            $('#ticker').ticker_type_field( {
                
            } );
          } );
      
          $(document).ready(function() {
            $('#datatable').DataTable({
              "pagingType": "full_numbers",
              "lengthMenu": [[10, 25, 50, -1], [10, 25, 50, "All"]],
              responsive: true,
              language: {
              search: "_INPUT_",
              searchPlaceholder: "Search records",
              }
          
            });
          
            var table = $('#datatable').DataTable();
          
            // Edit record
            table.on( 'click', '.edit', function () {
              $tr = $(this).closest('tr');
              if($($tr).hasClass('child')){
                $tr = $tr.prev('.parent');
              }
          
              var data = table.row($tr).data();
              alert( 'You press on Row: ' + data[0] + ' ' + data[1] + ' ' + data[2] + '\'s row.' );
            } );
          
            // Delete a record
            table.on( 'click', '.remove', function (e) {
              $tr = $(this).closest('tr');
              if($($tr).hasClass('child')){
                $tr = $tr.prev('.parent');
              }
              table.row($tr).remove().draw();
              e.preventDefault();
            } );
          
            //Like record
            table.on( 'click', '.like', function () {
              alert('You clicked on Like button');
            });
          });
        */
       
   </script>
@include('register.header')

<body class="sidebar-mini ">
 

   <!-- <body> -->
  <div class="wrapper ">
   @include('register.nav')
   
   <div class="main-panel">
      <!-- Navbar -->
      <nav class="navbar navbar-expand-lg navbar-transparent  navbar-absolute bg-primary ">
         <div class="container-fluid">
            <div class="navbar-wrapper">
               <div class="navbar-toggle">
                  <button type="button" class="navbar-toggler">
                  <span class="navbar-toggler-bar bar1"></span>
                  <span class="navbar-toggler-bar bar2"></span>
                  <span class="navbar-toggler-bar bar3"></span>
                  </button>
               </div>
             </div>
               <div class="chip">
                  <p style="color:white"><b>Hello {{$data['companyemail']}} </b></p>
               </div>

            
            
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navigation" aria-controls="navigation-index" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-bar navbar-kebab"></span>
            <span class="navbar-toggler-bar navbar-kebab"></span>
            <span class="navbar-toggler-bar navbar-kebab"></span>
            </button>
            <div class="collapse navbar-collapse justify-content-end collapse show" id="navigation">
              
               <ul class="navbar-nav">
                  <li class="nav-item">
                     <a  class="nav-link" href="{{ url('/logout') }} " >
                        <i class="now-ui-icons users_single-02"></i>
                        <p>
                           <span class="d-lg-none d-md-block">Log out</span>
                        </p>
                     </a>
                  </li>
               </ul>
            </div>
         </div>
      </nav>
      <div class="panel-header panel-header-lg">
         <h1 style="color:white">
            <center>{{$data['companyname']}}</center>
         </h1>
         <!--  <h2 style="color:white"><center> {{$data['companyemail']}}</center></h2> -->
         <canvas id="bigDashboardChart"> </canvas>
      </div>
      <div class="content">
         <div class="row">
            <div class="col-md-12">
               <div class="card card-stats">
                  <div class="card-body">
                     <div class="row">
                        <div class="col-md-3">
                           <div class="statistics">
                              <div class="info">
                                 <div class="icon icon-primary">
                                    <i class="now-ui-icons users_circle-08"></i>
                                 </div>
                                 <a href="{{ URL('http://159.89.167.238/ticker/public/users')}}">
                                    <h3  class="info-title"> {{$userscount}}</h3>
                                    <h3>USERS</h3>
                                 </a>
                              </div>
                           </div>
                        </div>
                        <div class="col-md-3">
                           <div class="statistics">
                              <div class="info">
                                 <div class="icon icon-success">
                                    <i class="now-ui-icons files_box"></i>
                                 </div>
                                 <a href="{{ URL('http://159.89.167.238/ticker/public/tickers')}}">
                                    <h3  class="info-title">{{$tickers_count}}</h3>
                                    <h3 >TICKERS</h3>
                                 </a>
                              </div>
                           </div>
                        </div>
                        <div class="col-md-3">
                           <div class="statistics">
                              <div class="info">
                                 <div class="icon icon-info">
                                    <i class="now-ui-icons files_paper"></i>
                                 </div>
                                 <a href="{{ URL('http://159.89.167.238/ticker/public/ticker_types')}}">
                                    <h3  class="info-title">{{$tickersscount}}</h3>
                                    <h3>TICKER TYPES</h3>
                                 </a>
                              </div>
                           </div>
                        </div>
                        <div class="col-md-3">
                           <div class="statistics">
                              <div class="info">
                                 <div class="icon icon-success">
                                    <i class="now-ui-icons users_single-02"></i>
                                 </div>
                                 <a href="{{ URL('http://159.89.167.238/ticker/public/roles')}}">
                                    <h3 class="info-title">{{$rolesscount}}</h3>
                                    <h3 >USER ROLES</h3>
                                 </a>
                              </div>
                           </div>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </div>
    </div>
   </div>
   @include('register.footer')
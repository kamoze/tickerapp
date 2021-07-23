<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<!-- Google Tag Manager (noscript) -->
<!-- End Google Tag Manager (noscript) -->
<style>
  .sidebar:after{
    background: #adf802;
    background: linear-gradient(#adf802,#adf802 80%);
 
 }

 

</style>
<div class="wrapper ">
<div class="sidebar" data-color="#e3ff00 !important" id="mySidebar">
   <!-- <button class="w3-bar-item w3-button w3-large"
      onclick="w3_close()">Close &times;</button>
       -->
   <!--
      Tip 1: You can change the color of the sidebar using: data-color="blue | green | orange | red | yellow"
      -->
	  <style>
	  ul.nav li > a{
		  color: #343a40 !important;    font-size: 14px !important;
	  }
	   ul.nav li > a > i{
		    color: #343a40 !important;
	   }
	  </style>
   <div class="logo">
      <a href="http://www.creative-tim.com/" class="simple-text logo-mini">
      T
      </a>
      <a href="#" class="simple-text logo-normal">
      Ticker App
      </a>
      <div class="navbar-minimize">
         <button id="minimizeSidebar" class="btn btn-simple btn-icon btn-neutral btn-round">
         <i class="now-ui-icons text_align-center visible-on-sidebar-regular"></i>
         <i class="now-ui-icons design_bullet-list-67 visible-on-sidebar-mini"></i>
         </button>
      </div>
   </div>
   <div class="sidebar-wrapper">
      <div class="user">
         <div class="photo">
            <img src="companyRegister/img/james.jpg" />
         </div>
         <div class="info">
            <a data-toggle="collapse" href="#collapseExample" class="collapsed">
            <span>
            Test User
            <b class="caret"></b>
            </span>
            </a>
            <div class="clearfix"></div>
            <div class="collapse" id="collapseExample">
               <ul class="nav">
               </ul>
            </div>
         </div>
      </div>
      <ul class="nav">
         <li>
            <a href="{{url('/dashboard')}}">
               <i class="now-ui-icons design_app"></i>
               <p>Dashboard</p>
            </a>
         </li>
         <li >
            <a href="{{ url('/users') }} ">
               <i class="now-ui-icons design_bullet-list-67"></i>
               <p onclick=""> Users</p>
            </a>
         </li>
         <li >
            <a href="{{ url('/tickers') }} ">
               <i class="now-ui-icons design_bullet-list-67"></i>
               <p onclick="">Tickers</p>
            </a>
         </li>
         <li >
            <a href="{{ url('/ticker_types') }} ">
               <i class="now-ui-icons design_bullet-list-67"></i> 
               <p onclick="">Data Types</p>
            </a>
         </li>
         <li >
            <a href="{{ url('/roles') }} ">
               <i class="now-ui-icons design_bullet-list-67"></i>
               <p onclick="">User Roles</p>
            </a>
         </li>
        
      </ul>
   </div>
</div>

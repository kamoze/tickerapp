
<!DOCTYPE html>
<html lang="en" class="perfect-scrollbar-on">

<head>







<!--     Fonts and icons     -->

  <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700,200" rel="stylesheet" />

<link href="companyRegister/use.fontawesome.com/releases/v5.0.6/css/all.css" rel="stylesheet">

<!-- CSS Files -->

<link href="companyRegister/css/bootstrap.min.css" rel="stylesheet" />




<link href="companyRegister/css/now-ui-dashboard.min69ea.css?v=1.1.2" rel="stylesheet" />





<!-- CSS Just for demo purpose, don't include it in your project -->
<link href="companyRegister/demo/demo.css" rel="stylesheet" />



    
    <!-- Google Tag Manager -->
</head>

    <body class=" sidebar-mini ">
      
      <!-- Google Tag Manager (noscript) -->
<noscript><iframe src="https://www.googletagmanager.com/ns.html?id=GTM-NKDMSK6"
height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript>
<!-- End Google Tag Manager (noscript) -->

      

        
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

		<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navigation" aria-controls="navigation-index" aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-bar navbar-kebab"></span>
			<span class="navbar-toggler-bar navbar-kebab"></span>
			<span class="navbar-toggler-bar navbar-kebab"></span>
		</button>

	    <div class="collapse navbar-collapse justify-content-end" id="navigation">
      
        
          <ul class="navbar-nav">
   <!--  <li class="nav-item">
        <a href="dashboard.html" class="nav-link">
            <i class="now-ui-icons design_app"></i>
            Dashboard
        </a>
    </li> -->
    <li class= "nav-item ">
        <a href="{{'company-register'}}" class="nav-link">
            <i class="now-ui-icons tech_mobile"></i>
           Company  Registration
        </a>
    </li>
   <!--  <li class= "nav-item  active ">
        <a href="login.html" class="nav-link">
            <i class="now-ui-icons users_circle-08"></i>
            Login
        </a>
    </li> -->

    <!-- <li class= "nav-item ">
        <a href="pricing.html" class="nav-link">
            <i class="now-ui-icons now-ui-icons business_money-coins"></i>
            Pricing
        </a>
    </li>

    <li class= "nav-item ">
        <a href="lock.html" class="nav-link">
            <i class="now-ui-icons ui-1_lock-circle-open"></i>
            Lock
        </a>
    </li> -->
</ul>

        
      

      
	    </div>
	</div>
</nav>
<!-- End Navbar -->

        

        <div class="wrapper wrapper-full-page ">
          
            















    <div class="full-page login-page section-image" filter-color="black" data-image="companyRegister/img/bg14.jpg">
        <!--   you can change the color of the filter page using: data-color="blue | purple | green | orange | red | rose " -->
        <div class="content">
            <div class="container">
                <div class="col-md-4 ml-auto mr-auto">
                   <!--  @if ( \ Session :: has ( ' alert ' ) )
                < div  class = " alert alert-danger " >
                    < div > 
                     Session :: get ( ' alert ' ) ;  </ div >
                </ div >
            @endif
            @if ( \ Session :: has ( ' alert-success ' ) )
                < div  class = " alert alert-success " >
                    < div > Session :: get ( ' alert-success ' ); </ div >
                </ div >
            @endif -->
                    <form class="form" method="post" >
                         {{csrf_field()}}

                         @if(session('response'))
            <div class="col-sm-8 alert alert-success  ">
                {{
                    session('response')
                }}
            </div>
            @endif
            @if(session('responses'))
            <div class="col-sm-8 alert alert-danger  ">
                {{
                    session('responses')
                }}
            </div>
            @endif

            @if (session('status'))
    <div class="alert alert-danger">
        {{ session('status') }}
    </div>
@endif
<div class="card card-login card-plain">
    
    <div class="card-header ">
    <div class="logo-container">
                            <img src="companyRegister/img/now-logo.png" alt="">
                        </div>
    </div>
    
    <div class="card-body ">
        

        

        

        
            <div class="input-group no-border form-control-lg">
                                <span class="input-group-prepend">
                                  <div class="input-group-text">
                                    <i class="now-ui-icons users_circle-08"></i>
                                  </div>
                                </span>
                                <input type="text" class="form-control" placeholder="enter companyemail" name="companyemail" id="companyemail">
                              </div>

                              <div class="input-group no-border form-control-lg">
                                <div class="input-group-prepend">
                                  <div class="input-group-text">
                                    <i class="now-ui-icons text_caps-small"></i>
                                  </div>
                                </div>
                                <input type="password" placeholder="enter password" class="form-control" name="password" id="password">
                              </div>
        

        
    </div>
    
    
    
    <div class="card-footer ">
        <input type="submit" value ="submit"  class="btn btn-primary btn-round btn-lg" > 
        
                        <div class="pull-left">
                            <h6><a href="{{'company-register'}}" class="link footer-link">Create Account</a></h6>
                        </div>

                        <div class="pull-right">
                           <h6><a href="#pablo" class="link footer-link">Need Help?</a></h6>
                        </div>
    </div>
    
</div>

 </form>

                </div>
            </div>
        </div>
        <footer class="footer" >
    
   


</footer>

    </div>

          
        </div>
        
            <div class="fixed-plugin">
    <div class="dropdown show-dropdown">
        <a href="#" data-toggle="dropdown">
        <i class="fa fa-cog fa-2x"> </i>
        </a>
        <ul class="dropdown-menu">
			<li class="header-title"> Sidebar Background</li>
            <li class="adjustments-line">
                <a href="javascript:void(0)" class="switch-trigger background-color">
                    <div class="badge-colors text-center">
						<span class="badge filter badge-yellow" data-color="yellow"></span>
                        <span class="badge filter badge-blue" data-color="blue"></span>
                        <span class="badge filter badge-green" data-color="green"></span>
                        <span class="badge filter badge-orange active" data-color="orange"></span>
                        <span class="badge filter badge-red" data-color="red"></span>
                    </div>
                    <div class="clearfix"></div>
                </a>
            </li>

            
            <li class="header-title">
                Sidebar Mini
            </li>
            <li class="adjustments-line">

              <div class="togglebutton switch-sidebar-mini">
                <span class="label-switch">OFF</span>
                <input type="checkbox" name="checkbox" checked class="bootstrap-switch"
                  data-on-label=""
                  data-off-label=""
                  />
                <span class="label-switch label-right">ON</span>
              </div>
            </li>

            <li class="button-container">
                <a href="https://www.creative-tim.com/product/now-ui-dashboard-pro" target="_blank" class="btn btn-primary btn-block btn-round">Buy Now</a>
                <a href="https://demos.creative-tim.com/now-ui-dashboard-pro/docs/1.0/getting-started/introduction.html" target="_blank" class="btn btn-default btn-block btn-round">
                    <i class="now-ui-icons files_single-copy-04"></i>
                    Documentation
                </a>
                <a href="https://www.creative-tim.com/product/now-ui-dashboard" target="_blank" class="btn btn-info btn-block btn-round">
                    <i class="now-ui-icons files_single-copy-04"></i>
                    Get Free Demo!
                </a>
            </li>
            

            

            <li class="header-title">Thank you for 95 shares!</li>

            <li class="button-container text-center">
                <button id="twitter" class="btn btn-round btn-info"><i class="fab fa-twitter"></i> &middot; 45</button>
                <button id="facebook" class="btn btn-round btn-info"><i class="fab fa-facebook-f"></i> &middot; 50</button>
                <br>
                <br>
                <a class="github-button" href="https://github.com/creativetimofficial/ct-now-ui-dashboard-pro" data-icon="octicon-star" data-size="large" data-show-count="true" aria-label="Star ntkme/github-buttons on GitHub">Star</a>
            </li>
        </ul>
    </div>
</div>

        
        
















<?php  
session_start(); 
if(isset($_SESSION['admin_sid']) || isset($_SESSION['customer_sid']))
{
	header("location:index.php");
}
else{
?>
<!DOCTYPE html>
<html lang="en">
<style>
body{
      background-image: url(./images/dairy.jfif);
      
    }
</style>
<head>
  
  <title>Login</title>

  <!-- Favicons-->
  <link rel="icon" href="images/favicon/favicon-32x32.png" sizes="32x32">
  <!-- Favicons-->
  <link rel="apple-touch-icon-precomposed" href="images/favicon/apple-touch-icon-152x152.png">
  


  <!-- Bootstrap CSS -->
  
  <link href="css/custom/custom.min.css" type="text/css" rel="stylesheet" media="screen,projection">
  <link href="css/materialize.min.css" type="text/css" rel="stylesheet" media="screen,projection">
  <!-- Custome styles -->
  <link rel="stylesheet" href="css2/style.css">
  <link href="css/layouts/page-center.css" type="text/css" rel="stylesheet" media="screen,projection">

  <!-- INCLUDED PLUGIN CSS ON THIS PAGE -->
  <link href="js/plugins/perfect-scrollbar/perfect-scrollbar.css" type="text/css" rel="stylesheet" media="screen,projection">
  
</head>

<body class="cyan">
  <!-- Start Page Loading -->
  <div id="loader-wrapper">
      <div id="loader"></div>        
      <div class="loader-section section-left"></div>
      <div class="loader-section section-right"></div>
  </div>
  <!-- End Page Loading -->


<table>
  <div id="login-page" class="row">
    <div class="col s12 z-depth-4 card-panel">
        <div class="container">
            <div class="row">
              <div class="col-md-4 col-md-offset-4">
                <form method="post" action="routers/router.php" class="login-form" id="form">
                    <div class="row">
                      <div class="input-field col s12 center">
                        <p class="center login-form-text">Login to be able to make orders</p>
                      </div>
                    </div>
                    <div class="form-group">
                      <label class="control-label"  style="font-family: 'Times New Roman', Times, serif; font-size: larger;  color: black;">Username</label>
                      <input type="text" name="username" id="password" placeholder="username" class="form-control">
                    </div>
                    <div class="form-group">
                      <label class="control-label" style="font-family: 'Times New Roman', Times, serif; font-size: larger; color: black;">Password</label>
                      <input type="password" name="password" id="password" placeholder="Password" class="form-control">
                    </div>
                    <div class="form-group">
                    <button type="submit"> <a href="javascript:void(0);" onclick="document.getElementById('form').submit();" class="btn waves-effect waves-light col s12">Login</a></button>
                      </div>
                      <div class="row">
                      <div class="input-field col s6 m6 l6">
                        <p class="margin medium-small">Don't have an account!!<a href="register.php">Register Now!</a></p>
                      </div>         
                    </div>
                    </div>


                </form>
              </div>
            </div>
        </div>
    </div>
  </div>
  </table>


  <!-- ================================================
    Scripts
    ================================================ -->

  <!-- jQuery Library -->
  <script type="text/javascript" src="js/plugins/jquery-1.11.2.min.js"></script>
  <!--materialize js-->
  <script type="text/javascript" src="js/materialize.min.js"></script>
  <!--scrollbar-->
  <script type="text/javascript" src="js/plugins/perfect-scrollbar/perfect-scrollbar.min.js"></script>

      <!--plugins.js - Some Specific JS codes for Plugin Settings-->
    <script type="text/javascript" src="js/plugins.min.js"></script>
    <!--custom-script.js - Add your own theme custom JS-->
    <script type="text/javascript" src="js/custom-script.js"></script>

</body>
</html>
<?php
}
?>
<?php  
session_start(); 
if(isset($_SESSION['admin_sid']) || isset($_SESSION['customer_sid']))
{
	header("location:index.php");
}
else{
?>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <title>AFODS - Login</title>
  <!-- Bootstrap CSS -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.7/css/bootstrap.min.css" />
  <!-- Custome styles -->
  <link rel="stylesheet" href="css2/style.css">
</head>
<body>

<!-- Start Page Loading -->
<div id="loader-wrapper">
      <div id="loader"></div>        
      <div class="loader-section section-left"></div>
      <div class="loader-section section-right"></div>
  </div>
  <!-- End Page Loading -->

  <div class="container">
    <div class="row">
      <div class="col-md-4 col-md-offset-4">
        <form class="form" action="routers/router.php" method="post">
          <h2 class="text-center">Login to be able to make orders</h2>
          <hr>
          <!-- display form error messages  -->
          
          <div class="form-group <?php echo isset($errors['username']) ? 'has-error' : '' ?>">
          <i class="mdi-social-person-outline prefix"></i>
            <label class="control-label">Username or Email</label>
            <input type="text" name="username" id="password" value="<?php echo $username; ?>" class="form-control">
            <?php if (isset($errors['username'])): ?>
              <span class="help-block"><?php echo $errors['username'] ?></span>
            <?php endif; ?>
          </div>
          <div class="form-group <?php echo isset($errors['password']) ? 'has-error' : '' ?>">
            <label class="control-label">Password</label>
            <input type="password" name="password" id="password" class="form-control">
            <?php if (isset($errors['password'])): ?>
              <span class="help-block"><?php echo $errors['password'] ?></span>
            <?php endif; ?>
          </div>
          <div class="form-group">
            <button type="submit" name="login_btn" class="btn btn-success">Login</button>
          </div>
          <p>Don't have an account? <a href="signup.php">Sign up</a></p>
          <p>Forgot your password? <a href="reset-password.php">click here</a> to reset your password</p>
        </form>
        <!--display message -->
        <?php
            if(isset($_GET["newpwd"])) {
              if($_GET["newpwd"]== "passwordupdate"){
                echo '<p class="signupsuccess">Your password has been reset</p>';
              }
            }
          ?>
      </div>
    </div>
  </div>
</body>
</html>
<?php
}
?>
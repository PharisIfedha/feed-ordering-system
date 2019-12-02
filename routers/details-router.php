<?php
include '../includes/connect.php';
$user_id = $_SESSION['user_id'];


$username = htmlspecialchars($_POST['username']);
$name = htmlspecialchars($_POST['name']);
$email = htmlspecialchars($_POST['email']);
$password = password_hash($_POST['password'], PASSWORD_DEFAULT);  //encrypt the password before saving in the database
$phone = $_POST['phone'];
$address = htmlspecialchars($_POST['address']);
$sql = "UPDATE users SET  username = '$username', name = '$name', email='$email', password='$password', contact=$phone,address='$address' WHERE id = $user_id;";
if($con->query($sql)==true){
	$_SESSION['name'] = $name;
}
echo"You have successfully updated";
header("location: ../details.php");
?>
<?php
include '../includes/connect.php';

$name = $_POST['name'];
$price = $_POST['price'];
$description=$_POST['description'];
$sql = "INSERT INTO mixedfeed (name, price) VALUES ('$name', $price, $description)";
$con->query($sql);
header("location: ../animals.php");
?>
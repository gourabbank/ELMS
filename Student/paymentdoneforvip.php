<?php 
include('../dbConnection.php');
session_start();
if(!isset($_SESSION['stuLogEmail'])) {
 echo "<script> location.href='../loginorsignup.php'; </script>";
} else { 
 date_default_timezone_set('Asia/Kolkata');
 $date = date('y-m-d');
 if(isset($_POST['ORDER_ID']) && isset($_POST['TXN_AMOUNT'])){
  $order_id = $_POST['ORDER_ID'];
  $stu_email = $_SESSION['stuLogEmail'];
  $status = "Success";
  $respmsg = "Done";
  $amount = $_POST['TXN_AMOUNT'];
  $date = $date;
 $sql = "UPDATE student SET user_type=4 WHERE stu_email='$stu_email'";
   if($conn->query($sql) == TRUE){
    echo "Redirecting to My Profile....";
    echo "<script> setTimeout(() => {
     window.location.href = './studentProfile.php';
   }, 1500); </script>";
   };
 } else {
 echo "<b>Transaction status is failure</b>" . "<br/>";
 }
}
?>
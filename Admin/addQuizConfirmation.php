<?php 
  if(!isset($_SESSION))
  { 
    session_start(); 
  }
  
  //include('./adminInclude/header.php'); 
  include('../dbConnection.php');

  if(isset($_SESSION['is_admin_login']))
  {
    $adminEmail = $_SESSION['adminLogEmail'];
  } 
  else 
  {
    echo "<script> location.href='../index.php'; </script>";
  }

  // Checking for Empty Fields
  if(($_POST['lesson_id'] == "") || ($_POST['quiz_link'] == "") || ($_POST['lesson_name'] == ""))
  {
    // msg displayed if required field missing
    //$msg = '<div class="alert alert-warning col-sm-6 ml-5 mt-2" role="alert"> Fill All Fields </div>';
  }
  else
  {
    // Assigning User Values to Variable
    //  $quiz_id = $_REQUEST['quiz_id'];
    $lesson_id = $_POST['lesson_id'];
    $lesson_name = $_POST['lesson_name'];
    $quiz_link = $_POST['quiz_link'];
    $courseid=$_POST['course_id'];

    //  $course_id = $_REQUEST['course_id'];

    $sql = "INSERT INTO quiz (quiz_link,lesson_id, lesson_name, course_id) VALUES ('$quiz_link','$lesson_id','$lesson_name','$courseid')";
    if($conn->query($sql) == TRUE)
    {
      // below msg display on form submit success
      //$msg = '<div class="alert alert-success col-sm-6 ml-5 mt-2" role="alert"> Quiz Added Successfully </div>';
      echo "Redirecting to My Profile....";
      echo "<script> setTimeout(() => { window.location.href = './addQuiz.php'; }, 1500); </script>";
    } 
    else 
    {
      // below msg display on form submit failed
      //$msg = '<div class="alert alert-danger col-sm-6 ml-5 mt-2" role="alert"> Unable to Add Quiz </div>';
    }
  }
?>

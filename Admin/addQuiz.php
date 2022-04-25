<?php 
if(!isset($_SESSION)){ 
  session_start(); 
}
define('TITLE', 'Add Quiz');
define('PAGE', 'quiz');
include('./adminInclude/header.php'); 
include('../dbConnection.php');

 if(isset($_SESSION['is_admin_login']))
 {
  $adminEmail = $_SESSION['adminLogEmail'];
 } else 
 {
  echo "<script> location.href='../index.php'; </script>";
 }
 if(isset($_REQUEST['quizSubmitBtn'])){
	// Checking for Empty Fields
	if(($_REQUEST['lesson_id'] == "") || ($_REQUEST['quiz_link'] == "") || ($_REQUEST['lesson_name'] == "")){
	 // msg displayed if required field missing
	 $msg = '<div class="alert alert-warning col-sm-6 ml-5 mt-2" role="alert"> Fill All Fields </div>';
	} else {
	 // Assigning User Values to Variable
	//  $quiz_id = $_REQUEST['quiz_id'];
	 $lesson_id = $_REQUEST['lesson_id'];
	 $lesson_name = $_REQUEST['lesson_name'];
	 $quiz_link = $_REQUEST['quiz_link'];
	//  $course_id = $_REQUEST['course_id'];
	
	  $sql = "INSERT INTO quiz (quiz_link,lesson_id, lesson_name) VALUES ('$quiz_link','$lesson_id','$lesson_name')";
	  if($conn->query($sql) == TRUE)
    {
	   // below msg display on form submit success
	   $msg = '<div class="alert alert-success col-sm-6 ml-5 mt-2" role="alert"> Quiz Added Successfully </div>';
	  } else {
	   // below msg display on form submit failed
	   $msg = '<div class="alert alert-danger col-sm-6 ml-5 mt-2" role="alert"> Unable to Add Quiz </div>';
	  }
	}
	}
 ?>
  <div class="col-sm-6 mt-5  mx-3 jumbotron">
    <h3 class="text-center">Add New Quiz</h3>
    <form  method="POST" action="addQuizConfirmation.php" >
    <div class="form-group">
      <label for="quiz_id">Course ID</label>
      <input type="text" class="form-control" id="course_id_id" name="course_id" value ="<?php if(isset($_SESSION['course_id'])){echo $_SESSION['course_id'];} ?>" readonly>
    </div>
      <div class="form-group">
        <label for="lesson_id">Lesson ID</label>
        <input type="text" class="form-control" id="lesson_id" name="lesson_id" value ="<?php if(isset($_SESSION['lesson_id'])){echo $_SESSION['lesson_id'];} ?>" readonly>
      </div>
      
      <div class="form-group">
        <label for="lesson_name">Lesson Name</label>
        <input type="text" class="form-control" id="lesson_name" name="lesson_name" value ="<?php if(isset($_SESSION['lesson_name'])){echo $_SESSION['lesson_name'];} ?>" readonly>
      </div>
      <div class="form-group">
          <label for="quiz_link">Quiz Link</label>
          <textarea class="form-control" id="quiz_link" name="quiz_link" row=2></textarea>
      </div>
      <div class="text-center">
        <button type="submit" class="btn btn-primary">Submit</button>
        <a href="quiz.php" class="btn btn-secondary">Close</a>
      </div>
    </form>
  </div>
<head>

	</head>
	<title>Add Quiz</title>
	
</head>

<?php
include('./adminInclude/footer.php'); 
?>
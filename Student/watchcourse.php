<?php
if(!isset($_SESSION)){ 
   session_start(); 
 }
include('../dbConnection.php');

 if(isset($_SESSION['is_login'])){
  $stuEmail = $_SESSION['stuLogEmail'];
 } else {
  echo "<script> location.href='../index.php'; </script>";
 }
?>
<!DOCTYPE html>
<html lang="en">
<head>
 <meta charset="UTF-8">
 <meta name="viewport" content="width=device-width, initial-scale=1.0">
 <meta http-equiv="X-UA-Compatible" content="ie=edge">
 <title>Watch Course</title>
 <!-- Bootstrap CSS -->
 <link rel="stylesheet" href="../css/bootstrap.min.css">

 <!-- Font Awesome CSS -->
 <link rel="stylesheet" href="../css/all.min.css">

  <!-- Google Font -->
  <link href="https://fonts.googleapis.com/css?family=Ubuntu" rel="stylesheet">

 <!-- Custom CSS -->
 <link rel="stylesheet" href="../css/stustyle.css">
 <link rel="stylesheet" href="../css/video.css">
</head>
<body>

   <div class="container-fluid bg-success p-2" >
   <br>
    <a class="btn btn-danger" href="./myCourse.php">My Courses</a>
    <br>
    <h1> </h1>
   </div>
   
   <div class="container-fluid">
    <div class="row">
     <div class="col-sm-3 border-right">
       <h4 class="text-center">Lessons</h4>
       <ul id="playlist" class="nav flex-column">
          <?php
             if(isset($_GET['course_id'])){
              $course_id = $_GET['course_id'];
              $sql = "SELECT * FROM lesson WHERE course_id = '$course_id'";
              $result = $conn->query($sql);
              if($result->num_rows > 0){
               while($row = $result->fetch_assoc()){
                echo '<li class="nav-item border-bottom py-2" movieurl='.$row['lesson_link'].' style="cursor: pointer;">'. $row['lesson_name'] .'</li>';
               }
              }
             }
          ?>
       </ul>
       <h5 class="text-center">Quiz</h5>
       <ul id="quizlist" class="nav flex-column">
          <?php
             
             if(isset($_GET['course_id'])){
              $course_id = $_GET['course_id'];
            //   echo $lesson_id;
              $sql = "SELECT * FROM quiz WHERE course_id = '$course_id'";
              $result = $conn->query($sql);
              if($result->num_rows > 0){
               while($row = $result->fetch_assoc()){
                echo '<li class="nav-item border-bottom py-2" ='.$row['quiz_link'].' style="cursor: pointer;"><a href='.$row['quiz_link'].'>'. $row['lesson_name'] .'</a></li>';
               }
              }
             }
          ?>
       </ul>
       <!-- <button id="certi" style="display:none;" class="position-relative top-0 start-0 text-center">Generate Certificate</button> -->
       <!-- <?php
             if(isset($_GET['quiz_id'])){
              $quiz_id = $_GET['quiz_id'];
              $sql = "SELECT * FROM quiz WHERE quiz_id = '$quiz_id'";
              $result = $conn->query($sql);
              if($result->num_rows > 0){
               // <a href="https://google.com" class="btn btn-primary">Quiz 1</a>
               while($row = $result->fetch_assoc()){
                echo '<a class="btn btn-secondary" href='.$row['quiz_link'].' style="cursor: pointer;">'. $row['lesson_name'] .'</a>';
               }
              }
             }
          ?> -->
         <!-- <?php
            if(isset($_GET['course_id']))
            {
               $course_id = $_GET['course_id'];
               $sql = "SELECT lessoncount FROM course WHERE course_id = '$course_id'";
               $result = $conn->query($sql);
               $row = $result->fetch_assoc();
               $totvideo = $row['lessoncount'];
            }
         ?> -->
         <script>
            var countvideo ="<?php echo $totvideo ?>";
            console.log(countvideo);
         </script>
       <button id="certi" style="display:none;" type="button" class="btn btn-secondary">Get Certificate</button>
     </div>
     <div class="col-sm-8">
        <video id="videoarea" src="" class="mt-5 w-75 ml-2" controls>
        </video>
        <div id="status" class="incomplete">
          <span>Play status: </span>
          <span class="status complete">COMPLETE</span>
          <span class="status incomplete">INCOMPLETE</span>
         <br />
        </div>
        <div>
          <span id="played">0</span> 
          <span id="duration"></span> 
        </div>
     </div>
    </div>
   </div>
     </div>
    </div>
   </div>



    <!-- Jquery and Boostrap JavaScript -->
    <script type="text/javascript" src="../js/jquery.min.js"></script>
    <script type="text/javascript" src="../js/popper.min.js"></script>
    <script type="text/javascript" src="../js/bootstrap.min.js"></script>

    <!-- Font Awesome JS -->
    <script type="text/javascript" src="../js/all.min.js"></script>

    <!-- Ajax Call JavaScript -->
    <!-- <script type="text/javascript" src="..js/ajaxrequest.js"></script> -->

    <!-- Custom JavaScript -->
    <script type="text/javascript" src="../js/custom.js"></script>
    <script type="text/javascript" src="../js/video.js"></script>
</body>
</html>
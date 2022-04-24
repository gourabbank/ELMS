<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="X-UA-Compatible" content="ie=edge" />
    
     <!-- Bootstrap CSS -->
    <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">

    <!-- Font Awesome CSS -->
    <link rel="stylesheet" type="text/css" href="css/all.min.css">

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css?family=Ubuntu" rel="stylesheet">

    <!-- Student Testimonial Owl Slider CSS -->
    <link rel="stylesheet" type="text/css" href="css/owl.min.css">
    <link rel="stylesheet" type="text/css" href="css/owl.theme.min.css">
    <link rel="stylesheet" type="text/css" href="css/testyslider.css">

    <!-- Custom Style CSS -->
    <link rel="stylesheet" type="text/css" href="./css/style.css" />
    <title>eLMS</title>
  </head>
  <body>
     <!-- Start Navigation -->
    <nav class="navbar navbar-expand-sm navbar-dark pl-5 fixed-top">
      <a href="index.php" class="navbar-brand">eLMS</a>
      <span class="navbar-text">Learn and Implement</span>
      <button type="button" class="navbar-toggler" data-toggle="collapse" data-target="#myMenu">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="myMenu">
        <ul class="navbar-nav pl-5 custom-nav">
          <li class="nav-item custom-nav-item"><a href="index.php" class="nav-link">Home</a></li>
          <li class="nav-item custom-nav-item"><a href="courses.php" class="nav-link">Courses</a></li>
          <li class="nav-item custom-nav-item"><a href="paymentstatus.php" class="nav-link">Payment Status</a></li>
          <?php 
              session_start();   
              if (isset($_SESSION['is_login']))
              {
                echo '<li class="nav-item custom-nav-item"><a href="student/studentProfile.php" class="nav-link">My Profile</a></li> <li class="nav-item custom-nav-item"><a href="logout.php" class="nav-link">Logout</a></li>';
              } else 
              {
                echo '<li class="nav-item custom-nav-item"><a href="#login" class="nav-link" data-toggle="modal" data-target="#stuLoginModalCenter">Login</a></li> <li class="nav-item custom-nav-item"><a href="#signup" class="nav-link" data-toggle="modal" data-target="#stuRegModalCenter">Signup</a></li>';
              }
          ?> 
          <li class="nav-item custom-nav-item"><a href="Student/stufeedback.php" class="nav-link">Feedback</a></li>
          <li class="nav-item custom-nav-item"><a href="contact.php" class="nav-link">Contact</a></li>
        </ul>
        
        
      </div>
      <div>
        <?php 
          //session_start();   
          if (isset($_SESSION['is_login']))
          {
            $stuEmail = $_SESSION['stuLogEmail'];
            $sql = "SELECT * FROM student WHERE stu_email='$stuEmail'";
            $result = $conn->query($sql);
            if($result->num_rows == 1)
            {
              $row = $result->fetch_assoc();
              $stuId = $row["stu_id"];
              $stuName = $row["stu_name"]; 
              $stuOcc = $row["stu_occ"];
              $stuImg = $row["stu_img"];
              $stuType = $row["user_type"];
              if($stuType==4)
              {
                echo '<h1 class= "fw-bold text-success">You are a VIP Member '.$stuName.'</h1>';
              }
              else
              {
                echo'<a class="btn btn-primary text-white font-weight-bolder float-right" href="./Student/studentProfile.php">Upgrade To VIP</a>';
              }
            }
          }
        ?>
      </div>
    </nav>  <!-- End Navigation -->
  </body>
</html>

    
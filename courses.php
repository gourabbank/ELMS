<?php
  include('dbConnection.php');
  // Header Include from mainInclude 
  include('./mainInclude/header.php'); 
?>  
<?php 
include('dbConnection.php');
 if(!isset($_SESSION)){ 
   session_start(); 
 } 
 if(isset($_SESSION['is_login'])){
  $stuLogEmail = $_SESSION['stuLogEmail'];
 } 
 // else {
 //  echo "<script> location.href='../index.php'; </script>";
 // }
 if(isset($stuLogEmail)){
  $sql = "SELECT user_type FROM student WHERE stu_email = '$stuLogEmail'";
  $result = $conn->query($sql);
  $row = $result->fetch_assoc();
  $stuType = $row['user_type'];
 }
 else
 {
   $stuType=3;
 }
?>
    <div class="container-fluid bg-dark"> <!-- Start Course Page Banner -->
      <div class="row">
        <img src="./image/coursebanner.jpg" alt="courses" style="height:500px; width:100%; object-fit:cover; box-shadow:10px;"/>
      </div> 
    </div> <!-- End Course Page Banner -->

    <div class="container mt-5"> <!-- Start All Course -->
      <h1 class="text-center">All Courses</h1>
      <div class="row mt-4"> <!-- Start All Course Row -->
       <?php
          $sql = "SELECT * FROM course ";
          $result = $conn->query($sql);
          if($result->num_rows > 0){ 
            while($row = $result->fetch_assoc()){
              $course_id = $row['course_id'];
              if($stuType!=4)
              {
                echo ' 
                  <div class="col-sm-4 mb-4">
                    <a href="coursedetails.php?course_id='.$course_id.'" class="btn" style="text-align: left; padding:0px;"><div class="card">
                      <img src="'.str_replace('..', '.', $row['course_img']).'" class="card-img-top" alt="Guitar" />
                      <div class="card-body">
                        <h5 class="card-title">'.$row['course_name'].'</h5>
                        <p class="card-text">'.$row['course_desc'].'</p>
                      </div>
                      <div class="card-footer">
                        <p class="card-text d-inline">Price: <small><del>&#8377 '.$row['course_original_price'].'</del></small> <span class="font-weight-bolder">&#8377 '.$row['course_price'].'<span></p> <a class="btn btn-primary text-white font-weight-bolder float-right" href="coursedetails.php?course_id='.$course_id.'">Enroll</a>
                      </div>
                    </div> </a>
                  </div>
                ';
              }
              else
              {
                echo ' 
                  <div class="col-sm-4 mb-4">
                    <a href="coursedetails.php?course_id='.$course_id.'" class="btn" style="text-align: left; padding:0px;"><div class="card">
                      <img src="'.str_replace('..', '.', $row['course_img']).'" class="card-img-top" alt="Guitar" />
                      <div class="card-body">
                        <h5 class="card-title">'.$row['course_name'].'</h5>
                        <p class="card-text">'.$row['course_desc'].'</p>
                      </div>
                      <div class="card-footer">
                        <p class="card-text d-inline">Price: <small><del>&#8377 '.$row['course_original_price'].'</del></small> <span class="font-weight-bolder">&#8377 '."FREE".'<span></p> <a class="btn btn-primary text-white font-weight-bolder float-right" href="coursedetails.php?course_id='.$course_id.'">Enroll</a>
                      </div>
                    </div> </a>
                  </div>
                ';
              }
            }
          }
        ?>   
        
         <!-- <?php
         if(isset($stuLogEmail))
         {
            $sql = "SELECT user_type FROM student WHERE stu_email='$stuLogEmail'";
            $sql = "SELECT * FROM course";
            $result = $conn->multi_query($sql);
            if(mysqli_multi_query($conn,$sql))
            {
              do
              {
            
                if($result = mysqli_store_result($conn))
                { 
                  while($row = mysqli_fetch_array($result))
                  {
                    $stuType = $row['user_type'];
                    if ($stuType==4)
                    {
                      echo '
                            <div class="col-sm-4 mb-4">
                              <a href="coursedetails.php?course_id='.$course_id.'" class="btn" style="text-align: left; padding:0px;"><div class="card">
                              <img src="'.str_replace('..', '.', $row['course_img']).'" class="card-img-top" alt="Guitar" />
                              <div class="card-body">
                                <h5 class="card-title">'.$row['course_name'].'</h5>
                                <p class="card-text">'.$row['course_desc'].'</p>
                              </div>
                              <div class="card-footer">
                                <p class="card-text d-inline">Price: <small><del>&#8377 '.$row['course_original_price'].'</del></small> <span class="font-weight-bolder">&#8377 '."Free".'<span></p> <a class="btn btn-primary text-white font-weight-bolder float-right" href="coursedetails.php?course_id='.$course_id.'">Enroll</a>
                              </div>
                              </div> </a>
                            </div>
                            ';
                    }
                  }
                }
              }while (mysqli_next_result($conn));
            }
          }
        ?> -->
        
        
      </div><!-- End All Course Row -->   
      </div><!-- End All Course -->   
     
<?php 
  // Contact Us
  include('./contact.php'); 
?> 

<?php 
  // Footer Include from mainInclude 
  include('./mainInclude/footer.php'); 
?>  

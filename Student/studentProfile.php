<?php
if(!isset($_SESSION)){ 
  session_start(); 
}
define('TITLE', 'Student Profile');
define('PAGE', 'profile');
include('./stuInclude/header.php'); 
include_once('../dbConnection.php');

 if(isset($_SESSION['is_login'])){
  $stuEmail = $_SESSION['stuLogEmail'];
 } else {
  echo "<script> location.href='../index.php'; </script>";
 }

 $sql = "SELECT * FROM student WHERE stu_email='$stuEmail'";
 $result = $conn->query($sql);
 if($result->num_rows == 1){
 $row = $result->fetch_assoc();
 $stuId = $row["stu_id"];
 $stuName = $row["stu_name"]; 
 $stuOcc = $row["stu_occ"];
 $stuImg = $row["stu_img"];
 $stuType = $row["user_type"];

}

 if(isset($_REQUEST['updateStuNameBtn'])){
  if(($_REQUEST['stuName'] == "")){
   // msg displayed if required field missing
   $passmsg = '<div class="alert alert-warning col-sm-6 ml-5 mt-2" role="alert"> Fill All Fileds </div>';
  } else {
   $stuName = $_REQUEST["stuName"];
   $stuOcc = $_REQUEST["stuOcc"];
   $stu_image = $_FILES['stuImg']['name']; 
   $stu_image_temp = $_FILES['stuImg']['tmp_name'];
   $img_folder = '../image/stu/'. $stu_image; 
   move_uploaded_file($stu_image_temp, $img_folder);
   $sql = "UPDATE student SET stu_name = '$stuName', stu_occ = '$stuOcc', stu_img = '$img_folder' WHERE stu_email = '$stuEmail'";
   if($conn->query($sql) == TRUE){
   // below msg display on form submit success
   $passmsg = '<div class="alert alert-success col-sm-6 ml-5 mt-2" role="alert"> Updated Successfully </div>';
   } else {
   // below msg display on form submit failed
   $passmsg = '<div class="alert alert-danger col-sm-6 ml-5 mt-2" role="alert"> Unable to Update </div>';
      }
    }
 }

?>
 <div class="col-sm-6 mt-5">
  <form class="mx-5" method="POST" enctype="multipart/form-data">
    <div class="form-group">
      <label for="stuId">Student ID</label>
      <input type="text" class="form-control" id="stuId" name="stuId" value=" <?php if(isset($stuId)) {echo $stuId;} ?>" readonly>
    </div>
    <div class="form-group">
      <label for="stuEmail">Email</label>
      <input type="email" class="form-control" id="stuEmail" value=" <?php echo $stuEmail ?>" readonly>
    </div>
    <div class="form-group">
      <label for="stuName">Name</label>
      <input type="text" class="form-control" id="stuName" name="stuName" value=" <?php if(isset($stuName)) {echo $stuName;} ?>">
    </div>
    <div class="form-group">
      <!-- Student doesnt mean school student it also means learner -->
      <label for="stuOcc">Occupation</label>
      <input type="text" class="form-control" id="stuOcc" name="stuOcc" value=" <?php if(isset($stuOcc)) {echo $stuOcc;} ?>">
    </div>
    <div class="form-group">
      <label for="stuImg">Upload Image</label>
      <input type="file" class="form-control-file" id="stuImg" name="stuImg">
    </div>
    <button type="submit" class="btn btn-primary" name="updateStuNameBtn">Update</button>
    <?php if(isset($passmsg)) {echo $passmsg; } ?>
  </form>
  <form action="checkoutvip.php" method="post" >
    <?php echo' <input type="hidden" name="id" value="500"> '?>
    <?php if($stuType!=4) 
          {
            echo '<button type="submit" class="btn btn-secondary btn-lg m-5">Upgrade To VIP</button>';
          }
          else
          {
            echo '<h2 class=" m-5">Congratulations You are a Premium Subscriber</h2>';
          }
    ?>
    
  </form>
 </div>

 </div> <!-- Close Row Div from header file -->
 <script>
      // Render the PayPal button into #paypal-button-container
      paypal.Buttons({

          // Set up the transaction
          createOrder: function(data, actions) {
              return actions.order.create({
                  purchase_units: [{
                      amount: {
                          value: '<?php if(isset($_POST['id'])){echo $_POST['id']; }?>'
                      }
                  }]
              });
          },

          // Finalize the transaction
          onApprove: function(data, actions) {
              return actions.order.capture().then(function(details) {
                  // Show a success message to the buyer
                  alert('Transaction completed by ' + details.payer.name.given_name + '!');
                  document.getElementById("myform").submit()
              });
          }


      }).render('#paypal-button-container');
  </script>

 <?php
include('./stuInclude/footer.php'); 
?>
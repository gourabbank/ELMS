<?php
if(!isset($_SESSION)){ 
  session_start(); 
}
define('TITLE', 'Quiz');
define('PAGE', 'quiz');
include('./adminInclude/header.php'); 
include('../dbConnection.php');

 if(isset($_SESSION['is_admin_login'])){
  $adminEmail = $_SESSION['adminLogEmail'];
 } else {
  echo "<script> location.href='../index.php'; </script>";
 }
 ?>

<div class="col-sm-9 mt-5  mx-3">
  <form action="" class="mt-3 form-inline d-print-none">
    <div class="form-group mr-3">
      <label for="checkid">Enter Lesson ID: </label>

      <select name = "checkid">
      <option>Select Lesson</option>
      <button type="submit" class="btn btn-danger">Search</button>
    </div>
   
  </form>

  <?php
  $con = mysqli_connect("localhost","root","","lms_db");
  $sq = "SELECT * FROM lesson";
  $all_categories = mysqli_query($con,$sq);
            
                // use a while loop to fetch data 
                // from the $all_categories variable 
                // and individually display as an option
                while ($category = mysqli_fetch_array(
                        $all_categories,MYSQLI_ASSOC)):; 
            ?>
                <option value="<?php echo $category["lesson_id"];
                    // The value we usually set is the primary key
                ?>">
                    <?php ;
                    printf("%s (%s)\n",$category["lesson_id"],$category["lesson_name"]) ;
                        // To show the category name to the user
                    ?>
                </option>
            <?php 
                endwhile; 
                // While loop must be terminated
            ?>

              </select>
              <button type="submit" class="btn btn-danger">Search</button>
              
              
  <?php
  $sql = "SELECT lesson_id FROM lesson";
  $result = $conn->query($sql);
  while($row = $result->fetch_assoc()){
    if(isset($_REQUEST['checkid']) && $_REQUEST['checkid'] == $row['lesson_id']){
      $sql = "SELECT * FROM lesson WHERE lesson_id = {$_REQUEST['checkid']}";
      $result = $conn->query($sql);
      $row = $result->fetch_assoc();
      if(($row['lesson_id']) == $_REQUEST['checkid']){ 
        $_SESSION['lesson_id'] = $row['lesson_id'];
        $_SESSION['lesson_name'] = $row['lesson_name'];
        $_SESSION['course_id'] = $row['course_id'];
        
        ?>
        <h3 class="mt-5 bg-dark text-white p-2">Lesson ID : <?php if(isset($row['lesson_id'])) {echo $row['lesson_id']; } ?> Lesson Name: <?php if(isset($row['lesson_name'])) {echo $row['lesson_name']; } ?></h3>
        <?php
          $sql = "SELECT * FROM quiz WHERE lesson_id = {$_REQUEST['checkid']}";
          $result = $conn->query($sql);
          echo '<table class="table">
            <thead>
              <tr>
              <th scope="col">Quiz ID</th>
              <th scope="col">Quiz Name</th>
              <th scope="col">Quiz Link</th>
              <th scope="col">Action</th>
              </tr>
            </thead>
            <tbody>';
            while($row = $result->fetch_assoc()){
                echo '<tr>';
                echo '<th scope="row">'.$row["quiz_id"].'</th>';
                echo '<td>'. $row["lesson_name"].'</td>';
                echo '<td>'.$row["quiz_link"].'</td>';
                echo '<td><form action="editQuiz.php" method="POST" class="d-inline"> <input type="hidden" name="id" value='. $row["lesson_id"] .'><button type="submit" class="btn btn-info mr-3" name="view" value="View"><i class="fas fa-pen"></i></button></form>  
                <form action="" method="POST" class="d-inline"><input type="hidden" name="id" value='. $row["lesson_id"] .'><button type="submit" class="btn btn-secondary" name="delete" value="Delete"><i class="far fa-trash-alt"></i></button></form></td>
              </tr>';
              }
              echo '</tbody>
             </table>';
        } else {
          echo '<div class="alert alert-dark mt-4" role="alert">
          Course Not Found ! </div>';
        }
        if(isset($_REQUEST['delete'])){
         $sql = "DELETE FROM lesson WHERE lesson_id = {$_REQUEST['id']}";
         if($conn->query($sql) === TRUE){
           // echo "Record Deleted Successfully";
           // below code will refresh the page after deleting the record
           echo '<meta http-equiv="refresh" content= "0;URL=?deleted" />';
           } else {
             echo "Unable to Delete Data";
           } 
     } 
   } 
  }?>
  
</div>
<!-- Only Number for input fields -->
<script>
  function isInputNumber(evt) {
    var ch = String.fromCharCode(evt.which);
    if (!(/[0-9]/.test(ch))) {
      evt.preventDefault();
    }
  }
</script>
</div>  <!-- div Row close from header -->
 <?php if(isset($_SESSION['lesson_id'])){
   echo '<div><a class="btn btn-danger box" href="./addQuiz.php"><i class="fas fa-plus fa-2x"></i></a></div>';
   } ?>
 
</div>
<?php
include('./adminInclude/footer.php'); 
?>
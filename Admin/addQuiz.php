<?php 
if(!isset($_SESSION)){ 
  session_start(); 
}
define('TITLE', 'Add Quiz');
define('PAGE', 'quiz');
include('./adminInclude/header.php'); 
include('../dbConnection.php');

 if(isset($_SESSION['is_admin_login'])){
  $adminEmail = $_SESSION['adminLogEmail'];
 } else {
  echo "<script> location.href='../index.php'; </script>";
 }
 if(isset($_REQUEST['quizSubmitBtn'])){
	// Checking for Empty Fields
	if(($_REQUEST['lesson_id'] == "") || ($_REQUEST['quiz_link'] == "") || ($_REQUEST['lesson_name'] == "")){
	 // msg displayed if required field missing
	 $msg = '<div class="alert alert-warning col-sm-6 ml-5 mt-2" role="alert"> Fill All Fields </div>';
	} else {
	 // Assigning User Values to Variable
	 $quiz_id = $_REQUEST['quiz_id'];
	 $lesson_id = $_REQUEST['lesson_id'];
	 $lesson_name = $_REQUEST['lesson_name'];
	 $quiz_link = $_REQUEST['quiz_link'];
	//  $course_id = $_REQUEST['course_id'];
	
	  $sql = "INSERT INTO quiz (quiz_id, quiz_link,lesson_id, lesson_name) VALUES ('$quiz_id','$quiz_link','$lesson_id','$lesson_name')";
	  if($conn->query($sql) == TRUE){
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
  <form action="" method="POST" enctype="multipart/form-data">
  <!-- <div class="form-group">
      <label for="quiz_id">Course ID</label>
      <input type="text" class="form-control" id="course_id_id" name="course_id" value ="<?php if(isset($_SESSION['course_id'])){echo $_SESSION['course_id'];} ?>" readonly>
    </div> -->
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
      <button type="submit" class="btn btn-danger" id="quizSubmitBtn" name="quizSubmitBtn">Submit</button>
      <a href="quiz.php" class="btn btn-secondary">Close</a>
    </div>
    <?php if(isset($msg)) {echo $msg; } ?>
  </form>
</div>
<head>

	</head>
	<title>Add Quiz</title>
	<?php 
	$qry = $conn->query("SELECT * FROM quiz where quiz_id = ".$_GET['quiz_id'])->fetch_array();

	?>
</head>
<!-- <body>
	<div class="container-fluid admin">
		<div class="col-md-12 alert alert-primary"><?php echo $qry['lesson_name'] ?></div>
		<button class="btn btn-primary bt-sm" id="new_question"><i class="fa fa-plus"></i>	Add Question</button>
		<button class="btn btn-primary bt-sm" id="new_student"><i class="fa fa-plus"></i>	Add Student</button>
		<br>
		<br>
		<div class="card col-md-6 mr-4" style="float:left">
			<div class="card-header">
				Questions
			</div>
			<div class="card-body">
				<ul class="list-group">
				<?php
					$qry = $conn->query("SELECT * FROM questions where qid = ".$_GET['id']." order by order_by asc");
					while($row=$qry->fetch_array()){
						?>
						<li class="list-group-item"><?php echo $row['question'] ?><br>
							<center>
								 <button class="btn btn-sm btn-outline-primary edit_question" data-id="<?php echo $row['id']?>" type="button"><i class="fa fa-edit"></i></button>
								<button class="btn btn-sm btn-outline-danger remove_question" data-id="<?php echo $row['id']?>" type="button"><i class="fa fa-trash"></i></button>
							</center>
						</li>
				<?php
					}
				?>
				</ul>
		</div>
	</div>
	<div class="modal fade" id="manage_question" tabindex="-1" role="dialog" >
				<div class="modal-dialog modal-centered" role="document">
					<div class="modal-content">
						<div class="modal-header">
							
							<h4 class="modal-title" id="myModallabel">Add New Question</h4>
							<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
						</div>
						<form id='question-frm'>
							<div class ="modal-body">
								<div id="msg"></div>
								<div class="form-group">
									<label>Question</label>
									<input type="hidden" name="qid" value="<?php echo $_GET['id'] ?>" />
									<input type="hidden" name="id" />
									<textarea rows='3' name="question" required="required" class="form-control" ></textarea>
								</div>
									<label>Options:</label>

								<div class="form-group">
									<textarea rows="2" name ="question_opt[0]" required="" class="form-control" ></textarea>
									<span>
									<label><input type="radio" name="is_right[0]" class="is_right" value="1"> <small>Question Answer</small></label>
									</span>
									<br>
									<textarea rows="2" name ="question_opt[1]" required="" class="form-control" ></textarea>
									<label><input type="radio" name="is_right[1]" class="is_right" value="1"> <small>Question Answer</small></label>
									<br>
									<textarea rows="2" name ="question_opt[2]" required="" class="form-control" ></textarea>
									<label><input type="radio" name="is_right[2]" class="is_right" value="1"> <small>Question Answer</small></label>
									<br>
									<textarea rows="2" name ="question_opt[3]" required="" class="form-control" ></textarea>
									<label><input type="radio" name="is_right[3]" class="is_right" value="1"> <small>Question Answer</small></label>
								</div>
								
							</div>
							<div class="modal-footer">
								<button  class="btn btn-primary" name="save"><span class="glyphicon glyphicon-save"></span> Save</button>
							</div>
						</form>
					</div>
				</div>
			</div>
			<div class="modal fade" id="manage_student" tabindex="-1" role="dialog" >
				<div class="modal-dialog modal-centered" role="document">
					<div class="modal-content">
						<div class="modal-header">
							
							<h4 class="modal-title" id="myModallabel">Add New Student/s</h4>
							<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
						</div>
						<form id='student-frm'>
							<div class ="modal-body">
								<div id="msg"></div>
								<div class="form-group">
									<label>Student/s</label>
									<br>
									<input type="hidden" name="qid" value="<?php echo $_GET['id'] ?>" />
									<select rows='3' name="user_id[]" required="required" multiple class="form-control select2" style="width: 100% !important">
									<?php 
									$student = $conn->query('SELECT u.*,s.level_section as ls FROM users u left join students s on u.id = s.user_id where u.user_type = 3 ');
									while($row=$student->fetch_assoc()){

									?>	
									<option value="<?php echo $row['id'] ?>"><?php echo ucwords($row['name']).' '.$row['ls'] ?></option>
								<?php } ?>
								</select>

									</select>
								</div>
								
								
							</div>
							<div class="modal-footer">
								<button  class="btn btn-primary" name="save"><span class="glyphicon glyphicon-save"></span> Save</button>
							</div>
						</form>
					</div>
				</div>
			</div>
</body>
<script>
	$(document).ready(function(){
		$(".select2").select2({
			placeholder:"Select here",
			width:'resolve'
		});
		$('#table').DataTable();
		$('#new_question').click(function(){
			$('#msg').html('')
			$('#manage_question .modal-title').html('Add New Question')
			$('#manage_question #question-frm').get(0).reset()
			$('#manage_question').modal('show')
		})
		$('#new_student').click(function(){
			$('#msg').html('')
			$('#manage_student').modal('show')
		})
		$('.edit_question').click(function(){
			var id = $(this).attr('data-id')
			$.ajax({
				url:'./get_question.php?id='+id,
				error:err=>console.log(err),
				success:function(resp){
					if(typeof resp != undefined){
						resp = JSON.parse(resp)
						$('[name="id"]').val(resp.qdata.id)
						$('[name="question"]').val(resp.qdata.question)
						Object.keys(resp.odata).map(k=>{
							var data = resp.odata[k]
							$('[name="question_opt['+k+']"]').val(data.option_txt);
							if(data.is_right == 1)
							$('[name="is_right['+k+']"]').prop('checked',true);
						})
						$('#manage_question .modal-title').html('Edit Question')
						$('#manage_question').modal('show')

					}
				}
			})

		})
		$('.is_right').each(function(){
			$(this).click(function(){
				$('.is_right').prop('checked',false);
				$(this).prop('checked',true);
			})
		})
		$('.remove_question').click(function(){
			var id = $(this).attr('data-id')
			var conf = confirm('Are you sure to delete this data.');
			if(conf == true){
				$.ajax({
				url:'./delete_question.php?id='+id,
				error:err=>console.log(err),
				success:function(resp){
					if(resp == true)
						location.reload()
				}
			})
			}
		})
		$('.remove_student').click(function(){
			var qid = $(this).attr('data-qid')
			var conf = confirm('Are you sure to delete this data.');
			if(conf == true){
				$.ajax({
				url:'./delete_quiz_student.php?qid='+qid,
				error:err=>console.log(err),
				success:function(resp){
					if(resp == true)
						location.reload()
				}
			})
			}
		})
		$('#question-frm').submit(function(e){
			e.preventDefault();
			$('#question-frm [name="submit"]').attr('disabled',true)
			$('#question-frm [name="submit"]').html('Saving...')
			$('#msg').html('')

			$.ajax({
				url:'./save_question.php',
				method:'POST',
				data:$(this).serialize(),
				error:err=>{
					console.log(err)
					alert('An error occured')
					$('#quiz-frm [name="submit"]').removeAttr('disabled')
					$('#quiz-frm [name="submit"]').html('Save')
				},
				success:function(resp){
						if(resp == 1){
							alert('Data successfully saved');
							location.reload()
						}
				}
			})
		})
		$('#student-frm').submit(function(e){
			e.preventDefault();
			$('#student-frm [name="submit"]').attr('disabled',true)
			$('#student-frm [name="submit"]').html('Saving...')
			$('#msg').html('')

			$.ajax({
				url:'./quiz_student.php',
				method:'POST',
				data:$(this).serialize(),
				error:err=>{
					console.log(err)
					alert('An error occured')
					$('#quiz-frm [name="submit"]').removeAttr('disabled')
					$('#quiz-frm [name="submit"]').html('Save')
				},
				success:function(resp){
						if(resp == 1){
							alert('Data successfully saved');
							location.reload()
						}
				}
			})
		})
	})
</script>
</html> -->

<?php
include('./adminInclude/footer.php'); 
?>
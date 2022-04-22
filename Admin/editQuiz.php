<?php 
if(!isset($_SESSION)){ 
  session_start(); 
}
define('TITLE', 'Edit Quiz');
define('PAGE', 'Quiz');
include('./adminInclude/header.php'); 
include('../dbConnection.php');

 if(isset($_SESSION['is_admin_login'])){
  $adminEmail = $_SESSION['adminLogEmail'];
 } else {
  echo "<script> location.href='../index.php'; </script>";
 }
?>
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

<?php
include('./adminInclude/footer.php'); 
?>

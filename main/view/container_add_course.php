<div class="main_head">
    <span>Add New Course</span>
</div>
<span class="under_line"></span>
<form class="add_new_course" action="../api.php" method="POST" enctype="multipart/form-data" >
    <input type="submit" value="Save">
    <input type="text" name="new_course_name" placeholder="New course name" required>
    <textarea name="new_course_des" placeholder="New course description" required=></textarea>
    <input class='pic' type="file" placeholder="upload image" name="pic" accept="image/*" required>
    <img id="output"/>
    <input type="hidden" name="action" value="add_new_course">
</form>
<?php

class Prints {
    
    public static function Courses ($table_name){
        $result = Fetcher::fetchCourses ($table_name);
         while ($row = $result->fetch_assoc()) {
            echo "<a href=" . "http://localhost/TheSchool/main/index.php?subject=school&course=" . $row['id'] . " " .
            "class=" . "course>" . "<img src=" . '../uploads/' . $row['image'] . ">" . 
	    "<span>" . $row['name'] . "</span><br>" . "</a>";
        }   
    }
    
    public static function Students ($table_name) {
        $result = Fetcher::fetchstudents ($table_name);
         while ($row = $result->fetch_assoc()) {
             echo "<a href=" . "http://localhost/TheSchool/main/index.php?subject=school&student=" . $row['id'] . " " .
             "class=" . "students>" . "<img src=" . '../uploads/' . $row['image'] . ">" . 
	     "<div>"  . "<span>" . $row['name'] . "</span><br>" .
             "<span>" . $row['email'] . "</span></div></a>";                          
        }
    }
    
    public static function Admins ($table_name, $table_joined) {
        $result = Fetcher::fetchAdmins ($table_name, $table_joined);
        while ($row = $result->fetch_assoc()) {
             echo "<a href=" . "http://localhost/TheSchool/main/index.php?subject=admin&admin=" . $row['id'] . " " .
             "class=" . "admins>" . "<img src=" . '../uploads/' . $row['image'] . ">" . 
	     "<div>" . "<span>" . $row['name'] . ", " . $row['role'] . "</span><br>" .
             "<span>" . $row['email'] . "</span><br>" .
             "<span>" . $row['phone'] . "</span></div></a>";                          
        } 
    }
    
        public static function AdminsByRole ($table_name, $table_joined) {
        $result = Fetcher::fetchAdminsByRoles ($table_name, $table_joined);
        while ($row = $result->fetch_assoc()) {
             echo "<a href=" . "http://localhost/TheSchool/main/index.php?subject=admin&admin=" . $row['id'] . " " .
             "class=" . "admins>" . "<img src=" . '../uploads/' . $row['image'] . ">" . 
	     "<div>" . "<span>" . $row['name'] . ", " . $row['role'] . "</span><br>" .
             "<span>" . $row['email'] . "</span><br>" .
             "<span>" . $row['phone'] . "</span></div></a>";                          
        } 
    }
    
    public static function SingleStudent ($studentId){
        $result = Fetcher::fetchSingleStudent ($studentId);
        while ($row = $result->fetch_assoc()) {
             echo "<div class=" . "single_student>" . "<img src=" . '../uploads/' . $row['image'] . ">" . 
	     "<div>" . "<span>" . $row['name'] . "</span><br>" .
             "<span>" . $row['email'] . "</span><br>" .
             "<span>" . $row['phone'] . "</span></div></div>";                          
        }
    }
    
    public static function StudentCourses ($studentId){
        $result = Fetcher::fetchStudentCourses ($studentId);
        while ($row = $result->fetch_assoc()) {
             echo "<div class=" . "single_student_courses>" . "<img src=" . '../uploads/' . $row['image'] . ">"
             . "<span>" . $row['name'] . "</span></div>";                          
        }
    }
    
    public static function SingleCourse ($courseId) {
        $result = Fetcher::fetchSinglecourse ($courseId);
        if ($result->num_rows == 0) {
            $result1 = getDBConn::getConn()->query("SELECT courses.name, courses.des, courses.image FROM courses 
            WHERE courses.id = $courseId;");
             $row = $result1->fetch_assoc();
             echo "<div class=" . "single_Course>" . "<img src=" . '../uploads/' . $row['image'] . ">" . 
	     "<div>" . "<span>" . $row['name'] . ",</span><span>" . " 0" . " Students</span><br>" .
             "<span>" . $row['des'] . "</span></div></div>"; 
        }else{ 
             $row = $result->fetch_assoc();
             echo "<div class=" . "single_Course>" . "<img src=" . '../uploads/' . $row['image'] . ">" . 
	     "<div>" . "<span>" . $row['name'] . ",</span><span>" . " $result->num_rows " . " Students</span><br>" .
             "<span>" . $row['des'] . "</span></div></div>";                          
        }  
    }
    
    public function CourseStudnets($courseId) {
        $result = Fetcher::fetchCourseStudents($courseId);
        if ($result->num_rows !== 0){
            while ($row = $result->fetch_assoc()) {
                echo "<div class=" . "single_course_students>" . "<img src=" . '../uploads/' . $row['image'] . ">"
                . "<span>" . $row['name'] . "</span></div>";                          
            }
        } 
    }
    
    public static function SingleAdmin ($adminId){
        $result = Fetcher::fetchSingleAdmin($adminId);
        $row = $result->fetch_assoc();
             echo "<div class=" . "single_admin>" . "<img src=" . '../uploads/' . $row['image'] . ">" . 
	     "<div>" . "<span>" . $row['name'] . ", " . $row['role'] . "</span><br>" .
             "<span>" . $row['email'] . "</span><br>" .
             "<span>" . $row['phone'] . "</span></div></a>";  
    }
    
    public static function CoursesCheckBoxes () {
        $result = Fetcher::fetchCourcesCheckBox();
        $result = Fetcher::fetchCourcesCheckBox();
        while ($row = $result->fetch_assoc()) {
             echo "<label><input type=" . "checkbox" . " " . "class=" . "checkbox" . " " . "name=" . "checkbox[]" .
             " " . "value=" . $row['id'] . ">" . $row['name'] . "</label>";               
        }
    }
    
    public static function AdminsRole () {
        $result = Fetcher::fetchAdminsRoles();
        while ($row = $result->fetch_assoc()) {        
            echo "<option value=" . $row['id'] . ">" . $row['role'] . "</option>";
        }
    }
    
    public static function Amount (){
        echo "<span>Number of Students:" . " " . Fetcher::fetchAmount('students') . "</span>
        <span> | Number of Courses:" . " " . Fetcher::fetchAmount('courses') . "</span> 
        <img class=" . "main_container_logo" . " " . "src=" . "../img/logo.png" . ">";
    }
    
    public static function AmountOfAdmins (){
        echo "<span>Number of Administrators:" . " " . Fetcher::fetchAmount('admins') . "</span>
        <img class=" . "main_container_logo" . " " . "src=" . "../img/logo.png" . ">";
    } 

    public static function SudentCoursesCheckBoxes ($row, $checked){
        echo "<label><input type=" . "checkbox" . " " . "class=" . "checkbox" . " " . "name=" . "checkbox[]" .
        " " . "value=" . $row['id'] . " " . $checked . ">" . $row['name'] . "</label>"; 
    }
}

<?php
//start session
//session_start();
//define server details
define('DB_SERVER','localhost');
define('DB_USER','udara');
define('DB_PASS' ,'udara_2020');
define('DB_NAME', 'uwap');

//dabatse class
class DB_con{
  
  //contruct 
  function __construct(){
	
	$con = mysqli_connect(DB_SERVER,DB_USER,DB_PASS,DB_NAME);
	$this->dbh=$con;
	// Check connection
	if (mysqli_connect_errno()){
		echo "Failed to connect to MySQL: " . mysqli_connect_error();
 	}
  }

//fetch form date 	
public function fetchdata($studentId){
    $result=mysqli_query($this->dbh,"SELECT * FROM student WHERE student_id ='$studentId' ");
 	return $result;
 }
 //calculate course fee
 public function calfee($studentId){
 	$result=mysqli_query($this->dbh,"SELECT SUM(sub_val) as fee FROM subject WHERE sub_title IN ( SELECT subjectName FROM subjects WHERE studentId ='$studentId')");
 	return $result;
 }
 //fetch sub name & value
 public function fetchsub($studentId){
 	$result=mysqli_query($this->dbh,"SELECT sub_title as name ,sub_val as value FROM subject WHERE sub_title IN ( SELECT subjectName FROM subjects WHERE studentId ='$studentId')");
 	return $result;
 }
}
?>
<?php

    session_start();
   
    require 'config.php';

    $dorr=$_POST['user_phone'];
  
    if(isset($_POST['user_phone']))
{
 $phoneid=$_POST['user_phone'];

 $statement=" SELECT g_phone FROM student_info WHERE g_phone='$phoneid' ";
 $statement2=" SELECT phone FROM guardian_info WHERE phone='$phoneid' ";
 $statement3=" SELECT phone FROM tutor_info WHERE phone='$phoneid' ";

 $query1=mysqli_query($conn,$statement);
 $query2=mysqli_query($conn,$statement2);
 $query3=mysqli_query($conn,$statement3);
 if(mysqli_num_rows($query1)>0 || mysqli_num_rows($query2)>0 || mysqli_num_rows($query3)>0)
 {
  echo "Phone no Already Exist";
 }
 else
 {
  echo "OK";
 }
 exit();
}


?>
<?php 

$con=new mysqli("localhost","root","","sbank");
if($con->connect_error)
{
	echo "Database Connection Failed";
}
?>
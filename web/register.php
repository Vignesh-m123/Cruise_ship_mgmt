<?php
/*********************
**** Nandhini S *****
**** Oct 28, 2015 ****
**********************/

/* Following code will insert a customer */

//user temp array
$response = array();

// include db connect class
require_once __DIR__ . '/db_connect.php';
	
// connecting to db
$db = new DB_CONNECT();

// check for post fields
$data = json_decode(file_get_contents("php://input"));
$get_ticket = mysql_real_escape_string($data->ticket);
$get_name = mysql_real_escape_string($data->name);
$get_email = mysql_real_escape_string($data->email);
$get_pass = mysql_real_escape_string($data->pass);
$get_phone = mysql_real_escape_string($data->phone);

// check for existing customer		
$result = mysql_query("SELECT * FROM registration WHERE email = '$get_email'");
if(mysql_num_rows($result))
{
	$response["success"] = 0;
	
	echo json_encode($response);
}
else
{
	// inserting a new customer 
	$result1 = mysql_query("INSERT INTO registration(ticket_no, name, email, password, phone) 
							VALUES('$get_ticket', '$get_name', '$get_email', '$get_pass', '$get_phone')");
		
	// check for empty result
	if($result1)
	{	
		$response["success"] = 1;
		echo json_encode($response);
	}
	else
	{	
		$response["success"] = 2;
		echo json_encode($response);
	}
}
?>
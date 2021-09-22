<?php
/*********************
**** Nandhini S *****
****Oct 28, 2015 ****
**********************/

/* Following code will match user login credentials */

//user temp array
$response = array();

// include db connect class
require_once __DIR__ . '/db_connect.php';

// connecting to db
$db = new DB_CONNECT();

// check for post data
$data = json_decode(file_get_contents("php://input"));
$get_email = mysql_real_escape_string($data->email);
$get_pass = mysql_real_escape_string($data->pass);

// get customer details from customer_entity
$result = mysql_query("SELECT * FROM registration WHERE email = '$get_email' AND password = '$get_pass'");

// check for empty result	
if(mysql_num_rows($result))
{	
	$response["success"] = 1;	
	echo json_encode($response);
}
else
{
	$response["success"] = 0;	
	echo json_encode($response);
}
?>
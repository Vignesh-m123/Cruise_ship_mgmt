<?php
/*********************
**** Nandhini S *****
**** Sep 23, 2015 ****
**********************/

/* Following code will edit table by referring id */

// array for JSON response
$response = array();

// include db connect class
require_once __DIR__ . '/db_connect.php';
	
// connecting to db
$db = new DB_CONNECT();

$data = json_decode(file_get_contents("php://input"));
$get_id = mysql_real_escape_string($data->id);
$get_type = mysql_real_escape_string($data->type);
$get_name = mysql_real_escape_string($data->name);
$get_category = mysql_real_escape_string($data->category);
$get_amount = mysql_real_escape_string($data->amount);
		
// get all news
$result = mysql_query("UPDATE allproducts SET name='$get_name', amount='$get_amount' WHERE id = '$get_id' AND type = '$get_type' AND category = '$get_category'");
	
// check for empty result
if($result)
{
	// success
	$response["success"] = 1;
	
// echoing JSON response
	echo json_encode($response);
}
else 
{
	// unsuccess
	$response["success"] = 0;
	
	// echoing JSON response
	echo json_encode($response);
}
?>
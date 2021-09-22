<?php
/*********************
**** Nandhini S *****
**** Nov 02, 2015 ****
**********************/

/* Following code will retrieve table values */

// array for JSON response
$response = array();

// include db connect class
require_once __DIR__ . '/db_connect.php';
	
// connecting to db
$db = new DB_CONNECT();

// check for post data
$data = json_decode(file_get_contents("php://input"));
$get_id = mysql_real_escape_string($data->id);
$get_type = mysql_real_escape_string($data->type);
	
// get all jobs
$result = mysql_query("SELECT * FROM allproducts WHERE type='$get_type' AND id='$get_id'");
	
// check for empty result
if (mysql_num_rows($result))
{
	$response["product"] = array();
	while($AllProduct = mysql_fetch_array($result))
	{
		// temp user array
		$product = array();
		$product = $AllProduct;
		array_push($response["product"],$product);
	}	
	
	// success	
	$response["success"] = 1;
	
	// echoing JSON response
	echo json_encode($response);
} 
?>
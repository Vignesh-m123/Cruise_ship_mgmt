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
	
// get all jobs
$result = mysql_query("SELECT * FROM allorders WHERE type='Hall'");
	
// check for empty result
if (mysql_num_rows($result))
{
	$response["items"] = array();
	while($AllItems = mysql_fetch_array($result))
	{
		// temp user array
		$items = array();
		$items["booking_id"] = $AllItems["booking_id"];
		$items["type"] = $AllItems["type"];
		$items["name"] = $AllItems["name"];
		$items["category"] = $AllItems["category"];
		$items["quantity"] = $AllItems["quantity"];
		$items["amount"] = $AllItems["amount"];
		$items["date"] = $AllItems["date"];
				$items["user_email"] = $AllItems["user_email"];

		array_push($response["items"],$items);
	}	
	
	// success	
	$response["success"] = 1;
	
	// echoing JSON response
	echo json_encode($response);
} 
?>
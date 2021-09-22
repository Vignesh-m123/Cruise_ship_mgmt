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
$result = mysql_query("SELECT * FROM allproducts WHERE type='Catering'");
	
// check for empty result
if (mysql_num_rows($result))
{
	$response["items"] = array();
	$response["category"] = array();
	$response1 = array();
	while($AllItems = mysql_fetch_array($result))
	{
		// temp user array
		$items = array();
		$items["id"] = $AllItems["id"];
		$items["type"] = $AllItems["type"];
		$items["name"] = $AllItems["name"];
		$items["category"] = $AllItems["category"];
		$items["amount"] = $AllItems["amount"];
		array_push($response["items"],$items);
		
		$category = array();
		$category = $AllItems["category"];
		array_push($response1,$category);
	}	

	$result1 = array_count_values($response1);

	$cat = array_keys($result1);

	$len = count($cat);

	$i=0;
	$response['category']= array();
	while($i<$len)
	{		
		$category=array();
		$category["category"] = $cat[$i];
		$i++;
		
		array_push($response["category"],$category);
	}
	
	// success	
	$response["success"] = 1;
	
	// echoing JSON response
	echo json_encode($response);
} 
?>
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
$result = mysql_query("SELECT * FROM allproducts");
	
// check for empty result
if (mysql_num_rows($result))
{
	$response["products"] = array();
	while($AllProducts = mysql_fetch_array($result))
	{
		// temp user array
		$products = array();
		$products = $AllProducts;
		array_push($response["products"],$products);
	}	
	
	// success	
	$response["success"] = 1;
	
	// echoing JSON response
	echo json_encode($response);
} 
?>
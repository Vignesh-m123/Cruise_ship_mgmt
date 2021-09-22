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
$get_id = mysql_real_escape_string($data->id);
$get_type = mysql_real_escape_string($data->type);
$get_quantity = mysql_real_escape_string($data->quantity);
$get_email = mysql_real_escape_string($data->email);
$get_date = date("d-m-Y");

// check for existing customer		
$result = mysql_query("SELECT * FROM allproducts WHERE id = '$get_id' AND type='$get_type'");
if(mysql_num_rows($result))
{
	$ProductInfo = mysql_fetch_array($result);
	$get_name = $ProductInfo["name"];
	$get_category = $ProductInfo["category"];
	$get_amount = $ProductInfo["amount"];
	
	$amount = explode(".",$get_amount);
	$total_amount = $get_quantity * $amount[1];
	
	// inserting a new customer 
	$result1 = mysql_query("INSERT INTO allorders(name, type, category, quantity, amount, user_email, date) 
							VALUES('$get_name', '$get_type', '$get_category', '$get_quantity', '$total_amount', '$get_email', '$get_date')");
		
	// check for empty result
	if($result1)
	{	
		
		
		$response["success"] = 1;
		echo json_encode($response);
	}
	else
	{	
		$response["success"] = 0;
		echo json_encode($response);
	}
}
else
{
	$response["success"] = 0;
	echo json_encode($response);
}
?>
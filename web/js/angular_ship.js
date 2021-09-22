var app = angular.module("myShip", ['ngCookies']);
app.controller("myShipCtrl", function($scope, $cookies, $cookieStore, $http) 
{
/********************************* login *************************************/	
	$scope.login = function() 
	{	
        $http.post('login.php', {'email': $scope.log_email, 'pass': $scope.log_pass} )
		.success(function(data, status, headers, config) 
		{
			if(data.success == 1)
			{	
				$cookieStore.put("user_email",$scope.log_email); 
				window.location = "catering.html";
				return;
			}
			else
			{
				alert("error");
			}
        });
    }

/********************************* cookies *************************************/	
	$scope.user_email = $cookieStore.get("user_email");
	if(document.cookie == "")
	{
		$scope.myLoginVar = false;
		$scope.myLogoutVar = true;
	}
	else if(!$scope.user_email)
	{
		$scope.myLoginVar = false;
		$scope.myLogoutVar = true;
	}
	else
	{
		$scope.myLoginVar = true;
		$scope.myLogoutVar = false;
	}

/********************************* logout *************************************/
	$scope.logout = function()
	{
		$cookies.user_email = "";
		window.location = "index.html";
		return;
	}	
/********************************* register *************************************/		
	$scope.register = function() 
	{
        $http.post('register.php', {'ticket':$scope.reg_ticket, 'name':$scope.reg_name, 'email':$scope.reg_email, 'pass': $scope.reg_pass, 'phone': $scope.reg_phone})
		.success(function(data, status, headers, config) 
		{
			if(data.success == 1)
			{
				window.location = "register.html";
				return;
			}
			if(data.success == 2)
			{
				alert("Registration Unsuccessful");
			}
			if(data.success == 0)
			{
				alert("Email Already Exists");
			}
        });
    }
	
/********************************* checkbox *************************************/	
	$scope.selection=[];
	// toggle selection for a given employee by name
	$scope.toggleSelection = function toggleSelection(category)
	{
		var idx = $scope.selection.indexOf(category);
		// is currently selected
		if (idx > -1) 
		{
			$scope.selection.splice(idx, 1);
		}
		// is newly selected
		else 
		{
			$scope.selection = category;
		}
	};
	$scope.toggle = function toggle(category)
	{
		var idx = $scope.selection.indexOf(category);
		// is currently selected
		if (idx > -1) 
		{
			$scope.selection.splice(idx, 1);
		}
		else
		{
			$scope.selection = "";
		}
	}
	
/********************************* menu list *************************************/	
	// all items
	$http.get('get_products.php')
	.success(function(response) 
	{
		$scope.products = response.products;
	});

	// edit menu
	$scope.myMenu = true;
	$scope.edit_menu = function(id, type, name, category, amount)
	{
		$scope.myMenu = false;
		$scope.id = id;
		$scope.type = type;
		$scope.name = name;
		$scope.category = category;
		$scope.amount = amount;
	}
	
	// save menu
	$scope.save_menu = function()
	{
		$http.post('edit_menu.php', {'id':$scope.id, 'type': $scope.type, 'name': $scope.name, 'category': $scope.category, 'amount': $scope.amount})
		.success(function(data, status, headers, config) 
		{
			if(data.success == 1)
			{
				alert("Menu updated successfully");
				window.location = "menuList.html";
				return;
			}
			if(data.success == 0)
			{
				alert("No Menu updated");
			}
		});
	}
	
	// delete menu
	$scope.delete_menu = function(id)
	{
		$http.post('delete_menu.php', {'id': $scope.id})
		.success(function(data, status, headers, config) 
		{
			if(data.success == 1)
			{
				alert("Menu deleted successfully");
				window.location = "admin_home.html";
				return;
			}
			if(data.success == 0)
			{
				alert("No Menu deleted");
			}
		});
	}
/********************************* product list *************************************/	
	// all items
	$http.get('get_catering.php')
	.success(function(response) 
	{
		$scope.cat_items = response.items;
		$scope.cat_category = response.category;
	});
	
	// all products
	$http.get('get_stationary.php')
	.success(function(response) 
	{
		$scope.sta_products = response.products;
		$scope.sta_category = response.category;
	});
	
	// all movies
	$http.get('get_movies.php')
	.success(function(response) 
	{
		$scope.mov_movies = response.movies;
		$scope.mov_category = response.category;
	});
	
	// all resorts
	$http.get('get_resorts.php')
	.success(function(response) 
	{
		$scope.res_resorts = response.resorts;
		$scope.res_category = response.category;
	});
	
	// all salons
	$http.get('get_salon.php')
	.success(function(response) 
	{
		$scope.sal_services = response.services;
		$scope.sal_category = response.category;
	});
	
	// all fitness center
	$http.get('get_fitness.php')
	.success(function(response) 
	{
		$scope.fit_equips = response.equips;
		$scope.fit_category = response.category;
	});
	
	// all halls
	$http.get('get_halls.php')
	.success(function(response) 
	{
		$scope.hal_halls = response.halls;
		$scope.hal_category = response.category;
	});
	
/********************************* product info *************************************/	
	$scope.product_details = function(id, type)
	{
		$cookieStore.put("id", id); 
		$cookieStore.put("type", type); 
		window.location = "details.html";
		return;
	}
	$scope.product_details1 = function(id, type)
	{
		$cookieStore.put("id", id); 
		$cookieStore.put("type", type); 
		window.location = "details1.html";
		return;
	}
	$scope.id = $cookieStore.get("id"); 
	$scope.type = $cookieStore.get("type"); 
	$http.post('get_details.php', {'id': $scope.id, 'type': $scope.type})
	.success(function(data, status, headers, config) 
	{
		if(data.product != "")
		{
			$scope.details = data.product;
		}
	});
	
	$scope.buy = function(id, type)
	{
		if($scope.user_email == "")
		{
			alert("Please Login to Continue");
			window.location = "login.html";
			return;
		}
		else if(!$scope.user_email)
		{
			alert("Please Login to Continue");
			window.location = "login.html";
			return;
		}
		else
		{
			$scope.id = id; 
			$scope.type = type; 
			$scope.quantity = document.getElementById("quantity").value;
			if($scope.quantity == "")
			{
				alert("Please fill quantity");
			}
			else
			{
				$http.post('post_orders.php', {'id': $scope.id, 'type': $scope.type, 'quantity': $scope.quantity, 'email':$scope.user_email})
				.success(function(data, status, headers, config) 
				{
					if(data.success == 1)
					{
						alert("Booking Successful");
						window.location = "index.html";
						return;
					}
					if(data.success == 0)
					{
						alert("Booking Unsuccessful");
						window.location = "details.html";
						return;
					}
				});
			}
		}
	}
	
	$scope.book = function(id, type)
	{
		if($scope.user_email == "")
		{
			alert("Please Login to Continue");
			window.location = "login.html";
			return;
		}
		else if(!$scope.user_email)
		{
			alert("Please Login to Continue");
			window.location = "login.html";
			return;
		}
		else
		{
			$scope.id = id; 
			$scope.type = type; 
			$scope.quantity1 = document.getElementById("quantity1").value;
			if($scope.quantity1 == "")
			{
				alert("Please fill quantity");
			}
			else
			{
				$http.post('post_orders.php', {'id': $scope.id, 'type': $scope.type, 'quantity': $scope.quantity1, 'email':$scope.user_email})
				.success(function(data, status, headers, config) 
				{
					if(data.success == 1)
					{
						alert("Booking Successful");
						window.location = "index.html";
						return;
					}
					if(data.success == 0)
					{
						alert("Booking Unsuccessful");
						window.location = "details1.html";
						return;
					}
				});
			}
		}
	}
	
/********************************* order list *************************************/	
	// all items
	$http.get('get_catorders.php')
	.success(function(response) 
	{
		$scope.cat_orders = response.items;
	});
	
	// all products
	$http.get('get_staorders.php')
	.success(function(response) 
	{
		$scope.sta_orders = response.items;
	});
	
	// all movies
	$http.get('get_movbooked.php')
	.success(function(response) 
	{
		$scope.mov_booked = response.items;
	});
	
	// all resorts
	$http.get('get_resbooked.php')
	.success(function(response) 
	{
		$scope.res_booked = response.items;
	});
	
	// all salons
	$http.get('get_salbooked.php')
	.success(function(response) 
	{
		$scope.sal_booked = response.items;
	});
	
	// all fitness center
	$http.get('get_fitbooked.php')
	.success(function(response) 
	{
		$scope.fit_booked = response.items;
	});
	
	// all halls
	$http.get('get_hallbooked.php')
	.success(function(response) 
	{
		$scope.hal_booked = response.items;
	});
	
	
	 
	$scope.upload_file = function(id) 
	{
		window.location = "file.html";
		$cookieStore.put("cook_cus_id",id);
		return;
	}	
	
	$scope.cook_cus_id = $cookieStore.get("cook_cus_id");

});

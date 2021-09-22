
	function onLoad() 
	{
		document.addEventListener("deviceready", deviceReady, false);
	}
	function deviceReady() 
	{
		document.addEventListener("backbutton", backButtonCallback, false);
	}
	function backButtonCallback() 
	{
		navigator.app.backHistory();
	}
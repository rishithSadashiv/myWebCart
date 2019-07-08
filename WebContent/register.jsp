<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Register page</title>
<style>
body  {
  background-image: url("images/black-background-costume-dark-1097456.jpg");
}
h1{
	color:#F2E5D2;
}
a{
	color:#F2E5D2;
}
label{
	color:#F2E5D2;
}
</style>
<script type="text/javascript">
	function validate()
	{
		var name = document.getElementById("name");
		var phone = document.getElementById("phone");
		var email = document.getElementById("email");
		var username = document.getElementById("uname");
		var password = document.getElementById("pass");
		
		if(username.value.trim() == "" || password.value.trim() == "" || name.value.trim() == "" || email.value.trim() == "" || phone.value.trim() == "" )
		{
			alert("No blank values allowed.");
			return false;
		}
		else
		{
			true;	
		}
	}
	

</script>
</head>
<body>

	<h1 align="center">Register</h1>
<form action="post"><pre>																		<a href ="LogoutServlet"><b><font size="4">Login</font></b></a></pre></form>
	<form action="RegisterServlet" method="post" onsubmit="return validate()" >
		<pre>
		
		
		
								<label><b><font size="4">Name         :</font></b></label><input type="text" name="name" id="name"/><br/>
											
											
								<label><b><font size="4">Phone number :</font></b></label><input type="text" name="phNo" id="phone"/><br/>
									
																			
								<label><b><font size="4">E-mail       :</font></b></label><input type="text" name="eMail" id="email" /><br/>
											
											
								<label><b><font size="4">user name    :</font></b></label><input type="text" name="uName" id="uname" /><br/>
											
											
								<label><b><font size="4">password     :</font></b></label><input type="password" name="password" id="pass" /><br/>
											
											
									<button  type="submit" value="Login">Submit</button>
	</pre></form>

</body>
</html>
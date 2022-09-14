<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Login Form</title>
</head>
<body>
	<h2>LOGIN FORM</h2>
	<form action="UserServlet" method="post">
		<label>Email Id:</label><input type="email" name="email" required><br>
		<br> <label>Password:</label><input type="text" name="password"
			id="pass" required><br> <br> <input type="submit"
			value="LOGIN"> <input type="reset"> <input
			type="hidden" name="act" value="loginAction">
	</form>

	<h2>Forgot Password</h2>
	<form action="UserServlet">
		<label for="username">User Name: </label> <input type="text"
			name="username" required> <label for="pass">Set New
			Password: </label> <input type="text" name="pass" id="pass"
			pattern="(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[#?!@$%^&*-]).{8,}">

		<label for="confirmpass">Confirm New Password: </label> <input
			type="password" id="confirmpass" required> <input
			type="submit" value="SUBMIT"> <input type="reset"> <input
			type="hidden" name="act" value="forgotPassword">

	</form>

	<%
	String msg = request.getParameter("msg");
	if ("valid".equals(msg)) {
	%>
	<h1>Successfully Registered.</h1>
	<%
	}
	%>
	<%
	if ("invalid".equals(msg)) {
	%>
	<h1>Something went wrong!</h1>
	<%
	}
	%>
</body>
</html>
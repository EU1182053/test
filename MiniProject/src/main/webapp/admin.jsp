<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Admin Page</title>
</head>
<body>

	<%
	String email = session.getAttribute("email").toString();
	%>

	<h3>Add Product</h3>
	<a href="addProduct.jsp">Add Product</a>
	
	<h3>Show Products</h3>
	<a href="MenuServlet?action=show">Show Products</a>
	
	
	<h3>Order History</h3>
	<h3>User List</h3>
	<h3>Log out</h3>

	<%
	String msg = request.getParameter("msg");
	if ("valid".equals(msg)) {
	%>
	<h1>Admin Log In Successful.</h1>

	<%
	} else if ("error".equals(msg)) {
	%>
	<h1>Something Went Wrong!</h1>


	<%
	} else if ("productAdded".equals(msg)) {
	%>
	<h1>Product added successfully.</h1>

	<%
	msg = request.getParameter("msg");
	if ("deleted".equals(msg)) {
	%>
	<h1>Delete Successful.</h1>

	<%
	}
	
	
	%>
	
	<%
	msg = request.getParameter("edited");
	if ("deleted".equals(msg)) {
	%>
	<h1>Edit Successful.</h1>

	<%
	}
	
	
	%>
	
	<%
	msg = request.getParameter("deleted");
	if ("deleted".equals(msg)) {
	%>
	<h1>Delete Successful.</h1>

	<%
	}
	
	
	%>
	
	<%
	}
	%>
</body>
</html>
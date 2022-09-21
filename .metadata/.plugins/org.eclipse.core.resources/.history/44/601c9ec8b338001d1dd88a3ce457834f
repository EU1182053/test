<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.connection.MyConnection"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<section>
		<h1>List of Products</h1>
		<!--  in action attribute put path of servlet bydefault is get request -->

		<table>
			<thead>
				<tr>
					<th>Id</th>
					<th>Name</th>
					<th>Price</th>
					<th>Type</th>
					<th>Available</th>
				</tr>
			</thead>
			<tbody>
				<% 
				Connection conn = MyConnection.connect();
				String sql = "select * from menu;";
				PreparedStatement stmt = conn.prepareStatement(sql);
				ResultSet rs = stmt.executeQuery();
				while(rs.next()){
			%>
			<tr><%out.println(rs.getInt(1)); %></tr>
			<tr><%out.println(rs.getString(2)); %></tr>
			<tr><%out.println(rs.getInt(3)); %></tr>
			<tr><%out.println(rs.getString(4)); %></tr>
			<tr><%out.println(rs.getString(5)); %></tr>
			
			<%} %>
			</tbody>
		</table>

		<h3>
			Product Id:<%

		%>
		</h3>
		<input type="hidden" name="id" value="<%%>" required> <label
			for="name">Name: </label> <input type="text" name="name" required>

		<label for="price">Price: </label> <input type="number" name="price"
			required> <label for="type">Type: </label> <input type="text"
			name="type" required> <label for="in_stock">In Stock:
		</label> <input type="text" name="in_stock" required></input> <input
			type="submit" value="Add Product"> <input type="reset">
		<input type="hidden" name="act" value="addProduct">

	</section>
</body>
</html>
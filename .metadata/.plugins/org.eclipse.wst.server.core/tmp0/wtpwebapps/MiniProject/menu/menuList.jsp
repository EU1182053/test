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
<title>Menu List</title>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css"
	integrity="sha512-xh6O/CkQoPOWDdYTDqeRdPCVd1SpvCA9XXcUnZS2FmJNp1coAFzvtCN9BmamE+4aHK8yyUHUSCcJHgXloTyT2A=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>
<body>

	<section>
		<h1>List of Products</h1>
		<!--  in action attribute put path of servlet bydefault is get request -->
		<form action="searchHome.jsp" method="post">
			<input type="text" placeholder="search" name="search" />
			<button type="submit">
				<i class="fa-solid fa-magnifying-glass"></i>
			</button>
		</form>
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
				while (rs.next()) {
				%>
				<tr>
					<td>
						<%
						out.println(rs.getInt(1));
						%>
					</td>
					<td>
						<%
						out.println(rs.getString(2));
						%>
					</td>
					<td>
						<%
						out.println(rs.getInt(3));
						%>
					</td>
					<td>
						<%
						out.println(rs.getString(4));
						%>
					</td>
					<td>
						<%
						out.println(rs.getString(5));
						%>
					</td>
				</tr>
				<br>
				<tr>

				</tr>
				<br>
				<tr>

				</tr>
				<br>
				<tr>

				</tr>
				<br>
				<tr>

				</tr>
				<br>
				<%
				}
				%>
			</tbody>
		</table>




		<%
		String msg = request.getParameter("msg");
		if ("valid".equals(msg)) {
		%>
		<h1>User Log in Successful.</h1>

		<%
		}
		%>
	</section>
</body>
</html>
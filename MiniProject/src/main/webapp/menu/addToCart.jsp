<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.connection.MyConnection"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%
    String email = session.getAttribute("email").toString();
	String id = request.getParameter("id");
	
	int quantity = 1;
	int product_total = 0;
	int cart_total = 0;
	int product_price = 0;
	
	try{
		Connection conn = MyConnection.connect();
		
		String sql1 = "select * from menu where id=?";
		
		
		PreparedStatement stmt = conn.prepareStatement(sql1);
		
		stmt.setString(1, id);
		
		ResultSet rs = stmt.executeQuery();
		
		while(rs.next()){
			product_price=rs.getInt(3);
			product_total=product_price;
		}
		
		
	}
	catch(Exception e){
		
	}
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

</body>
</html>
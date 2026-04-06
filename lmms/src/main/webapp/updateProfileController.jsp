<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Profile Controller | lmms</title>
</head>
<body>

	<%
	
	String u_id=request.getParameter("user_id");
	int user_id = Integer.parseInt(u_id);
	System.out.println(user_id);
	
	String name=request.getParameter("fullName");
	String email=request.getParameter("email");
	String u_password=request.getParameter("password");
	String phone=request.getParameter("phone_number");
	String u_address=request.getParameter("address");
	String u_city=request.getParameter("city");
	String pin=request.getParameter("pincode");
	
	try {
		
		Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","lmms","lmms");
		PreparedStatement ps = con.prepareStatement("update users set USER_NAME=?, EMAIL=?, PASSWORD=?, PHONE_NUMBER=?, ADDRESS=?, CITY=?, PINCODE=? where user_id=?");
		ps.setString(1, name);
		ps.setString(2, email);
		ps.setString(3, u_password);
		ps.setString(4, phone);
		ps.setString(5, u_address);
		ps.setString(6, u_city);
		ps.setString(7, pin);
		ps.setInt(8, user_id);
		
		int i = ps.executeUpdate();
		
		if(i>=0){
			
			out.println("updated successfuly");
		}
		else{
			out.println("upadated failed");
		}
	} catch (Exception e) {e.printStackTrace();}
	
	%>

</body>
</html>
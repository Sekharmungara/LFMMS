<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Delete User Controller</title>
</head>
<body>
<%
	String u_id=request.getParameter("user_id");
	int user_id = Integer.parseInt(u_id);
	System.out.println(user_id);
	
	String DELETE_USER = " delete from users where user_id=?";

try {
	
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","lmms","lmms");
	PreparedStatement ps = con.prepareStatement(DELETE_USER);
	
	
	ps.setString(1, u_id);
	
	int i = ps.executeUpdate();
	
	if(i>0){
		out.println("deleted Successfully");
		
	}else{
		out.println("deleted Failed");
	}
	
	
} catch (Exception e){e.printStackTrace();}

%>
</body>
</html>
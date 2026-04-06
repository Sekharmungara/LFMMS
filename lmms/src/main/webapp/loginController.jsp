<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>login Controller | lmms</title>
</head>
<body>

	<%
	String u_email=request.getParameter("email");
	String u_password=request.getParameter("password");
	System.out.println("successfuly");
	
	try {
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","lmms","lmms");
	PreparedStatement ps=con.prepareStatement(" select * from users where email=? and password=?");
	ps.setString(1, u_email);
	ps.setString(2,u_password);
	
	ResultSet rs=ps.executeQuery();
	
	int user_id = 0;
	
	if(rs.next()){
		user_id = rs.getInt(1);
		session.setAttribute("user_id", user_id);
		
		response.sendRedirect("./userdashboard.jsp");
	}else{
		response.sendRedirect("./login.jsp");
	}
	con.close();
		
	}catch (Exception e){e.printStackTrace();}
	
	
	
	
	
	
	
	
	%>

</body>
</html>
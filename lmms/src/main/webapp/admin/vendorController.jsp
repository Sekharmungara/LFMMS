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
<title>vendor Controller | lmms</title>
</head>
<body>

	<%
	String v_email=request.getParameter("email");
	String v_password=request.getParameter("password");
	System.out.println("successfuly");
	
	try {
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","lmms","lmms");
	PreparedStatement ps=con.prepareStatement(" select * from vendor where email=? and password=?");
	ps.setString(1, v_email);
	ps.setString(2,v_password);
	
	ResultSet rs=ps.executeQuery();
	if(rs.next()){
		response.sendRedirect("./admin.jsp");
	}else{
		response.sendRedirect("./adminLogin.jsp");
	}
	con.close();
		
	}catch (Exception e){e.printStackTrace();}
	
	
	
	
	
	
	
	
	%>

</body>
</html>
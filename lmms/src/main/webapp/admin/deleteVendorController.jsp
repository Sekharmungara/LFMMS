<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Delete vendor controller | lmms</title>
</head>
<body>
	<%
	String v_id=request.getParameter("vendor_id");
	int vendor_id = Integer.parseInt(v_id);
	System.out.println(vendor_id);
	
	String DELETE_VENDOR = "delete from vendor where vendor_id=?";

try {
	
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","lmms","lmms");
	PreparedStatement ps = con.prepareStatement(DELETE_VENDOR);
	
	ps.setInt(1, vendor_id);
	
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
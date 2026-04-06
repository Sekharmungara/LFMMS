<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>update vendor controller | lmms</title>
</head>
<body>
	<%
	String v_id=request.getParameter("vendor_id");
	int vendor_id = Integer.parseInt(v_id);
	String name=request.getParameter("fullname");
	String v_email=request.getParameter("email");
	String password=request.getParameter("password");
	String phone=request.getParameter("phone");
	String shopname=request.getParameter("shopname");
	String address=request.getParameter("address");
	String city=request.getParameter("city");
	String v_rating=request.getParameter("rating");
	System.out.println(v_rating);
	int rating = Integer.parseInt(v_rating); 
	
	
	System.out.println(name);
	System.out.println(v_email);
	System.out.println(password);
	System.out.println(phone);
	System.out.println(shopname);
	System.out.println(address);
	System.out.println(city);
	System.out.println(rating);
	String UPDATE_VENDOR = "update vendor set vendor_name=?, email=?, password=?, phone_number=?,shop_name=?, shop_address=?, shop_city=?, rating=? where vendor_id=?";

try {
	
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","lmms","lmms");
	PreparedStatement ps = con.prepareStatement(UPDATE_VENDOR);
	
	ps.setString(1, name);
	ps.setString(2, v_email);
	ps.setString(3, password);
	ps.setString(4, phone);
	ps.setString(5, shopname);
	ps.setString(6, address);
	ps.setString(7, city);
	ps.setInt(8, rating);
	ps.setInt(9, vendor_id);
	
	int i = ps.executeUpdate();
	
	if(i>0){
		out.println("updated Successfully");
		
	}else{
		out.println("updated Failed");
	}
	
	
} catch (Exception e){e.printStackTrace();}

%>
</body>
</html>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>add Vendor Controller |lmms</title>
</head>
<body>
	<%
		
		
		String name = request.getParameter("fullName");
		String v_email = request.getParameter("email");
		String password = request.getParameter("password");
		String phone = request.getParameter("phone");
		String s_name = request.getParameter("shopName");
		String s_address = request.getParameter("shopAddress");
		String s_city = request.getParameter("shopCity");
		String v_rating =request.getParameter("rating");
		int rating = Integer.parseInt(v_rating);
		
		System.out.println(name);
		System.out.println(v_email);
		System.out.println(password);
		System.out.println(phone);
		System.out.println(s_name);
		System.out.println(s_address);
		System.out.println(s_city);
		System.out.println(v_rating);
		

		try{
			
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","lmms","lmms");
			PreparedStatement ps = con.prepareStatement("insert into vendor values(VENDOR_SEQ.nextval,?,?,?,?,?,?,?,?,SYSDATE)");
			
			ps.setString(1, name);
			ps.setString(2, v_email);
			ps.setString(3, password);
			ps.setString(4, phone);
			ps.setString(5, s_name);
			ps.setString(6, s_address);
			ps.setString(7, s_city);
			ps.setString(8, v_rating);
			int i = ps.executeUpdate();
			
			if (i>0){
				out.println("Added Successfully");
			} else {
				out.println("Added Failed");
			}
			
			con.close();
		}catch(Exception e){e.printStackTrace();}
		
		
	%>

</body>
</html>
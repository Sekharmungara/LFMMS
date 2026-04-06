<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>adduUserController | lmms</title>
</head>
<body>

	<%
		
		
		String name = request.getParameter("fullName");
		String u_email = request.getParameter("email");
		String password = request.getParameter("password");
		String phone = request.getParameter("phone");
		String address = request.getParameter("address");
		String city = request.getParameter("city");
		String u_pincode = request.getParameter("pincode");
		int pincode = Integer.parseInt(u_pincode);
		
		System.out.println(name);
		System.out.println(u_email);
		System.out.println(password);
		System.out.println(phone);
		System.out.println(address);
		System.out.println(city);
		System.out.println(u_pincode);
		

		try{
			
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","lmms","lmms");
			PreparedStatement ps = con.prepareStatement("insert into users values(user_id_seq.nextval,?,?,?,?,?,?,?,SYSDATE)");
			
			ps.setString(1, name);
			ps.setString(2, u_email);
			ps.setString(3, password);
			ps.setString(4, phone);
			ps.setString(5, address);
			ps.setString(6, city);
			ps.setString(7, u_pincode);
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
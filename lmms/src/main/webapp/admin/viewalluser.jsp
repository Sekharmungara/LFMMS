<%@page import="java.sql.ResultSet"%>
<%@page import="javax.naming.spi.DirStateFactory.Result"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>viewalluser | lmms</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap" rel="stylesheet">
<link rel="stylesheet" href="../css/viewalluser.css"/>
</head>
<body>
	
<!-- HEADER -->
<div class="header">
  <h2><i class="fas fa-users me-2"></i>View All Users</h2>
  <p class="mb-0 opacity-75">Manage all registered users</p>
</div>
	
	
	<%
	
	try {
		
		Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","lmms","lmms");
		PreparedStatement ps = con.prepareStatement("select * from users ");
		
		ResultSet rs = ps.executeQuery();%>
		
		<!-- TABLE CARD -->
		<div class="card-box">
		  <div class="table-responsive">
		    <table class="table table-bordered table-hover align-middle">
		      <thead>
		        <tr>
		          <th>ID</th>
		          <th>Full Name</th>
		          <th>Email</th>
		          <th>Password</th>
		          <th>Phone</th>
		          <th>Address</th>
		          <th>city</th>
		          <th>pincode</th>
		        </tr>
		      </thead>
		
		<% while(rs.next()){%>
			<tbody>
	        <tr>
	          <td><%=rs.getInt(1)%></td>
	          <td><%=rs.getString(2) %></td>
	          <td><%=rs.getString(3)%></td>
	          <td><%=rs.getString(4) %></td>
	          <td><%=rs.getString(5) %></td>
	          <td><%=rs.getString(6) %></td>
	          <td><%=rs.getString(7) %></td>
	          <td><%=rs.getInt(8) %></td>
	          </tr></tbody>
	          
	         <!--  System.out.println("user id: "+rs.getInt(1));
	          System.out.println("user name: "+rs.getString(2));
	          System.out.println("user email: "+rs.getString(3));
	          System.out.println("user password: "+rs.getString(4));
	          System.out.println("user pohne: "+rs.getString(5));
	          System.out.println("user address: "+rs.getString(6));
	          System.out.println("user city: "+rs.getString(7));
	          System.out.println("user pincode: "+rs.getInt(8))); -->
		<% }
	}catch(Exception e) {e.printStackTrace();}
	
	%>
	
    </table>     
  </div>
</div>

</body>
</html>
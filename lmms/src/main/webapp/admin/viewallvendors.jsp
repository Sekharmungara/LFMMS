<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>viewallvendors | lmms</title>
<!-- Bootstrap -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
<!-- Font Awesome -->
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css"
	rel="stylesheet">
<!-- Google Font -->
<link
	href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap"
	rel="stylesheet">
<link rel="stylesheet" href="../css/viewallvendors.css" />

</head>
<body>


	<div class="card-box">
		<div class="header">
			<h3>
				<i class="fas fa-store me-2"></i>View All Vendors
			</h3>
			<p class="mb-0 opacity-75">List of registered vendors</p>
		</div>

		<%
  	try{
  		
  		Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","lmms","lmms");
		PreparedStatement ps = con.prepareStatement("select * from vendor ");
		
		ResultSet rs = ps.executeQuery();%>
		
		<div class="card-box">
		<div class="table-responsive">
			<table class="table table-bordered text-center align-middle">
				<thead>
					<tr>
						<th>Vendor ID</th>
						<th>Vendor Name</th>
						<th>Email</th>
						<th>Password</th>
						<th>Phone</th>
						<th>shop_name</th>
						<th>address</th>
						<th>city</th>
						<th>rating</th>

					</tr>
				</thead>
				<% while (rs.next()){%>
				<tbody>
					<tr>
						<td><%=rs.getInt(1)%></td>
						<td><%=rs.getString(2) %></td>
						<td><%=rs.getString(3)%></td>
						<td><%=rs.getString(4) %></td>
						<td><%=rs.getString(5) %></td>
						<td><%=rs.getString(6) %></td>
						<td><%=rs.getString(7) %></td>
						<td><%=rs.getString(8) %></td>
						<td><%=rs.getInt(9)%></td>
					</tr>
				</tbody>


				<%}} catch (Exception e){e.printStackTrace();}
  	
  %>
			</table>
		</div>
	</div>
</body>
</html>
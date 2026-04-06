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
<title>Update user | lmms</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap"
	rel="stylesheet">
<link rel="stylesheet" href="../css/adduser.css" />

</head>
<body>

	<%
	String u_id=request.getParameter("user_id");
	int user_id = Integer.parseInt(u_id);
	System.out.println(user_id);
	
	 
	 int userId=0;
	String fullname="";
	String email="";
	String password="";
	String phone="";
	String address="";
	String city="";
	String u_pincode="";
	
	
	try {
		
		Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","lmms","lmms");
		PreparedStatement ps = con.prepareStatement("select * from users where user_id=?");
		ps.setInt(1, user_id);
		
		ResultSet rs = ps.executeQuery();
		
		if(rs.next()){ 
		
		userId=rs.getInt(1);
		fullname=rs.getString(2);
		email=rs.getString(3);
		password=rs.getString(4);
		phone=rs.getString(5);
		address=rs.getString(6);
		city=rs.getString(7);
		u_pincode=rs.getString(8);
		
		
		%>


	<div class="card-box">
		<div class="header mb-4">
			<h3>
				<i class="fas fa-user-plus me-2"></i>New User
			</h3>
			<p class="opacity-75 mb-0">You can edit the example details</p>
		</div>

		<form action="./updateUserController.jsp" method="post">
		
		<div class="input-icon mb-4">
				<i class="fas fa-user"></i>
				<div class="form-floating">
					<input type="text" class="form-control" id="user_id" name="user_id" value="<%=user_id%>">
					
						 <label>user_id</label>
				</div>
			</div>
			<!-- Full Name -->
			<div class="input-icon mb-4">
				<i class="fas fa-user"></i>
				<div class="form-floating">
					<input type="text" class="form-control" id="fullName"
						name="fullName" value="<%=fullname%>"> <label>Full
						Name</label>
				</div>
			</div>

			<!-- Email -->
			<div class="input-icon mb-4">
				<i class="fas fa-envelope"></i>
				<div class="form-floating">
					<input type="email" class="form-control" id="email" name="email"
						value="<%=email%>"> <label>Email Address</label>
				</div>
			</div>

			<div class="input-icon mb-4">
				<i class="fas fa-envelope"></i>
				<div class="form-floating">
					<input type="password" class="form-control" id="password"
						name="password" value="<%=password%>"> <label>Enter
						Password</label>
				</div>
			</div>

			<!-- Phone -->
			<div class="input-icon mb-4">
				<i class="fas fa-phone"></i>
				<div class="form-floating">
					<input type="tel" class="form-control" id="phone" name="phone"
						value="<%=phone%>"> <label>Phone Number</label>
				</div>
			</div>

			<!-- Address -->
			<div class="input-icon mb-4">
				<i class="fas fa-map-marker-alt"></i>
				<div class="form-floating">
					<textarea class="form-control" name="address" 
						style="height: 100px;"><%=address %></textarea>
					<label>Address</label>
				</div>
			</div>

			<div class="input-icon mb-4">
				<i class="fas fa-user"></i>
				<div class="form-floating">
					<input type="text" class="form-control" id="city" name="city"
						value="<%=city%>"> <label>City</label>
				</div>
			</div>

			<div class="input-icon mb-4">
				<i class="fas fa-phone"></i>
				<div class="form-floating">
					<input type="number" class="form-control" id="pincode"
						name="pincode" value="<%=u_pincode%>"> <label>pincode</label>
				</div>
			</div>
			
			<!-- Button -->
			<a href="updateUserController.jsp"><button type="submit" class="btn btn-success w-100">
				<i class="fas fa-user-plus me-2"></i>Update User
			</button>
			</a>
			
		</form>
	</div>

	<%}
		
	} catch (Exception e){e.printStackTrace();}

	
	%>




</body>
</html>
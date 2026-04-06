<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here<%@page import="java.sql.ResultSet"%>
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
<title>update User Profile | lmms</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap"
	rel="stylesheet">
<link rel="stylesheet" href="./css/adduser.css" />

</head>
<body>
	<%
	int user_id = 0;

	if (session.getAttribute("user_id") != null) {
		user_id = Integer.parseInt(session.getAttribute("user_id").toString());
		System.out.println(user_id);
	} else {
		response.sendRedirect("./login.jsp");
	}
	 
	String USER_DETAILS="select USER_ID, USER_NAME, EMAIL, PASSWORD, PHONE_NUMBER, ADDRESS, CITY, PINCODE from users where user_id=?";
	try{
		Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","lmms","lmms");
		PreparedStatement ps=con.prepareStatement(USER_DETAILS);
		
		ps.setInt(1, user_id);
		
		ResultSet rs = ps.executeQuery();
		
		if(rs.next()){
			int u_id = rs.getInt(1);%>
			
			<div class="card-box">
		<div class="header mb-4">
			<h3>
				<i class="fas fa-user-plus me-2"></i>update user Profile
			</h3>
			<p class="opacity-75 mb-0">You can edit the example details</p>
		</div>

		<form action="updateProfileController.jsp" method="post">
		
		<div class="input-icon mb-4">
				<i class="fas fa-user"></i>
				<div class="form-floating">
					<input type="text" class="form-control" id="user_id"
						name="user_id" value="<%=rs.getInt(1)%>"> <label>user_id</label>
				</div>
			</div>
			<!-- Full Name -->
			<div class="input-icon mb-4">
				<i class="fas fa-user"></i>
				<div class="form-floating">
					<input type="text" class="form-control" id="fullName"
						name="fullName" value="<%=rs.getString(2)%>"> <label>Full Name</label>
				</div>
			</div>

			<!-- Email -->
			<div class="input-icon mb-4">
				<i class="fas fa-envelope"></i>
				<div class="form-floating">
					<input type="email" class="form-control" id="email" name="email" value="<%=rs.getString(3)%>">
					<label>Email Address</label>
				</div>
			</div>

			<div class="input-icon mb-4">
				<i class="fas fa-envelope"></i>
				<div class="form-floating">
					<input type="password" class="form-control" id="password"
						name="password" value="<%=rs.getString(4)%>"> <label> Password</label>
				</div>
			</div>

			<!-- Phone -->
			<div class="input-icon mb-4">
				<i class="fas fa-phone"></i>
				<div class="form-floating">
					<input type="tel" class="form-control" id="phone" name="phone_number" value="<%=rs.getString(5)%>">
					<label>Phone Number</label>
				</div>
			</div>

			<!-- Address -->
			<div class="input-icon mb-4">
				<i class="fas fa-map-marker-alt"></i>
				<div class="form-floating">
					<textarea class="form-control" name="address"
						style="height: 100px;"><%=rs.getString(6)%></textarea>
					<label>Address</label>
				</div>
			</div>

			<div class="input-icon mb-4">
				<i class="fas fa-user"></i>
				<div class="form-floating">
					<input type="text" class="form-control" id="city" name="city" value="<%=rs.getString(7)%>">
					<label>City</label>
				</div>
			</div>

			<div class="input-icon mb-4">
				<i class="fas fa-phone"></i>
				<div class="form-floating">
					<input type="number" class="form-control" id="pincode"
						name="pincode" value="<%=rs.getInt(8)%>"> <label>Pincode</label>
				</div>
			</div>
			<button type="submit" class="btn btn-success w-100">
				<i class="fas fa-save me-1"></i>update
			</button>

			<!-- Button -->
			<button class="btn btn-success w-100">
				<i class="fas fa-arrow-left me-1"></i>Back
			</button>
		</form>
	</div>
	
			
		<%}

		
	} catch (Exception e) {e.printStackTrace();}
	%>
	

</body>
</html></title>
</head>
<body>

</body>
</html>
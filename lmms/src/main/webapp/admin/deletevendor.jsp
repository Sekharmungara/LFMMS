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
<title>deletevendor | lmms</title>
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
<link rel="stylesheet" href="../css/deletevendor.css" />
</head>
<body>

	<%
	String v_id=request.getParameter("vendor_id");
	int vendor_id = Integer.parseInt(v_id);
	System.out.println(vendor_id);
	
	 
	 int vendorId=0;
	String fullname="";
	String email="";
	String password="";
	String phone="";
	String shop_name="";
	String address="";
	String city="";
	String rating="";
	
	
	try {
		
		Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","lmms","lmms");
		PreparedStatement ps = con.prepareStatement("select * from vendor where vendor_id=?");
		ps.setInt(1, vendor_id);
		
		ResultSet rs=ps.executeQuery();
		
		if(rs.next()){ 
		
		vendorId=rs.getInt(1);
		fullname=rs.getString(2);
		email=rs.getString(3);
		password=rs.getString(4);
		phone=rs.getString(5);
		shop_name=rs.getString(6);
		address=rs.getString(7);
		city=rs.getString(8);
		rating=rs.getString(9);
		
		
		%>

	<div class="card-box">
		<div class="header">
			<h3>
				<i class="fas fa-user-slash me-2"></i>Delete Vendor
			</h3>
			<p class="mb-0 opacity-75">Delete vendor details</p>
		</div>

		<form action="./deleteVendorController.jsp" method="post">
			<!-- Vendor ID (Read Only) -->
			<div class="input-icon mb-3">
				<i class="fas fa-id-badge"></i> <input type="text"
					class="form-control" name="vendor_id" value="<%=vendor_id%>"
					readonly>
			</div>

			<!-- Vendor Name -->
			<div class="input-icon mb-3">
				<i class="fas fa-store"></i> <input type="text" class="form-control"
					name="fullname" value="<%=fullname%>" required>
			</div>

			<!-- Email -->
			<div class="input-icon mb-3">
				<i class="fas fa-envelope"></i> <input type="email"
					class="form-control" name="email" value="<%=email%>" required>
			</div>

			<div class="input-icon mb-3">
				<i class="fas fa-envelope"></i> <input type="password"
					class="form-control" name="password" value="<%=password%>" required>
			</div>

			<!-- Phone -->
			<div class="input-icon mb-3">
				<i class="fas fa-phone"></i> <input type="tel" class="form-control"
					name="phone" value="<%=phone%>" required>
			</div>

			<!-- Vendor Type -->
			<div class="input-icon mb-3">
				<i class="fas fa-store"></i> <input type="text" class="form-control"
					name="shop_name" value="<%=shop_name%>" required>
			</div>

			<!-- Address -->
			<div class="input-icon mb-4">
				<i class="fas fa-map-marker-alt"></i>
				<textarea class="form-control" rows="3" name="address" required><%=address %></textarea>
			</div>

			<div class="input-icon mb-3">
				<i class="fas fa-envelope"></i> <input type="text"
					class="form-control" name="city" value="<%=city%>" required>
			</div>

			<div class="input-icon mb-3">
				<i class="fas fa-phone"></i> <input type="tel" class="form-control"
					name="rating" value="<%=rating%>" required>
			</div>

			<!-- Buttons -->
			<div class="d-flex gap-2">
				<a href="./deleteVendorController.jsp"><button type="submit"
						class="btn btn-success w-100">
						<i class="fas fa-trash me-2"></i>Delete Vendor
					</button>
					<button type="reset" class="btn btn-secondary w-100">
						<i class="fas fa-undo me-2"></i>Reset
					</button></a>
			</div>
		</form>
	</div>
	<%}
		
	} catch (Exception e){e.printStackTrace();}

	
	%>
</body>
</html>
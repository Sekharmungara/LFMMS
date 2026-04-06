<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>login | lmms</title>

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600;700&display=swap"
	rel="stylesheet">
<link rel="stylesheet" href="./css/login.css" />

</head>
<body>
	<div class="login-card">

		<h3 class="login-title">Fruit Market Login</h3>

		<form action="loginController.jsp" method="post">

			<div class="mb-3">
				<label class="form-label">Email</label> 
				<input type="email" name="email" class="form-control" placeholder="Enter your email" required>
			</div>

			<div class="mb-3">
				<label class="form-label">Password</label> 
				<input type="password" name="password" class="form-control" placeholder="Enter password" required>
			</div>

			<div class="d-grid mb-3">
				<button type="submit" class="login-btn">Login</button>
			</div>

			<!-- Register Link -->
			<div class="text-center mb-3">
				<span>Don't have an account? </span>
				<a href="./admin/adduser.jsp" class="text-decoration-none fw-bold">Register</a>
			</div>

			<!-- Other Login Options -->
			<div class="text-center">
				<a href="./admin/adminLogin.jsp">Login as Admin</a>
				&nbsp;&nbsp;&nbsp;
				<a href="./vendor/vendorLogin.jsp">Login as Vendor</a>
			</div>

		</form>

	</div>
</body>
</html>
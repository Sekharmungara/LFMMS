<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Login | lmms</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600;700&display=swap" rel="stylesheet">
<link rel="stylesheet" href="../css/login.css"/>



</head>
<body>
<div class="login-card">

<h2 class="login-title">LFMMS</h2>
<h3 class="login-title"> Login as Admin</h3>

<form action="adminController.jsp" method="post">

<div class="mb-3">
<label class="form-label">Email</label>
<input type="email" name="email" class="form-control" placeholder="Enter your email" required>
</div>

<div class="mb-3">
<label class="form-label">Password</label>
<input type="password" name="password" class="form-control" placeholder="Enter password" required>
</div>



<div class="d-grid">
<button type="submit" class="login-btn">Login</button>
</div>

</form>

</div>



</body>
</html>
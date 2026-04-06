<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>

<meta charset="UTF-8">
<title>User Registration | lmms</title>

<meta name="viewport" content="width=device-width, initial-scale=1">

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

<style>

body{
  height:100vh;
  display:flex;
  justify-content:center;
  align-items:center;
  background:linear-gradient(to right,#00b4d8,#90e0ef);
  font-family:'Segoe UI',sans-serif;
}

.register-card{
  width:400px;
  padding:30px;
  border-radius:12px;
  background:white;
  box-shadow:0px 5px 20px rgba(0,0,0,0.2);
}

.title{
  text-align:center;
  color:#0077b6;
  margin-bottom:20px;
  font-weight:bold;
}

</style>

</head>

<body>

<div class="register-card">

<h3 class="title">💧 New User</h3>

<form action="register_controller.jsp" method="post">

<div class="mb-3">
<label>Name</label>
<input type="text" name="name" class="form-control" required>
</div>

<div class="mb-3">
<label>Email</label>
<input type="email" name="email" class="form-control" required>
</div>
<!-- 👇 IKADA PASSWORD SECTION PETTALI -->
<div class="mb-3">
<label>Create Password</label>
<input type="password" id="password" name="password" 
class="form-control" required>
</div>




<div class="mb-3">
<label>Address</label>
<textarea name="address" class="form-control" placeholder="Enter Address" rows="3" required></textarea>
</div>

<div class="mb-3">
<label>Gender</label><br>

<input type="radio" name="gender" value="Male" required> Male
<input type="radio" name="gender" value="Female"> Female
<input type="radio" name="gender" value="Other"> Other

</div>
<div class="d-grid">
<button type="submit" class="btn btn-primary">Register</button>
</div>
</form>

<div class="text-center mt-3">
<a href="/user/add.jsp"> Login</a>
</div>

</div>

</body>
</html>
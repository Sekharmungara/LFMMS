<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>new user | lmms</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap" rel="stylesheet">
 <link rel="stylesheet" href="../css/adduser.css"/>

</head>
<body>
<div class="card-box">
  <div class="header mb-4">
    <h3><i class="fas fa-user-plus me-2"></i>New User</h3>
    <p class="opacity-75 mb-0">You can edit the example details</p>
  </div>

  <form action="./adduUserController.jsp" method="post">
    <!-- Full Name -->
    <div class="input-icon mb-4">
      <i class="fas fa-user"></i>
      <div class="form-floating">
        <input type="text" class="form-control" id="fullName" name="fullName">
        <label>Full Name</label>
      </div>
    </div>

    <!-- Email -->
    <div class="input-icon mb-4">
      <i class="fas fa-envelope"></i>
      <div class="form-floating">
        <input type="email" class="form-control" id="email" name="email">
        <label>Email Address</label>
      </div>
    </div>
    
     <div class="input-icon mb-4">
      <i class="fas fa-envelope"></i>
      <div class="form-floating">
        <input type="password" class="form-control" id="password" name="password">
        <label>Enter Password</label>
      </div>
    </div>

    <!-- Phone -->
    <div class="input-icon mb-4">
      <i class="fas fa-phone"></i>
      <div class="form-floating">
        <input type="tel" class="form-control" id="phone" name="phone">
        <label>Phone Number</label>
      </div>
    </div>

    <!-- Address -->
    <div class="input-icon mb-4">
      <i class="fas fa-map-marker-alt"></i>
      <div class="form-floating">
        <textarea class="form-control" name="address"style="height:100px;"></textarea>
        <label>Address</label>
      </div>
    </div>
    
    <div class="input-icon mb-4">
      <i class="fas fa-user"></i>
      <div class="form-floating">
        <input type="text" class="form-control" id="city" name="city">
        <label>City</label>
      </div>
    </div>
    
    <div class="input-icon mb-4">
      <i class="fas fa-phone"></i>
      <div class="form-floating">
        <input type="number" class="form-control" id="pincode" name="pincode">
        <label>Pincode</label>
      </div>
    </div>
    

    <!-- Button -->
    <button type="submit" class="btn btn-success w-100">
      <i class="fas fa-user-plus me-2"></i>Add User
    </button>
  </form>
</div>


</body>
</html>
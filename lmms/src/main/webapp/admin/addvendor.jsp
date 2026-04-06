<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>addvendor | lmms</title>
<!-- Bootstrap -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
<!-- Font Awesome -->
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" rel="stylesheet">
<!-- Google Font -->
<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap" rel="stylesheet">
<link rel="stylesheet" href="../css/addvendor.css"/>

</head>
<body>
<div class="card-box">
  <div class="header">
    <h3><i class="fas fa-user-plus me-2"></i>Add Vendor</h3>
    <p class="mb-0 opacity-75">Admin adds new vendor</p>
  </div>

  <form action="addVendorController.jsp" method="post">
    <!-- Vendor Name -->
    <div class="input-icon mb-3">
      <i class="fas fa-store"></i>
      <input type="text" class="form-control" placeholder=" fullName" name="fullName" required>
    </div>

    <!-- Email -->
    <div class="input-icon mb-3">
      <i class="fas fa-envelope"></i>
      <input type="email" class="form-control" placeholder="Email Address" name="email"required>
    </div>
    
    <div class="input-icon mb-3">
      <i class="fas fa-envelope"></i>
      <input type="password" class="form-control" placeholder="Email Password" name="password" required>
    </div>

    <!-- Phone -->
    <div class="input-icon mb-3">
      <i class="fas fa-phone"></i>
      <input type="tel" class="form-control" placeholder="Phone Number" name="phone" required>
    </div>
    
    <div class="input-icon mb-3">
      <i class="fas fa-store"></i>
      <input type="text" class="form-control" placeholder="Shop Name" name="shopName"required>
    </div>

    <!-- Address -->
    <div class="input-icon mb-4">
      <i class="fas fa-map-marker-alt"></i>
      <textarea class="form-control" rows="3" placeholder="Shop Address" name="shopAddress"required></textarea>
    </div>
    
    <div class="input-icon mb-3">
      <i class="fas fa-store"></i>
      <input type="text" class="form-control" placeholder=" Shop City" name="shopCity" required>
    </div>
    
    <div class="input-icon mb-3">
      <i class="fas fa-phone"></i>
      <input type="tel" class="form-control" placeholder="Rating" name="rating" required>
    </div>
    

    <!-- Buttons -->
    <div class="d-flex gap-2">
      <button type="submit" class="btn btn-success w-100">
        <i class="fas fa-plus-circle me-2"></i>Add Vendor
      </button>
      <button type="reset" class="btn btn-secondary w-100">
        <i class="fas fa-eraser me-2"></i>Clear
      </button>
    </div>
  </form>
</div>

</body>
</html>
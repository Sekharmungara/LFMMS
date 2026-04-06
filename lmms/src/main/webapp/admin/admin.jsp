<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>admin | lmms</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;600;700&display=swap" rel="stylesheet">
<link rel="stylesheet" href="../css/admin.css"/>

</head>
<body>

<div class="card-box">

  <!-- HEADER -->
  <div class="admin-header">
    <h2>
      <i class="fas fa-user-shield me-2"></i>
      Admin Dashboard
    </h2>
    <p>Manage users and vendors</p>
  </div>

  <!-- CONTENT -->
  <div class="admin-content">

    <div class="row">

      <!-- LEFT SIDE - VENDOR -->
      <div class="col-md-6">

        <a href="addvendor.jsp" class="admin-btn">
          <i class="fas fa-user-plus me-2"></i>Add Vendor
        </a>

        <a href="viewallvendors.jsp" class="admin-btn">
          <i class="fas fa-users me-2"></i>View All Vendors
        </a>

        <a href="searchVendor.jsp" class="admin-btn">
          <i class="fas fa-user-edit me-2"></i>Update Vendor
        </a>

        <a href="deleteSearchVendor.jsp" class="admin-btn">
          <i class="fas fa-user-slash me-2"></i>Delete Vendor
        </a>

      </div>

      <!-- RIGHT SIDE - USER -->
      <div class="col-md-6">

        <a href="adduser.jsp" class="admin-btn">
          <i class="fas fa-user-plus me-2"></i>Add User
        </a>

        <a href="./viewalluser.jsp" class="admin-btn">
          <i class="fas fa-users me-2"></i>View All Users
        </a>

        <a href="searchUser.jsp" class="admin-btn">
          <i class="fas fa-user-edit me-2"></i>Update User
        </a>

        <a href="deleteSearchUser.jsp" class="admin-btn">
          <i class="fas fa-user-slash me-2"></i>Delete User
        </a>

      </div>

    </div>

    <!-- LOGOUT CENTER -->
    <div class="text-center mt-3">
      <a href="login.html" class="admin-btn">
        <i class="fas fa-sign-out-alt me-2"></i>Logout
      </a>
    </div>

  </div>
</div>

</body>
</html>
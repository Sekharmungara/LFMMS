<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
    <!-- Bootstrap CDN -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- Bootstrap Icons -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.css" rel="stylesheet">

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Poppins&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="./css/vendordashboard.css"/>


</head>
<body>
<div class="container-fluid">
    <div class="row">

        <!-- Sidebar -->
        <div class="col-md-2 sidebar p-3">
            <h4>🌾 Vendor Panel</h4>
            <hr>

            <a href="#"><i class="bi bi-house-door-fill me-2"></i>Dashboard</a>
            <a href="#"><i class="bi bi-basket-fill me-2"></i>Products</a>
            <a href="#"><i class="bi bi-box-seam me-2"></i>Orders</a>
            <a href="#"><i class="bi bi-person-circle me-2"></i>Profile</a>
            <a href="#"><i class="bi bi-box-arrow-right me-2"></i>Logout</a>
        </div>

        <!-- Main Content -->
        <div class="col-md-10 p-4">

            <div class="content-box">

                <!-- Welcome -->
                <h3>Welcome, Vendor 👋</h3>
                <p class="text-muted">
                    Manage and showcase your fresh organic products to customers.
                </p>

                <hr>

                <!-- Fruits & Vegetables Images -->
                <div class="row mb-4">

                    <!-- Apples -->
                    <div class="col-md-4">
                        <div class="img-box">
                            <img src="https://images.unsplash.com/photo-1567306226416-28f0efdc88ce" alt="Organic Apples">
                            <p class="mt-2 fw-semibold">🍎 Organic Apples</p>
                        </div>
                    </div>

                    <!-- Oranges -->
                    <div class="col-md-4">
                        <div class="img-box">
                            <img src="https://i.pinimg.com/736x/b2/43/40/b243409b868ee4f18ec137d0d12d9d8a.jpg" alt="Oranges">
                            <p class="mt-2 fw-semibold">🍊 Fresh Oranges</p>
                        </div>
                    </div>

                    <!-- Vegetables -->
                    <div class="col-md-4">
                        <div class="img-box">
                            <img src="https://images.unsplash.com/photo-1542838132-92c53300491e" alt="Vegetables">
                            <p class="mt-2 fw-semibold">🥦 Organic Vegetables</p>
                        </div>
                    </div>

                </div>

                <!-- About -->
                <h5>🌱 About the Platform</h5>
                <p class="text-muted">
                    Sell your fresh fruits and vegetables directly to customers. This platform removes middlemen 
                    and helps you earn fair profits while delivering quality organic products.
                </p>

                <!-- Instructions -->
                <h5 class="mt-4">🚀 How to Use</h5>
                <ul class="text-muted">
                    <li>Add your organic products in the Products section</li>
                    <li>Manage customer orders easily</li>
                    <li>Update your profile and business details</li>
                </ul>

            </div>

        </div>
    </div>
</div>

</body>
</html>
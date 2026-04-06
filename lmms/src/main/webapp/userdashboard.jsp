<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>userdashboard | lmms</title>
<!-- Bootstrap CDN -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
	<link rel="stylesheet" href="./css/userdashboard.css"/>
	

</head>
<body>
<div class="container-fluid">
    <div class="row">

        <!-- Sidebar -->
        <div class="col-md-2 sidebar p-3">
            <h4>🌱 Organic Mart</h4>
            <hr>
            <a href="#"><i class="bi bi-house-door-fill me-2"></i>Dashboard</a>

    <a href="#"><i class="bi bi-basket-fill me-2"></i>Products</a>

    <a href="#"><i class="bi bi-box-seam me-2"></i>My Orders</a>

    <a href="#"><i class="bi bi-heart-fill me-2"></i>Wishlist</a>
	 <div>
    <a href="./userProfile.jsp"><i class="bi bi-person-circle me-2"></i>Profile</a>
   
    <select
	class="form-control" name="profile" id="profile" onchange="toggleDepartment()">

	<!-- <option value="">Select </option> -->
	<option value="University">View Profile</option>
	<option value="Department">Update Profile</option>
</select>
</div>
    <a href="login.jsp"><i class="bi bi-box-arrow-right me-2"></i>Logout</a>
        </div>

        <!-- Main Content -->
        <div class="col-md-10 p-4">

            <!-- Welcome -->
            <h3>Welcome, User</h3>
            <p>Find fresh and organic products near you!</p>

            <!-- Search -->
            <input type="text" class="form-control mb-4" placeholder="Search products...">

            <!-- Products -->
            <div class="row">

                <!-- Product 1 -->
                <div class="col-md-3">
                    <div class="card p-2">
                        <img src="https://via.placeholder.com/150" class="card-img-top">
                        <div class="card-body">
                            <h6>Organic Apples</h6>
                            <p>₹120/kg</p>
                            <button class="btn btn-success btn-sm">Add to Cart</button>
                        </div>
                    </div>
                </div>

                <!-- Product 2 -->
                <div class="col-md-3">
                    <div class="card p-2">
                        <img src="https://via.placeholder.com/150" class="card-img-top">
                        <div class="card-body">
                            <h6>Fresh Milk</h6>
                            <p>₹50/L</p>
                            <button class="btn btn-success btn-sm">Add to Cart</button>
                        </div>
                    </div>
                </div>

                <!-- Product 3 -->
                <div class="col-md-3">
                    <div class="card p-2">
                        <img src="https://via.placeholder.com/150" class="card-img-top">
                        <div class="card-body">
                            <h6>Organic Spinach</h6>
                            <p>₹30/bunch</p>
                            <button class="btn btn-success btn-sm">Add to Cart</button>
                        </div>
                    </div>
                </div>

                <!-- Product 4 -->
                <div class="col-md-3">
                    <div class="card p-2">
                        <img src="https://via.placeholder.com/150" class="card-img-top">
                        <div class="card-body">
                            <h6>Tomatoes</h6>
                            <p>₹40/kg</p>
                            <button class="btn btn-success btn-sm">Add to Cart</button>
                        </div>
                    </div>
                </div>

                <!-- Product 5 -->
                <div class="col-md-3 mt-4">
                    <div class="card p-2">
                        <img src="https://via.placeholder.com/150" class="card-img-top">
                        <div class="card-body">
                            <h6>Bananas</h6>
                            <p>₹60/dozen</p>
                            <button class="btn btn-success btn-sm">Add to Cart</button>
                        </div>
                    </div>
                </div>

                <!-- Product 6 -->
                <div class="col-md-3 mt-4">
                    <div class="card p-2">
                        <img src="https://via.placeholder.com/150" class="card-img-top">
                        <div class="card-body">
                            <h6>Carrots</h6>
                            <p>₹35/kg</p>
                            <button class="btn btn-success btn-sm">Add to Cart</button>
                        </div>
                    </div>
                </div>

                <!-- Product 7 -->
                <div class="col-md-3 mt-4">
                    <div class="card p-2">
                        <img src="https://via.placeholder.com/150" class="card-img-top">
                        <div class="card-body">
                            <h6>Potatoes</h6>
                            <p>₹25/kg</p>
                            <button class="btn btn-success btn-sm">Add to Cart</button>
                        </div>
                    </div>
                </div>

                <!-- Product 8 -->
                <div class="col-md-3 mt-4">
                    <div class="card p-2">
                        <img src="https://via.placeholder.com/150" class="card-img-top">
                        <div class="card-body">
                            <h6>Organic Honey</h6>
                            <p>₹250/bottle</p>
                            <button class="btn btn-success btn-sm">Add to Cart</button>
                        </div>
                    </div>
                </div>

            </div>

        </div>
    </div>
</div>

</body>
</html>
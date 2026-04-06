<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Product | lmms</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600;700;800&display=swap" rel="stylesheet">
<link rel="stylesheet" href="../css/addproduct.css">
</head>
<body>
	 <!-- Navbar -->
    <nav class="navbar navbar-expand-lg navbar-custom fixed-top">
        <div class="container">
            <a class="navbar-brand" href="index.html">
                <i class="fas fa-seedling me-2"></i>FruitMarket Pro
            </a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
                <span class="navbar-toggler-icon"></span>
            </button>
        </div>
    </nav>

    <!-- Add Product Form -->
    <div class="form-container">
        <h2 class="form-title">Add New Product</h2>
        <form action="addProductController.jsp" method="POST">
            <div class="mb-3">
                <label for="product_id" class="form-label">Product ID</label>
                <input type="text" class="form-control" id="product_id" name="product_id" placeholder="Enter Product ID" required>
            </div>
            <div class="mb-3">
                <label for="product_id" class="form-label">Vendor ID</label>
                <input type="text" class="form-control" id="vendor_id" name="vendor_id" placeholder="Enter Vendor ID" required>
            </div>
           
            <div class="mb-3">
                <label for="product_name" class="form-label">Vendor Name</label>
                <input type="text" class="form-control" id="vendor_name" name="vendor_name" placeholder="Enter vendor Name" required>
            </div>
             <div class="mb-3">
                <label for="product_name" class="form-label">Product Name</label>
                <input type="text" class="form-control" id="product_name" name="product_name" placeholder="Enter Product Name" required>
            </div>
            <div class="mb-3">
                <label for="product_image" class="form-label">Product Image</label>
                <input type="file" class="form-control" id="product_image" name="product_image" value="null" accept="image/*" disabled>
                <input type="hidden" name="product_image" value="null">
            </div>
            <div class="mb-3">
                <label for="description" class="form-label">Description</label>
                <textarea class="form-control" id="description" name="description" rows="4" placeholder="Enter product description" required></textarea>
            </div>
            <div class="mb-3">
                <label for="price" class="form-label">Price (₹)</label>
                <input type="number" class="form-control" id="price" name="price" placeholder="Enter Price" step="0.01" required>
            </div>
            <div class="mb-3">
                <label for="quantity" class="form-label">Quantity</label>
                <input type="number" class="form-control" id="quantity" name="quantity" placeholder="Enter Quantity" required>
            </div>
            <div class="d-flex justify-content-between mt-4">
                <a href="index.html" class="btn btn-back">Back</a>
                <button type="submit" class="btn btn-add">Add Product</button>
            </div>
        </form>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
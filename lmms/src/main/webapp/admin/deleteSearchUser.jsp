<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Delete Search user | lmms</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600;700;800&display=swap"
	rel="stylesheet">

<style>
body {
	font-family: 'Poppins', sans-serif;
	background: linear-gradient(135deg, #ecfdf5, #d1fae5);
}

/* Navbar */
.navbar-custom {
	background: rgba(255, 255, 255, 0.95);
	box-shadow: 0 10px 40px rgba(16, 185, 129, 0.1);
}

.navbar-brand {
	font-weight: 700;
	color: #10b981;
}

/* Hero */
.search-hero {
	padding-top: 120px;
	padding-bottom: 60px;
	text-align: center;
}

.search-title {
	font-size: 2.5rem;
	font-weight: 700;
	color: #065f46;
}

.search-subtitle {
	color: #4b5563;
	margin-bottom: 30px;
}

/* Search Box */
.search-box {
	max-width: 600px;
	margin: auto;
}

.search-input {
	border-radius: 50px 0 0 50px;
	padding: 15px;
}

.search-btn {
	border-radius: 0 50px 50px 0;
	background: #10b981;
	color: white;
	padding: 15px 25px;
	border: none;
}

.search-btn:hover {
	background: #059669;
}

/* Results */
.results-section {
	padding: 40px 0;
}

.result-card {
	background: white;
	border-radius: 15px;
	padding: 20px;
	box-shadow: 0 10px 25px rgba(0, 0, 0, 0.08);
	transition: 0.3s;
}

.result-card:hover {
	transform: translateY(-5px);
}
</style>

</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-custom fixed-top">
		<div class="container">
			<a class="navbar-brand" href="home.jsp"> <i
				class="fas fa-seedling me-2"></i>FruitMarket Pro
			</a>
		</div>
	</nav>

	<!-- Search Hero -->
	<section class="search-hero">
		<div class="container">
			<h1 class="search-title">Search</h1>

			<!-- Search Form -->
			<form action="deleteuser.jsp" method="post">
				<div class="input-group search-box">
					<input type="text" name="user_id" class="form-control search-input"
						placeholder="Search for Users...">
					<a href="deleteuser.jsp"><button class="search-btn">
						<i class="fas fa-search"></i> Search
					</button></a>
				</div>
			</form>
		</div>
	</section>


	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>


</body>
</html>
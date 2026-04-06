<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>HOME | lmms</title>
 <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600;700;800&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="./css/home.css"/>

</head>
<body>
 <!-- Navigation - Part 2 -->
    <nav class="navbar navbar-expand-lg navbar-custom fixed-top">
        <div class="container">
            <a class="navbar-brand" href="#home">
                <i class="fas fa-seedling me-2"></i>FruitMarket Pro
            </a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ms-auto">
                    <li class="nav-item"><a class="nav-link" href="#home">HOME</a></li>
                    <li class="nav-item"><a class="nav-link" href="#services">SERVICES</a></li>
                    <li class="nav-item"><a class="nav-link" href="#about">ABOUT US</a></li>
                    <li class="nav-item"><a class="nav-link" href="#contact">CONTACT US</a></li>
                    <li class="nav-item"><a class="nav-link login-btn" href="./login.jsp">LOG IN</a></li>
                </ul>
            </div>
        </div>
    </nav>

    <!-- Hero Section - Part 1 -->
    <section id="home" class="hero-section">
        <div class="container">
            <div class="row align-items-center min-vh-100">
                <div class="col-lg-6">
                    <div class="logo-3d fade-in-up"></div>
                    <h1 class="hero-title fade-in-up">LOCAL FRUIT MARKET</h1>
                    <h1 class="hero-title fade-in-up" style="margin-top: -0.5rem;">MANAGEMENT SYSTEM</h1>
                    <p class="hero-subtitle fade-in-up">Fresh from farm to table. Advanced technology meets local tradition for perfect fruit management.</p>
                    <a href="#services" class="cta-btn fade-in-up">Discover Freshness</a>
                </div>
                <div class="col-lg-6 text-center">
                    <i class="fas fa-apple-alt fa-10x opacity-75" style="filter: drop-shadow(0 20px 40px rgba(0,0,0,0.3));"></i>
                </div>
            </div>
        </div>
    </section>

    <!-- Organic Fruits Section - Part 3 -->
    <section id="services" class="fruits-section">
        <div class="container">
            <div class="row mb-5">
                <div class="col-lg-8 mx-auto text-center">
                    <h2 class="section-title fade-in-up">Premium Organic Fruits</h2>
                    <p class="section-subtitle fade-in-up">Sourced locally, delivered fresh. Experience nature's finest selection with blockchain traceability.</p>
                </div>
            </div>
            <div class="row g-4">
                <div class="col-lg-4 col-md-6 fade-in-up">
                    <div class="fruit-card">
                        <img src="https://i.pinimg.com/1200x/24/db/8c/24db8c73db37fa6eebcfab81c885e30f.jpg" class="fruit-img w-100" alt="Organic Apples">
                        <div class="fruit-overlay">
                            <h3 class="fruit-title">Organic Apples</h3>
                            <p class="fruit-desc">Crisp, juicy Fuji apples from local orchards. Perfect for healthy snacking and baking.</p>
                            <div class="price-badge">₹89/kg</div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 fade-in-up">
                    <div class="fruit-card">
                        <img src="https://i.pinimg.com/736x/c9/f6/3d/c9f63ded9c92d50c8664f36f5db8e66f.jpg" class="fruit-img w-100" alt="Alphonso Mangoes">
                        <div class="fruit-overlay">
                            <h3 class="fruit-title">Alphonso Mangoes</h3>
                            <p class="fruit-desc">King of fruits from Ratnagiri. Sun-ripened perfection in every bite.</p>
                            <div class="price-badge">₹199/kg</div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 fade-in-up">
                    <div class="fruit-card">
                        <img src="https://i.pinimg.com/1200x/84/36/f1/8436f11efd3b42a1096d742f46e6750f.jpg" class="fruit-img w-100" alt="Fresh Bananas">
                        <div class="fruit-overlay">
                            <h3 class="fruit-title">Robusta Bananas</h3>
                            <p class="fruit-desc">Rich in potassium. Perfect daily energy boost from local farms.</p>
                            <div class="price-badge">₹49/dozen</div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- Footer -->
    <footer id="contact" class="footer">
        <div class="container">
            <div class="row">
                <div class="col-lg-4 mb-4">
                    <h4 class="footer-title">
                        <i class="fas fa-seedling me-2"></i>FruitMarket Pro
                    </h4>
                    <p>Your trusted partner for local fruit excellence. Freshness guaranteed from farm to market.</p>
                </div>
                <div class="col-lg-4 mb-4">
                    <h5 class="footer-title">Quick Links</h5>
                    <ul class="list-unstyled">
                        <li><a href="#home" class="footer-link">Home</a></li>
                        <li><a href="#services" class="footer-link">Services</a></li>
                        <li><a href="#about" class="footer-link">About Us</a></li>
                        <li><a href="#contact" class="footer-link">Contact</a></li>
                    </ul>
                </div>
                <div class="col-lg-4 mb-4">
                    <h5 class="footer-title">Contact Info</h5>
                    <p><i class="fas fa-phone me-2"></i>+91 98765 43210</p>
                    <p><i class="fas fa-envelope me-2"></i>info@fruitmarket.in</p>
                    <p><i class="fas fa-map-marker-alt me-2"></i>Hyderabad, Telangana</p>
                </div>
            </div>
            <hr class="border-light opacity-25">
            <div class="row align-items-center">
                <div class="col-md-6">
                    <p class="mb-0 opacity-75">&copy; 2026 Local Fruit Market Management System. All rights reserved.</p>
                </div>
                <div class="col-md-6 text-md-end">
                    <a href="#" class="text-light me-3 fs-4"><i class="fab fa-facebook-f"></i></a>
                    <a href="#" class="text-light me-3 fs-4"><i class="fab fa-twitter"></i></a>
                    <a href="#" class="text-light me-3 fs-4"><i class="fab fa-instagram"></i></a>
                    <a href="#" class="text-light fs-4"><i class="fab fa-linkedin"></i></a>
                </div>
            </div>
        </div>
    </footer>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
    <script>
        // Smooth scrolling
        document.querySelectorAll('a[href^="#"]').forEach(anchor => {
            anchor.addEventListener('click', function (e) {
                e.preventDefault();
                document.querySelector(this.getAttribute('href')).scrollIntoView({
                    behavior: 'smooth'
                });
            });
        });

        // Navbar scroll effect
        window.addEventListener('scroll', () => {
            const navbar = document.querySelector('.navbar-custom');
            if (window.scrollY > 100) {
                navbar.style.background = 'rgba(255, 255, 255, 0.98)';
                navbar.style.boxShadow = '0 15px 50px rgba(16, 185, 129, 0.15)';
            } else {
                navbar.style.background = 'rgba(255, 255, 255, 0.95)';
                navbar.style.boxShadow = '0 10px 40px rgba(16, 185, 129, 0.1)';
            }
        });

        // Scroll animations
        const observerOptions = {
            threshold: 0.1,
            rootMargin: '0px 0px -50px 0px'
        };

        const observer = new IntersectionObserver((entries) => {
            entries.forEach(entry => {
                if (entry.isIntersecting) {
                    entry.target.classList.add('visible');
                }
            });
        }, observerOptions);

        document.querySelectorAll('.fade-in-up').forEach(el => {
            observer.observe(el);
        });

        // 3D Logo interaction
        document.querySelector('.logo-3d').addEventListener('mouseenter', function() {
            this.style.animationDuration = '2s';
        });
        document.querySelector('.logo-3d').addEventListener('mouseleave', function() {
            this.style.animationDuration = '12s';
        });
    </script>


</body>
</html>
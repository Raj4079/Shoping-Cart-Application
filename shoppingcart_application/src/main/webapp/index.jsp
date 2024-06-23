<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Online Store</title>
    <!-- Bootstrap CSS -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome CSS -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" rel="stylesheet">
    <style>
        /* Custom CSS */
        .landing-page {
            text-align: center;
            margin-top: 200px;
            margin-right:50px;
            color:white;
        }
        @keyframes slide {
    	0% {
        transform: translateX(0);	
    	}
    	50% {
        transform: translateX(-5px);
    	}
    	100% {
        transform: translateX(0);
    	}
}


.landing-page h1 {
    animation: slide 2s infinite; 
}
        body
        {
        	 background-image: url('https://t3.ftcdn.net/jpg/01/17/33/22/240_F_117332203_ekwDZkViF6M3itApEFRIH4844XjJ7zEb.jpg');
            background-size: cover;
            background-repeat: no-repeat;
            background-attachment: scroll; /* Changed from fixed to scroll */
            background-position: center;
            filter: brightness(100%);
        }
        .login-section {
            display: flex;
            align-items: center;
           color:white;
        }
        .login-section .btn {
            margin-left: 10px;
            background-color: black;
        }
        .login-section .btn:hover{
        background-color: white;
        color: black;
        }
        .nav-item:hover{
        text-decoration: underline;
        }
        .footer {
            margin-top:200px;
            background-color:blue;
            color: white;
            padding: 5px 5px;
            text-align: center;
        }
        
    </style>
</head>
<body>
    <header>
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <a class="navbar-brand" href="#"><i class="fas fa-shopping-cart"></i> Online Store</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav"
                aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav mx-auto">
                    <li class="nav-item">
                        <a class="nav-link" href="#">Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">About Us</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Gallery</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Contact Us</a>
                    </li>
                </ul>
                <div class="login-section">
                    <a href="merchantloginform.jsp" class="btn btn-primary">Merchant Login</a>
                    <a href="customerloginform.jsp" class="btn btn-primary"><i class="fas fa-user"></i> Customer Login</a>
                    
                </div>
            </div>
        </nav>
    </header>
    
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-6">
                <div class="landing-page">
                    <h1>Welcome to our Online Store!</h1>
                    <p>Explore our wide range of products and enjoy convenient shopping.</p>
                    <a href="#" class="btn btn-info btn-lg">Shop Now</a>
                </div>
            </div>
        </div>
    </div>
    <div class="footer">
        <p>&copy; 2024 Online Store. All rights reserved.</p>
    </div>

    <!-- Bootstrap JS and Font Awesome JS -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>

<%@include file="connect.jsp" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <title>Makaan - Real Estate HTML Template</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="" name="keywords">
    <meta content="" name="description">

    <!-- Favicon -->
    <link href="img/favicon.ico" rel="icon">

    <!-- Google Web Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="css/swap.css" rel="stylesheet">
    
    <!-- Icon Font Stylesheet -->
    <link href="css/min.css" rel="stylesheet">
    <link href="css/icons.css" rel="stylesheet">

    <!-- Libraries Stylesheet -->
    <link href="lib/animate/animate.min.css" rel="stylesheet">
    <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">

    <!-- Customized Bootstrap Stylesheet -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Template Stylesheet -->
    <link href="css/style.css" rel="stylesheet">
</head>
<body>
    <div class="container-xxl bg-white p-0">
       

        <!-- Navbar Start -->
        <div class="container-fluid nav-bar bg-transparent">
            <nav class="navbar navbar-expand-lg bg-white navbar-light py-0 px-4">
                <a href="index.html" class="navbar-brand d-flex align-items-center text-center">
                    <div class="icon p-2 me-2">
                        <img class="img-fluid" src="img/icon-deal.png" alt="Icon" style="width: 30px; height: 30px;">
                    </div>
                    <h2 class="m-0 text-primary">Real-Estate</h2>
                </a>
                <button type="button" class="navbar-toggler" data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarCollapse">
                    <div class="navbar-nav ms-auto">
                        <a href="index.jsp" class="nav-item nav-link active">Home</a>
                        
                        <a href="about.jsp" class="nav-item nav-link">About</a>
                    
                         <div class="nav-item dropdown">
                            <a href="" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">PROPERTY</a>
                            <div class="dropdown-menu rounded-0 m-0">
                                 <% 
                         stmt1=conn.createStatement();
                         rs1=stmt1.executeQuery("select * from p_category");
                         while(rs1.next())
                         {
                         %>       
                         <a href="v_subcat.jsp?cat_id=<%=rs1.getInt(1)%>" class="dropdown-item"><%=rs1.getString(2)%></a>
                         <%
                          }
                         %></div>
                        </div>
                        
                        
                        <a href="contact.jsp" class="nav-item nav-link">Contact</a>
                        
                                                <a href="user_registration.jsp" class="nav-item nav-link">REGISTRATION</a>

                                                                    <a href="login.jsp" class="nav-item nav-link">LOG IN</a>

                    
                    
                    
                    </div>
                </div>
            </nav>
        </div>
        <!-- Navbar End -->



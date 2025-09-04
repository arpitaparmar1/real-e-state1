    <%@include file="connect.jsp" %>

<%
    int user_id=0;
    String username="";
    if(session.getAttribute("username")==null)
    {
        response.sendRedirect("index.jsp");
        
    }
    else
    {
        username=(String)session.getAttribute("username");
        stmt0=conn.createStatement();
        rs0=stmt0.executeQuery("select * from user_master where user_email='"+username+"'");
        if(rs0.next())
        {
            user_id=rs0.getInt(1);
        }
        
    }
    %>
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
    <link href="https://fonts.googleapis.com/css2?family=Heebo:wght@400;500;600&family=Inter:wght@700;800&display=swap" rel="stylesheet">
    
    <!-- Icon Font Stylesheet -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">

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
                        <a href="index.html" class="nav-item nav-link active">Home</a>
                        
                        <a href="about_r.jsp" class="nav-item nav-link">About</a>
                    
                         <div class="nav-item dropdown">
                            <a href="" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">PROPERTY</a>
                            <div class="dropdown-menu rounded-0 m-0">
                                 <% 
                         stmt1=conn.createStatement();
                         rs1=stmt1.executeQuery("select * from p_category");
                         while(rs1.next())
                         {
                         %>       
                         <a href="r_subcat.jsp?cat_id=<%=rs1.getInt(1)%>" class="dropdown-item"><%=rs1.getString(2)%></a>
                         <%
                          }
                         %></div>
                        </div>
                        
                       
                        
                        <div class="nav-item dropdown">
                            <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">POST PROPERTY</a>
                            <div class="dropdown-menu rounded-0 m-0">
                                <a href="rent_view.jsp" class="dropdown-item">RENT</a>
                                <a href="sell_view.jsp" class="dropdown-item">SELL</a>
                            </div>
                        </div>
                        
                        <div class="nav-item dropdown">
                            <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">BOOKING</a>
                            <div class="dropdown-menu rounded-0 m-0">
                                <a href="property-list.html" class="dropdown-item">RENT BOOKING</a>
                                <a href="property-type.html" class="dropdown-item">SELLER BOOKING</a>
                            </div>
                        </div>
                        
                         <a href="contact.html" class="nav-item nav-link">Contact</a>
                        

                                                                    <a href="index.jsp" class="nav-item nav-link">LOG OUT</a>

                    
                    
                    
                    </div>
                </div>
            </nav>
        </div>
        <!-- Navbar End -->



<%@include file="header.jsp" %>
<%@include file="connect.jsp" %>
    <link rel="stylesheet" href="dashboard.css">

<div class="content-wrapper">
    <div class="container">
        <div class="row pad-botm">
            <div class="col-md-12">
                <center><h4 class="header-line">ADMIN DASHBOARD</h4></center>
                <div class="container">
    <div class="row">
        <div class="col-lg-3 col-sm-6">
            <div class="card-box bg-blue">
                <div class="inner">
                    <%
                      stmt1=conn.createStatement();
                    rs1=stmt1.executeQuery("select count(*)from p_category");
                    if(rs1.next())
                    {
                        out.println("<h3>"+rs1.getInt(1)+"</h3>");
                    }
                    

                    %>
                    
                    <p>CATEGORY</p>
                </div>
                <div class="icon">
                    <i class="fa fa-graduation-cap" aria-hidden="true"></i>
                </div>
                <a href="p_category_view.jsp" class="card-box-footer">View More <i class="fa fa-arrow-circle-right"></i></a>
            </div>
        </div>

        <div class="col-lg-3 col-sm-6">
            <div class="card-box bg-green">
                <div class="inner">
                    <%
                      stmt1=conn.createStatement();
                    rs1=stmt1.executeQuery("select count(*)from p_sub_category");
                    if(rs1.next())
                    {
                        out.println("<h3>"+rs1.getInt(1)+"</h3>");
                    }
                    

                    %>
                    
                    <p> SUB CATEGORY</p>

                    
                </div>
                <div class="icon">
                    <i class="fa fa-money" aria-hidden="true"></i>
                </div>
                <a href="p_sub_category_view.jsp" class="card-box-footer">View More <i class="fa fa-arrow-circle-right"></i></a>
            </div>
        </div>
        <div class="col-lg-3 col-sm-6">
            <div class="card-box bg-orange">
                <div class="inner">
                    <%
                      stmt1=conn.createStatement();
                    rs1=stmt1.executeQuery("select count(*)from p_rent_details");
                    if(rs1.next())
                    {
                        out.println("<h3>"+rs1.getInt(1)+"</h3>");
                    }
                    

                    %>
                    
                    <p> RENT PROPERTY</p>

                </div>
                <div class="icon">
                    <i class="fa fa-users"></i>
                </div>
                <a href="p_rent_view.jsp" class="card-box-footer">View More <i class="fa fa-arrow-circle-right"></i></a>
            </div>
        </div>
        <div class="col-lg-3 col-sm-6">
            <div class="card-box bg-red">
                <div class="inner">
                    <%
                      stmt1=conn.createStatement();
                    rs1=stmt1.executeQuery("select count(*)from p_sell_details");
                    if(rs1.next())
                    {
                        out.println("<h3>"+rs1.getInt(1)+"</h3>");
                    }
                    

                    %>
                    
                    <p> SELL PROPERTY</p>

                </div>
                <div class="icon">
                    <i class="fa fa-users"></i>
                </div>
                <a href="p_sell_view.jsp" class="card-box-footer">View More <i class="fa fa-arrow-circle-right"></i></a>
            </div>
        </div>
                    
                    
                    

    </div>
    
             <div class="row">
        <div class="col-lg-3 col-sm-6">
            <div class="card-box bg-blue">
                <div class="inner">
                    <%
                      stmt1=conn.createStatement();
                    rs1=stmt1.executeQuery("select count(*)from admin_login");
                    if(rs1.next())
                    {
                        out.println("<h3>"+rs1.getInt(1)+"</h3>");
                    }
                    

                    %>
                    
                    <p>ADMIN</p>
                </div>
                <div class="icon">
                    <i class="fa fa-graduation-cap" aria-hidden="true"></i>
                </div>
                <a href="admin_home.jsp" class="card-box-footer">View More <i class="fa fa-arrow-circle-right"></i></a>
            </div>
        </div>

        <div class="col-lg-3 col-sm-6">
            <div class="card-box bg-green">
                <div class="inner">
                    <%
                      stmt1=conn.createStatement();
                    rs1=stmt1.executeQuery("select count(*)from user_master");
                    if(rs1.next())
                    {
                        out.println("<h3>"+rs1.getInt(1)+"</h3>");
                    }
                    

                    %>
                    
                    <p> USER</p>

                    
                </div>
                <div class="icon">
                    <i class="fa fa-money" aria-hidden="true"></i>
                </div>
                <a href="user_master_view.jsp" class="card-box-footer">View More <i class="fa fa-arrow-circle-right"></i></a>
            </div>
        </div>
        <div class="col-lg-3 col-sm-6">
            <div class="card-box bg-orange">
                <div class="inner">
                    <%
                      stmt1=conn.createStatement();
                    rs1=stmt1.executeQuery("select count(*)from booking_rent_master");
                    if(rs1.next())
                    {
                        out.println("<h3>"+rs1.getInt(1)+"</h3>");
                    }
                    

                    %>
                    
                    <p>BOOKING RENT PROPERTY</p>

                </div>
                <div class="icon">
                    <i class="fa fa-users"></i>
                </div>
                <a href="booking_rent_master_view.jsp" class="card-box-footer">View More <i class="fa fa-arrow-circle-right"></i></a>
            </div>
        </div>
        <div class="col-lg-3 col-sm-6">
            <div class="card-box bg-red">
                <div class="inner">
                    <%
                      stmt1=conn.createStatement();
                    rs1=stmt1.executeQuery("select count(*)from booking_sell_master");
                    if(rs1.next())
                    {
                        out.println("<h3>"+rs1.getInt(1)+"</h3>");
                    }
                    

                    %>
                    
                    <p>BOOKING SELL PROPERTY</p>

                </div>
                <div class="icon">
                    <i class="fa fa-users"></i>
                </div>
                <a href="booking_sell_master_view.jsp" class="card-box-footer">View More <i class="fa fa-arrow-circle-right"></i></a>
            </div>
        </div>
    </div>
    
                    <div class="row">
                        <div class="col-lg-3 col-sm-6" style="margin-left: 294px">
                            
                            
            <div class="card-box bg-green">
                <div class="inner">
                    <%
                      stmt1=conn.createStatement();
                    rs1=stmt1.executeQuery("select count(*)from feedback_rent_master");
                    if(rs1.next())
                    {
                        out.println("<h3>"+rs1.getInt(1)+"</h3>");
                    }
                    

                    %>
                    
                    <p>FEEDBACK RENT PROPERTY</p>

                </div>
                <div class="icon">
                    <i class="fa fa-users"></i>
                </div>
                <a href="feedback_rent_master_view.jsp" class="card-box-footer">View More <i class="fa fa-arrow-circle-right"></i></a>
            </div>
        </div>
                    
                    
                    
                    <div class="col-lg-3 col-sm-6">
            <div class="card-box bg-orange">
                <div class="inner">
                    <%
                      stmt1=conn.createStatement();
                    rs1=stmt1.executeQuery("select count(*)from feedback_sell_master");
                    if(rs1.next())
                    {
                        out.println("<h3>"+rs1.getInt(1)+"</h3>");
                    }
                    

                    %>
                    
                    <p>FEEDBACK SELL PROPERTY</p>

                </div>
                <div class="icon">
                    <i class="fa fa-users"></i>
                </div>
                <a href="feedback_sell_master_view.jsp" class="card-box-footer">View More <i class="fa fa-arrow-circle-right"></i></a>
            </div>
        </div>
                        
                    </div> 
                    
</div>


                
            </div>
            
            
        </div>
        
    </div>
    
</div>


<%@include file="footer.jsp" %>



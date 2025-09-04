<%@include file="header.jsp" %>


        <!-- Property List Start -->
        <div class="container-xxl py-5">
            <div class="container">
                <div class="row g-0 gx-5">
                    <div class="col-lg-6">
                        <div class="text-start mx-auto mb-5 wow slideInLeft" data-wow-delay="0.1s">
                            <h1 style="margin-left: 20px;" class="mb-3">Properties</h1>
                        </div>
                    </div>
                    <div class="col-lg-6 text-start text-lg-end wow slideInRight" data-wow-delay="0.1s">
                        <ul class="nav nav-pills d-inline-flex justify-content-end mb-5">
                            <li class="nav-item me-2">
                                <a class="btn btn-outline-primary active" data-bs-toggle="pill" href="#tab-1">For Sell</a>
                            </li>
                            <li class="nav-item me-0">
                                <a class="btn btn-outline-primary" data-bs-toggle="pill" href="#tab-2">For Rent</a>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="tab-content">
                    <div id="tab-1" class="tab-pane fade show p-0 active">
                        <div class="row g-4">
                            <%
                        int p_sub_id=Integer.parseInt(request.getParameter("sub_cat_id"));
                        stmt1=conn.createStatement();
                        rs1=stmt1.executeQuery("select * from p_sell_details where p_sub_id='"+p_sub_id+"'");

                        while(rs1.next())
                        {

                    %>
                    
                           
                            <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.5s">
                                <a href="v_more_details.jsp?ps_id=<%=rs1.getInt(1)%>">
                                <div class="property-item rounded overflow-hidden">
                                    <div class="position-relative overflow-hidden">
                                    <img style="width:400px;height: 200px;" class="img-fluid" src="http://localhost:8080/user_panel/image/<%=rs1.getString(11)%>" alt="Icon">
                                        <div class="bg-primary rounded text-white position-absolute start-0 top-0 m-4 py-1 px-3">For Sell</div>
                                    </div>
                                    <div class="p-4 pb-0">
                                <h5><%=rs1.getString(2)%></h5>
                                                                <h6><%=rs1.getString(6)%></h6>

                                    </div>
                                    <div class="d-flex border-top">
                                        <small class="flex-fill text-center border-end py-2"><i class="fa fa-ruler-combined text-primary me-2"></i><h6><%=rs1.getString(10)%></h6> </small>
                                        </div>
                                </div>
                                </a>
                            </div>
                                         <%
                        }
                    %>
                            
                        </div>
                    </div>
                   
                    <div id="tab-2" class="tab-pane fade show p-0 active">
                        <div class="row g-4">
                            <%
                        stmt1=conn.createStatement();
                        rs1=stmt1.executeQuery("select * from p_rent_details where p_sub_id='"+p_sub_id+"'");

                        while(rs1.next())
                        {

                    %>
                    
                           
                            <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.5s">
                                <a href="v_more_details.jsp?pr_id=<%=rs1.getInt(1)%>">
                                <div class="property-item rounded overflow-hidden">
                                    <div class="position-relative overflow-hidden">
                                    <img style="width:400px;height: 200px;" class="img-fluid" src="http://localhost:8080/user_panel/image/<%=rs1.getString(11)%>" alt="Icon">
                                        <div class="bg-primary rounded text-white position-absolute start-0 top-0 m-4 py-1 px-3">For Rent</div>
                                    </div>
                                    <div class="p-4 pb-0">
                                <h5><%=rs1.getString(2)%></h5>
                                                                <h6><%=rs1.getString(6)%></h6>

                                        <p><i class="fa fa-map-marker-alt text-primary me-2"></i><h6><%=rs1.getString(5)%></h6></p>
                                    </div>
                                    <div class="d-flex border-top">
                                        <small class="flex-fill text-center border-end py-2"><i class="fa fa-ruler-combined text-primary me-2"></i><h6><%=rs1.getString(10)%></h6> </small>
                                        </div>
                                </div>
                                </a>
                            </div>
                                         <%
                        }
                    %>
                            
                        </div>
                    </div>
                            
                            
                            
                           
        </div>
            </div>
        </div>
                            
        <!-- Property List End -->
<%@include file="footer.jsp" %>
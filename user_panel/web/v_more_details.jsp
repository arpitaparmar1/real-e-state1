<%@include file="header.jsp" %>


        <!-- Call to Action Start -->
        <div class="container-xxl py-5">
            <div class="container">
                <div class="text-center mx-auto mb-5 wow fadeInUp" data-wow-delay="0.1s" style="max-width: 600px;">
                    <h1 class="mb-3">Property Details</h1>
                </div>
                <div class="bg-light rounded p-3">
                     <%
                         if(request.getParameter("ps_id")!=null)
                         {
                             int ps_id=Integer.parseInt(request.getParameter("ps_id"));
                             stmt1=conn.createStatement();
                             rs1=stmt1.executeQuery("select * from p_sell_details where ps_id='"+ps_id+"'");
                         }
                         if(request.getParameter("pr_id")!=null)
                         {
                             int pr_id=Integer.parseInt(request.getParameter("pr_id"));
                             stmt1=conn.createStatement();
                             rs1=stmt1.executeQuery("select * from p_rent_details where pr_id='"+pr_id+"'");
                         }
                         while(rs1.next())
                         {
                     %>
                    
                    
                    <div class="bg-white rounded p-4" style="border: 1px dashed rgba(0, 185, 142, .3)">
                        <div class="row g-5 align-items-center">
                            <div class="col-lg-6 wow fadeIn" data-wow-delay="0.1s">
                                <img class="img-fluid rounded w-100" src="http://localhost:8080/user_panel/image/<%=rs1.getString(11)%>" alt="">
                            </div>
                            <div class="col-lg-6 wow fadeIn" data-wow-delay="0.5s">
                                <div class="mb-4">
                                    <h1 class="mb-3"><%=rs1.getString(2)%></h1>
                                    <p><b>CITY: </b><%=rs1.getString(6)%></p>
                                      <p><b>ADDRESS: </b><%=rs1.getString(5)%></p>

                                    <p><b>AMOUNT/RENT: </b><%=rs1.getString(7)%></p>
                                    <p><b>DESCRIPTION: </b><%=rs1.getString(9)%></p>
                                    <p><b>SIZE: </b><%=rs1.getString(10)%></p>

                                </div>
                                <a href="" class="btn btn-primary py-3 px-4 me-2"><i class="fa fa-phone-alt me-2"></i>Make A Call</a>
                                <a href="login.jsp" class="btn btn-dark py-3 px-4"><i class="fa fa-calendar-alt me-2"></i>Get Appoinment</a>
                            </div>
                        </div>
                    </div>
                     <%
                      }
                     %>    
                    
                </div>
            </div>
        </div>
        <!-- Call to Action End -->
        

<%@include file="footer.jsp" %>
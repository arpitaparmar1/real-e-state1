<%@include file="rheader.jsp" %>


        <!-- Call to Action Start -->
        <div class="container-xxl py-5">
            <div class="container">
                <div class="text-center mx-auto mb-5 wow fadeInUp" data-wow-delay="0.1s" style="max-width: 600px;">
                    <h1 class="mb-3">Property Details</h1>
                </div>
                <div class="bg-light rounded p-3">
                     <%
                         int ps_id=0;
                         int pr_id=0;
                         if(request.getParameter("ps_id")!=null)
                         {
                             ps_id=Integer.parseInt(request.getParameter("ps_id"));
                             stmt1=conn.createStatement();
                             rs1=stmt1.executeQuery("select * from p_sell_details where ps_id='"+ps_id+"'");
                         }
                         
                         if(request.getParameter("pr_id")!=null)
                         {
                             pr_id=Integer.parseInt(request.getParameter("pr_id"));
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
                                    <form action="booking_code.jsp" method="post">
                                    <%
                                    if(request.getParameter("ps_id")!=null)
                                    {
                                    %>
                                    <input type="text" name="ps_id" value="<%=ps_id%>">
                                    <%
                                    }
                                    %>
                                    <%
                                    if(request.getParameter("pr_id")!=null)
                                    {
                                    %>
                                    <input type="text" name="pr_id" value="<%=pr_id%>">
                                    <%
                                    }
                                    %>
                                 <input type="text" name="user_id" value="<%=user_id%>">    
                                 <button class="btn btn-dark py-3 px-4"><i class="fa fa-calendar-alt me-2"></i>Booking</button>
                                    
                                        
                                    </p>
                                    
                                    </form>    
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
        
<div class="container-xxl py-5">
            <div class="container">
                <div class="text-center mx-auto mb-5 wow fadeInUp" data-wow-delay="0.1s" style="max-width: 600px;">
                    <hr>                    
                    <h3 class="mb-3" >Please let us know how your like our website??</h3>
                    <hr>
                </div>
                <div class="row g-4">
                    
                    <%
                    if(request.getParameter("ps_id")!=null)
                         {
                    %>         
                    <div class="col-md-12">
                        <div class="wow fadeInUp" data-wow-delay="0.5s">
                            <form action="feedback_sell_code.jsp" method="post">
                                    <div class="row g-3">
                                   <div class="col-12">
                                        <div class="form-floating">
                                            <textarea class="form-control" placeholder="Leave a message here" id="comment" name="feedback_msg" style="height: 150px"></textarea>
                                            <input type="hidden" name="user_id" value="<%=user_id%>"></input>
                                            <input type="hidden" name="ps_id" value="<%=ps_id%>"></input>
                                                     
                                            <label for="message">Please Enter Your Feedback</label>
                                        </div>
                                    </div>
                                    <div class="col-12">
                                        <button class="btn btn-primary w-100 py-3" type="submit">SUBMIT</button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                        <%
                        }
                        %>
                        
                    <%
                    if(request.getParameter("pr_id")!=null)
                         {
                    %>         
                    <div class="col-md-12">
                        <div class="wow fadeInUp" data-wow-delay="0.5s">
                            <form action="feedback_rent_code.jsp" method="post">
                                    <div class="row g-3">
                                   <div class="col-12">
                                        <div class="form-floating">
                                            <textarea class="form-control" placeholder="Leave a message here" id="comment" name="feedback_msg" style="height: 150px"></textarea>
                                            <input type="hidden" name="user_id" value="<%=user_id%>"></input>
                                            <input type="hidden" name="pr_id" value="<%=pr_id%>"></input>
                                            
                                            <label for="message">Please Enter Your Feedback</label>
                                        </div>
                                    </div>
                                    <div class="col-12">
                                        <button class="btn btn-primary w-100 py-3" type="submit">SUBMIT</button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                        <%
                        }
                        %>    
                </div>
            </div>
        </div>
        
         <div class="container-xxl py-5">
            <div class="container">
                <div class="text-center mx-auto mb-5 wow fadeInUp" data-wow-delay="0.1s" style="max-width: 600px;">
                    <hr>
                    <h3 class="mb-3">Our Clients Say!</h3>
                    <hr>
                </div>
                <%
                    
                    if(request.getParameter("pr_id")!=null)
                    {
                    stmt1=conn.createStatement();
                    rs1=stmt1.executeQuery("select * from feedback_rent_master where pr_id='"+pr_id+"'");
                    }
                    if(request.getParameter("ps_id")!=null)
                    {
                    stmt1=conn.createStatement();
                    rs1=stmt1.executeQuery("select * from feedback_sell_master where ps_id='"+ps_id+"'");
                    }
                    
                    
                    while(rs1.next())
                    {
                        %>
                    <div class="" data-wow-delay="0.1s">
                    <div class="testimonial-item bg-light rounded p-3">
                        <div class="bg-white border rounded p-4">
                            <small><b><%=rs1.getString(3) %></b></small>
                            <p><%=rs1.getString(2) %></p>
                            <div class="d-flex align-items-center">
                                <div class="ps-3">
                                    <p class="fw-bold mb-1">
                                        <%
                                         pstmt1=conn.prepareStatement("select * from user_master where user_id=?");
                                         pstmt1.setInt(1,user_id);
                                         rs2=pstmt1.executeQuery();
                                         while(rs2.next())
                                         {
                                             out.println(""+rs2.getString(2));
                                         }
                                     

                                         %>
                                        
                                        
                                    </p>
                                    
                                    
                                </div>
                            </div>
                        </div>
                    </div>   
                </div>
                   
               
                                    <%
                                        }
                                        %>
            </div>
        </div>
<%@include file="footer.jsp" %>
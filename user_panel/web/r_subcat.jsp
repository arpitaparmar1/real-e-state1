<%@include file="rheader.jsp" %>

<!-- Category Start -->
        <div class="container-xxl py-5">
            <div class="container">
                <div class="text-center mx-auto mb-5 wow fadeInUp" data-wow-delay="0.1s" style="max-width: 600px;">
                    <h1 class="mb-3">Property Types</h1>
                </div>
                
                <div class="row g-4">
                    
                    <%
                        int cat_id=Integer.parseInt(request.getParameter("cat_id"));
                        stmt1=conn.createStatement();
                        rs1=stmt1.executeQuery("select * from p_sub_category where p_cat_id='"+cat_id+"'");
                        while(rs1.next())
                        {

                    %>
 
                    <div class="col-lg-3 col-sm-6 wow fadeInUp" data-wow-delay="0.1s">
                        <a class="cat-item d-block bg-light text-center rounded p-3" href="r_details.jsp?sub_cat_id=<%=rs1.getInt(1)%>">
                            <div class="rounded p-4">
                                <div class="icon mb-3">
                                    <img style="width:200px;height: 200px;" class="img-fluid" src="http://localhost:8080/rp/sub_image/<%=rs1.getString(5)%>" alt="Icon">
                                </div>
                                <h6><%=rs1.getString(2)%></h6>
                            </div>
                        </a>
                    </div>

                                
                    <%
                        }
                    %>
                    
                </div>
            </div>
        </div>
        <!-- Category End -->

<%@include file="footer.jsp" %>
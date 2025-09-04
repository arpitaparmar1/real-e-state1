<%@include file="header.jsp" %>
<!-- Contact Start -->
        <div class="container-xxl py-5">
            <div class="container">
                <div class="text-center mx-auto mb-5 wow fadeInUp" data-wow-delay="0.1s" style="max-width: 600px;">
                    <h4 class="mb-3"> ENTER YOUR PROPERTY INFORMATION</h4>
                </div>
                <div class="row g-4">
                    
                    
                    <div class="col-md-12">
                        <div class="wow fadeInUp" data-wow-delay="0.5s">
                            <form action="sell_insert_code.jsp" method="post" enctype="multipart/form-data">
                                    <div class="row g-3">
                                    <div class="col-md-12">
                                        <div class="form-floating">
                                            <input type="text" class="form-control" name="ps_name" placeholder="Your Name">
                                            <label for="name">Your Name</label>
                                        </div>
                                    </div>
                                    
                                    <div class="col-md-12">
                                        <div class="form-floating">
                                           <select class="form-control" name="p_cat_id" >
                                             <option>Select Category</option>
                                          
                                               <% 
                                            stmt1=conn.createStatement();
                                            rs1=stmt1.executeQuery("select * from p_category");
                                            while(rs1.next())
                                            {
                                               %>
                                              
                                               <option value="<%=rs1.getInt("p_cat_id")%>"><%=rs1.getString("p_cat_name")%></option>
                                            <%
                                               }
                                             %>
                                  </select>

                                        </div>
                                    </div>
                                    <div class="col-md-12">
                                        <div class="form-floating">
                                            <select class="form-control" name="p_sub_id">
                                       <option>Select SUB Category</option>

                                            <% 
                                            stmt1=conn.createStatement();
                                            rs1=stmt1.executeQuery("select * from p_sub_category");
                                            while(rs1.next())
                                            {
                                               %>
                                              
                                               <option value="<%=rs1.getInt("p_sub_id")%>"><%=rs1.getString("p_sub_name")%></option>
                                            <%
                                               }
                                             %>
                                  </select>

                                        </div>
                                    </div>
                                   <div class="col-12">
                                        <div class="form-floating">
                                            <textarea class="form-control" placeholder="Leave a address here" name="ps_address" style="height: 150px"></textarea>
                                            <label for="message">Enter address</label>
                                        </div>
                                    </div>
                                     <div class="col-md-12">
                                        <div class="form-floating">
                                            <input type="text" class="form-control" name="ps_city" placeholder="Your Name">
                                            <label for="name">Enter City</label>
                                        </div>
                                    </div>
                                     <div class="col-md-12">
                                        <div class="form-floating">
                                            <input type="text" class="form-control" name="ps_amount" placeholder="Your Name">
                                            <label for="name">Enter Amount</label>
                                        </div>
                                    </div>
                                     <div class="col-md-12">
                                        <div class="form-floating">
                                            <input type="text" class="form-control" name="user_id" placeholder="Your Name">
                                            <label for="name">User Id</label>
                                        </div>
                                    </div>
                                     <div class="col-md-12">
                                        <div class="form-floating">
                                            <textarea class="form-control" placeholder="Leave a mes here" name="ps_des" style="height: 150px"></textarea>
                                            <label for="message">Enter Description</label>
                                        </div>
                                    </div>
                                     <div class="col-md-12">
                                        <div class="form-floating">
                                            <input type="text" class="form-control" name="ps_size" placeholder="Your Name">
                                            <label for="name">Enter Size</label>
                                        </div>
                                    </div>
                                     <div class="col-md-12">
                                        <div class="form-floating">
                                            <input type="file" class="form-control" name="ps_photo" placeholder="Your Name">
                                            <label for="name">Select Photo</label>
                                        </div>
                                    </div>
                                    
                                    <div class="col-12">
                                        <button class="btn btn-primary w-100 py-3" type="submit">Send Message</button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Contact End -->
        <%@include file="footer.jsp" %>


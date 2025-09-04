<%@include file="rheader.jsp" %>
<!-- Contact Start -->
<%
    int ps_id=Integer.parseInt(request.getParameter("ps_id"));
    pstmt1=conn.prepareStatement("select * from p_sell_details where ps_id=?");
    pstmt1.setInt(1,ps_id);
    rs2=pstmt1.executeQuery();
   %>
        <div class="container-xxl py-5">
            <div class="container">
                <div class="text-center mx-auto mb-5 wow fadeInUp" data-wow-delay="0.1s" style="max-width: 600px;">
                    <h4 class="mb-3"> ENTER YOUR PROPERTY INFORMATION</h4>
                </div>
                <div class="row g-4">
                    
                    
                    <div class="col-md-12">
                        <div class="wow fadeInUp" data-wow-delay="0.5s">
                            <form action="edit_sell_code.jsp" method="post" enctype="multipart/form-data">
                                <%
                                while(rs2.next())
                                {
                                %>    
                                <div class="row g-3">
                                    <div class="col-md-12">
                                        <div class="form-floating">
                                            <input type="hidden" name="ps_id" value="<%=ps_id%> ">
                                            
                                            
                                            <input class="form-control" value="<%=rs2.getString(2)%>" type="text" name="ps_name" required/>
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
                                    <div class="col-md-12">
                                        <div class="form-floating">
                                            <textarea class="form-control" placeholder="Leave a mes here" name="ps_address" style="height: 150px"><%=rs2.getString(5)%></textarea>
                                            <label for="message">Enter Address</label>
                                        </div>
                                        
                                    </div>
                                     <div class="col-md-12">
                                        <div class="form-floating">
                                            <input type="text" class="form-control" name="ps_city" placeholder="Your Name" value="<%=rs2.getString(6)%>">
                                            <label for="name">Enter City</label>
                                        </div>
                                    </div>
                                     <div class="col-md-12">
                                        <div class="form-floating">
                                            <input type="text" class="form-control" name="ps_amount" placeholder="Your Name" value="<%=rs2.getString(7)%>">
                                                                                    <label for="name">Enter rent</label>

                                                   </div>
                                        
                                    </div>
                                     <div class="col-md-12">
                                        <div class="form-floating">
                                            <input type="text" class="form-control" name="user_id" placeholder="Your Name" value="<%=rs2.getInt(8)%>">
                                            <label for="name">User Id</label>
                                        </div>
                                    </div>
                                            <div class="col-md-12">
                                        <div class="form-floating">
                                            <textarea class="form-control" placeholder="Leave a mes here" name="ps_des" style="height: 150px"><%=rs2.getString(9)%></textarea>
                                            <label for="message">Enter Description</label>
                                        </div>
                                        
                                    </div>
                                     
                                     <div class="col-md-12">
                                        <div class="form-floating">
                                            <input type="text" class="form-control" name="ps_size" placeholder="Your Name" value="<%=rs2.getString(10)%>">
                                            <label for="name">Enter Size</label>
                                        </div>
                                    </div>
                                     <div class="col-md-12">
                                        <div class="form-floating">
                                             <input type="hidden" name="old_photo" value="<%=rs2.getString(11)%>">
                                    <img  width="100px" height="100px" src="http://localhost:8080/user_panel/image/<%=rs2.getString(11)%>">
                                    <input class="form-control" type="file" name="pr_photo"/><br>
                                            
                                        </div>
                                    </div>
                                  
                                    
                                     <%
                                    }
                                  %> 
                                   
                                   
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

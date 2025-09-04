<%@include file="rheader.jsp"%>
<script>
    function deletedata(br_id)
    {
        if(confirm("Do You Really Want To Delete This Record?"))
        {
            window.location.href="booking_rent_master.jsp?br_id="+br_id;
        }
    }
    
</script>
<%
    if(request.getParameter("br_id")!=null)
    {
        
        int fd_id=Integer.parseInt(request.getParameter("br_id"));
        pstmt1=conn.prepareStatement("delete from booking_rent_master where br_id=?");
        pstmt1.setInt(1,fd_id);
        pstmt1.executeUpdate();
    }
    
   %>


<div class="content-wrapper">
         <div class="container">
        <div class="row pad-botm">
            <div class="col-md-12">
                <center><h4 class="header-line" style="margin-top: 50px; margin-bottom: 50px;">BOOKING RENT VIEW</h4></center>
                
                   </div>
            <div class="col-lg-12">
                <table class="table table-bordered">
                    <tr>
                        <th> ID</th>
                        <th>PROPERTY</th>
                         <th>PROPERTY NAME</th>

                        <th>DATE</th>
                        <th>CANCLE BOOKING</th>
                    </tr>
                    <%
                        stmt1=conn.createStatement();
                        rs1=stmt1.executeQuery("select *from booking_rent_master");
                        while(rs1.next())
                        {
                            int br_id1=rs1.getInt(1);
                            

                         %>
                         <tr>
                         <td><%=br_id1%></td>
                          
                          
                             <%
                                 
                                int pr_id=rs1.getInt(3);
                                pstmt1=conn.prepareStatement("select * from p_rent_details where pr_id=?");
                                pstmt1.setInt(1,pr_id);
                                rs2=pstmt1.executeQuery();
                                
                                while(rs2.next())
                                {
                                   
                               %>     
                                    
                               <td><img style="width:400px;height: 200px;" class="img-fluid" src="http://localhost:8080/user_panel/image/<%=rs2.getString(11)%>" alt="Icon"></td>
                                  
                               <td><%=rs2.getString(2)%></td>
                                  <%
                                }   
                                
                             %>
                             
                            </td>
                                  
                            
                                                     
                         
                                
                             
                             
                             
                             
                                                          <td><%=rs1.getString(4)%></td>

                             
                                                         
                       
                       <td><button onclick="deletedata(<%=rs1.getInt(1)%>)" class="btn btn-danger">CANCLE BOOKING</button></td>
                         </tr>
                         <%      
                          }
                        %>

                </table>
                        
                        </div>
                        
        </div>
                        
         </div>
</div>
                        <%@include file="footer.jsp" %>                        
                        
             
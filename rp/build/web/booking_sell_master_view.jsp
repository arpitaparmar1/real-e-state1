<%@include file="connect.jsp"%>
<%@include file="header.jsp"%>
<script>
    function deletedata(bs_id)
    {
        if(confirm("Do You Really Want To Delete This Record?"))
        {
            window.location.href="booking_sell_master_view.jsp?bs_id="+bs_id;
        }
    }
    
</script>
<%
    if(request.getParameter("bs_id")!=null)
    {
        int br_id=Integer.parseInt(request.getParameter("bs_id"));
        pstmt1=conn.prepareStatement("delete from booking_sell_master where bs_id=?");
        pstmt1.setInt(1,br_id);
        pstmt1.executeUpdate();
    }
    
   %>
<div class="content-wrapper">
         <div class="container">
        <div class="row pad-botm">
            <div class="col-md-12">
                <center><h4 class="header-line">BOOKING SELL VIEW</h4></center>
                
                
                
                   </div>
            <div class="col-lg-12">
                <table class="table table-bordered">
                    <tr>
                        <th>BOOKING SELL ID</th>
                         <th>USER ID</th>
                        <th>PROPERTY SELL ID</th>
                         <th>SEEL DATE</th>
                          
                    </tr>
                    <%
                        stmt1=conn.createStatement();
                        rs1=stmt1.executeQuery("select *from booking_sell_master");
                        while(rs1.next())
                        {
                            int bs_id1=rs1.getInt(1);
                         %>
                         <tr>
                             <td><%=bs_id1%></td>
                             <td>
                             <%
                                 
                                int user_id=rs1.getInt(2);
                                pstmt1=conn.prepareStatement("select * from user_master where user_id=?");
                                pstmt1.setInt(1,user_id);
                                rs2=pstmt1.executeQuery();
                                
                                while(rs2.next())
                                {
                                    out.println(""+rs2.getString(2));
                                }   
                                
                             %>
                             </td>
                             <td>
                             <%
                                 
                                int ps_id=rs1.getInt(3);
                                pstmt1=conn.prepareStatement("select * from p_sell_details where ps_id=?");
                                pstmt1.setInt(1,ps_id);
                                rs2=pstmt1.executeQuery();
                                
                                while(rs2.next())
                                {
                                    out.println(""+rs2.getString(2));
                                }   
                                
                             %>
                             </td>
                             
                                                         <td><%=rs1.getString(4)%></td>

                       
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
                        
             
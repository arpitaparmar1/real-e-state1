<%@include file="connect.jsp"%>
<%@include file="header.jsp"%>
<script>
    function deletedata(fd__id)
    {
        if(confirm("Do You Really Want To Delete This Record?"))
        {
            window.location.href="feedback_sell_master_view.jsp?fd__id="+fd__id;
        }
    }
    
</script>
<%
    if(request.getParameter("fd__id")!=null)
    {
        int fd_id=Integer.parseInt(request.getParameter("fd__id"));
        pstmt1=conn.prepareStatement("delete from feedback_sell_master where fd__id=?");
        pstmt1.setInt(1,fd_id);
        pstmt1.executeUpdate();
    }
    
   %>


<div class="content-wrapper">
         <div class="container">
        <div class="row pad-botm">
            <div class="col-md-12">
                <center><h4 class="header-line">FEEDBACK SELL VIEW</h4></center>
                
                
                
                   </div>
            <div class="col-lg-12">
                <table class="table table-bordered">
                    <tr>
                        <th>FEEDBACK ID</th>
                         <th>FEEDBACK MESSAGE</th>
                        <th>FEEDBACK DATE</th>
                         <th>USER NAME</th>
                           <th>DELETE</th>
                    </tr>
                    <%
                        stmt1=conn.createStatement();
                        rs1=stmt1.executeQuery("select *from feedback_sell_master");
                        while(rs1.next())
                        {
                            int fd__id1=rs1.getInt(1);
                         %>
                         <tr>
                                                          <td><%=fd__id1%></td>

                             <td><%=rs1.getString(2)%></td>
                             <td><%=rs1.getString(3)%></td>


                             <td>
                             <%
                                 
                                int user_id=rs1.getInt(4);
                                pstmt1=conn.prepareStatement("select * from user_master where user_id=?");
                                pstmt1.setInt(1,user_id);
                                rs2=pstmt1.executeQuery();
                                
                                while(rs2.next())
                                {
                                    out.println(""+rs2.getString(2));
                                }   
                                
                             %>
                             </td>
                             
                                                         
                       
                        <td><button onclick="deletedata(<%=fd__id1%>)"class="btn btn-danger">DELETE</button></td>
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
                        
             
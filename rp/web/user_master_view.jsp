<%@include file="connect.jsp"%>
<%@include file="header.jsp"%>
<script>
    function deletedata(user_id)
    {
        if(confirm("Do You Really Want To Delete This Record?"))
        {
            window.location.href="user_master_view.jsp?user_id="+user_id;
        }
    }
    
</script>
<%
    if(request.getParameter("user_id")!=null)
    {
        int user_id=Integer.parseInt(request.getParameter("user_id"));
        pstmt1=conn.prepareStatement("delete from user_master where user_id=?");
        pstmt1.setInt(1,user_id);
        pstmt1.executeUpdate();
    }
    
   %>
<div class="content-wrapper">
         <div class="container">
        <div class="row pad-botm">
            <div class="col-md-12">
                <center><h4 class="header-line"> sub CATEGORY VIEW</h4></center>
                
                   </div>
            <div class="col-lg-12">
                <table class="table table-bordered">
                    <tr>
                        <th>USER ID</th>
                         <th>USER NAME</th>
                        <th>USER ADDRESS</th>
                        <th> USER CITY </th>
                        <th>USER PINCODE</th>
                         <th>USER EMAIL</th>
                        <th> USER PASSWORD</th>
                        <th>USER MOBLIE</th>
                          <th>EDIT</th>
                           <th>DELETE</th>
                    </tr>
                    <%
                        stmt1=conn.createStatement();
                        rs1=stmt1.executeQuery("select *from user_master");
                        while(rs1.next())
                        {
                            int user_id1=rs1.getInt(1);
                         %>
                         <tr>
                            <td><%=user_id1%></td>
                             <td><%=rs1.getString(2)%></td>
                             <td><%=rs1.getString(3)%></td>
                             <td><%=rs1.getString(4)%></td>
                             <td><%=rs1.getString(5)%></td>
                             <td><%=rs1.getString(6)%></td>
                             <td><%=rs1.getString(7)%></td>
                             <td><%=rs1.getString(8)%></td>
                             

                             
                        <td><a class="btn btn-success">EDIT</a></td>
                        <td><button onclick="deletedata(<%=user_id1%>)"class="btn btn-danger">DELETE</button></td>
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
                        
             
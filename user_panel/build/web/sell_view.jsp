<%@include file="rheader.jsp"%>
<script>
    function deletedata(ps_id)
    {
        if(confirm("Do You Really Want To Delete This Record?"))
        {
            window.location.href="sell_view.jsp?ps_id="+ps_id;
        }
    }
    
</script>
<%
    if(request.getParameter("ps_id")!=null)
    {
        int ps_id=Integer.parseInt(request.getParameter("ps_id"));
        pstmt1=conn.prepareStatement("delete from p_sell_details where ps_id=?");
        pstmt1.setInt(1,ps_id);
        pstmt1.executeUpdate();
    }
    
   %>

<div class="content-wrapper">
         <div class="container">
             <div class="row pad-botm" style="margin-top: 25px;">
            <div class="col-md-12">
                <center><h4 class="header-line"> SELL PROPERTY POST</h4></center>
                
                   </div>
            <div class="col-lg-12">
                <button><a href="sell_insert.jsp">Add Sell Property</a></button>
                <table class="table table-bordered">
                    <tr>
                        <th>ID</th>
                         <th>PROPERTY  NAME</th>
                        <th> CATEGORY NAME</th>
                        <th> SUB CATEGORY NAME </th>
                        <th>PROPERTY SELL ADDRESS</th>
                        <th>PROPERTY SELL AMOUNT</th>
                        <th>PROPERTY SELL DESCRIPTION</th>
                         <th>PROPERTY SELL SIZE</th>
                         <th>PROPERTY SELL PHOTO</th>
                          <th>EDIT</th>
                           <th>DELETE</th>
                
                    </tr>
                    <%
                        stmt1=conn.createStatement();
                        rs1=stmt1.executeQuery("select * from p_sell_details where user_id='"+user_id+"'");
                        while(rs1.next())
                        {
                            int ps_id1=rs1.getInt(1);
                         %>
                         <tr>
                              <td><%=ps_id1%></td>
                             <td><%=rs1.getString(2)%></td>
                             
                             <td>
                             <%
                                 
                                int p_cat_id=rs1.getInt(3);
                                pstmt1=conn.prepareStatement("select * from p_category where p_cat_id=?");
                                pstmt1.setInt(1,p_cat_id);
                                rs2=pstmt1.executeQuery();
                                
                                while(rs2.next())
                                {
                                    out.println(""+rs2.getString(2));
                                }   
                                
                             %>
                             </td>
                             
                             <td>
                             <%
                                 
                                int p_sub_id=rs1.getInt(4);
                                pstmt1=conn.prepareStatement("select * from p_sub_category where p_sub_id=?");
                                pstmt1.setInt(1,p_sub_id);
                                rs2=pstmt1.executeQuery();
                                
                                while(rs2.next())
                                {
                                    out.println(""+rs2.getString(2));
                                }   
                                
                             %>
                             </td>
                             
                             <td><%=rs1.getString(5)%><br>
                               <%=rs1.getString(6)%></td>
                                <td><%=rs1.getString(7)%></td>
                                
                               
                             
                          <td><%=rs1.getString(9)%></td>
                          <td><%=rs1.getString(10)%></td>
   
                        <td><img style= "height:100px" class="img-responsive" src="<%="http://localhost:8080/rp/ps_image/"+rs1.getString(11)%>"></td>
                        <td><a class="btn btn-success" href="edit_sell_insert.jsp?ps_id=<%=rs1.getInt(1)%>">EDIT</a></td>
                        <td><button onclick="deletedata(<%=ps_id1%>)"class="btn btn-danger">DELETE</button></td>
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
                        
             
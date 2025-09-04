<%@include file="rheader.jsp"%>
<script>
    function deletedata(pr_id)
    {
        if(confirm("Do You Really Want To Delete This Record?"))
        {
            window.location.href="rent_view.jsp?pr_id="+pr_id;
        }
    }
    
</script>
<%
    if(request.getParameter("pr_id")!=null)
    {
        int pr_id=Integer.parseInt(request.getParameter("pr_id"));
        pstmt1=conn.prepareStatement("delete from p_rent_details where pr_id=?");
        pstmt1.setInt(1,pr_id);
        pstmt1.executeUpdate();
    }
    
   %>
<div class="content-wrapper">
         <div class="container">
        <div class="row pad-botm" style="margin-top: 25px;>
            <div class="col-md-12">
                <center><h4 class="header-line"> RENT PROPERTY VIEW</h4></center>
                
                   </div>
            <div class="col-lg-12">
                <button><a href="rent_insert.jsp">Add Rent Property</a></button>
                <table class="table table-bordered" style="">
                    <tr>
                        <th>PROPERTY RENT ID</th>
                         <th>PROPERTY  NAME</th>
                        <th> CATEGORY NAME</th>
                        <th> SUB CATEGORY NAME </th>
                        <th>PROPERTY RENT ADDRESS</th>
                        <th>PROPERTY RENT CITY</th>
                        <th>PROPERTY RENT AMOUNT</th>
                        <th>PROPERTY RENT DESCRIPTION</th>
                         <th>PROPERTY RENT SIZE</th>
                         <th>PROPERTY RENT PHOTO</th>
                          <th>EDIT</th>
                           <th>DELETE</th>
                
                    </tr>
                    <%
                        stmt1=conn.createStatement();
                        rs1=stmt1.executeQuery("select *from p_rent_details  where user_id='"+user_id+"'");
                        while(rs1.next())
                        {
                            int pr_id1=rs1.getInt(1);
                         %>
                         <tr>
                             <td><%=pr_id1%></td>

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
                             
                              <td><%=rs1.getString(5)%></td>
                               <td><%=rs1.getString(6)%></td>
                                <td><%=rs1.getInt(7)%></td>
                                
                               
                             
                          <td><%=rs1.getString(9)%></td>
                          <td><%=rs1.getString(10)%></td>
   
                          <td><img style="height:100px" style="height:100px" class="img-responsive" src="<%="http://localhost:8080/user_panel/image/"+rs1.getString(11)%>"></td>
                        <td><a class="btn btn-success" href="edit_rent_insert.jsp?pr_id=<%=rs1.getInt(1)%>">EDIT</a></td>
                        <td><button onclick="deletedata(<%=pr_id1%>)"class="btn btn-danger">DELETE</button></td>
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
                        
             
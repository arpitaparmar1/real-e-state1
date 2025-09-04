<%@include file="connect.jsp"%>
<%@include file="header.jsp"%>
<script>
    function deletedata(p_sub_id)
    {
        if(confirm("Do You Really Want To Delete This Record?"))
        {
            window.location.href="p_sub_category_view.jsp?p_sub_id="+p_sub_id;
        }
    }
    
</script>
<%
    if(request.getParameter("p_sub_id")!=null)
    {
        int p_sub_id=Integer.parseInt(request.getParameter("p_sub_id"));
        pstmt1=conn.prepareStatement("delete from p_sub_category where p_sub_id=?");
        pstmt1.setInt(1,p_sub_id);
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
                        <th>SUB CATEGORY ID</th>
                         <th>SUB CATEGORY NAME</th>
                        <th>SUB CATEGORY DESCRIPTION</th>
                        <th> CATEGORY NAME</th>
                        <th>SUB CATEGORY PHOTO</th>
                          <th>EDIT</th>
                           <th>DELETE</th>
                    </tr>
                    <%
                        stmt1=conn.createStatement();
                        rs1=stmt1.executeQuery("select *from p_sub_category");
                        while(rs1.next())
                        {
                            int p_sub_id1=rs1.getInt(1);
                         %>
                         <tr>
                              <td><%=p_sub_id1%></td>
                             <td><%=rs1.getString(2)%></td>
                             <td><%=rs1.getString(3)%></td>
                             <td>
                             <%
                                 
                                int p_cat_id=rs1.getInt(4);
                                pstmt1=conn.prepareStatement("select * from p_category where p_cat_id=?");
                                pstmt1.setInt(1,p_cat_id);
                                rs2=pstmt1.executeQuery();
                                
                                while(rs2.next())
                                {
                                    out.println(""+rs2.getString(2));
                                }   
                                
                             %>
                             </td>
                             
                             <td><img class="img-responsive" src="<%="http://localhost:8080/rp/sub_image/"+rs1.getString(5)%>" width="1000px" height="1000px"></td>
                        <td><a class="btn btn-success" href="edit_sub_category.jsp?p_sub_id=<%=rs1.getInt(1)%>">EDIT</a></td>
                        <td><button onclick="deletedata(<%=p_sub_id1%>)"class="btn btn-danger">DELETE</button></td>
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
                        
             
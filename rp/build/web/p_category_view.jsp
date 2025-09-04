<%@include file="connect.jsp"%>
<%@include file="header.jsp"%>
<script>
    function deletedata(p_cat_id)
    {
        if(confirm("Do You Really Want To Delete This Record?"))
        {
            window.location.href="p_category_view.jsp?p_cat_id="+p_cat_id;
        }
    }
    
</script>
<%
    if(request.getParameter("p_cat_id")!=null)
    {
        int p_cat_id=Integer.parseInt(request.getParameter("p_cat_id"));
        pstmt1=conn.prepareStatement("delete from p_category where p_cat_id=?");
        pstmt1.setInt(1,p_cat_id);
        pstmt1.executeUpdate();
    }
    
   %>
<div class="content-wrapper">
         <div class="container">
        <div class="row pad-botm">
            <div class="col-md-12">
                <center><h4 class="header-line">CATEGORY VIEW</h4></center>
                
                
                
                   </div>
            <div class="col-lg-12">
                <table class="table table-bordered">
                    <tr>
                        <th>CATEGORY ID</th>
                         <th>CATEGORY NAME</th>
                        <th>CATEGORY DESCRIPTION</th>
                         <th>CATEGORY PHOTO</th>
                          <th>EDIT</th>
                           <th>DELETE</th>
                    </tr>
                    <%
                        stmt1=conn.createStatement();
                        rs1=stmt1.executeQuery("select *from p_category");
                        while(rs1.next())
                            
                        {
                            int p_cat_id1=rs1.getInt(1);
                         %>
                         <tr>
                             <td><%=p_cat_id1%></td>
                             <td><%=rs1.getString(2)%></td>
                             <td><%=rs1.getString(3)%></td>
                            
                       
                        <td><img class="img-responsive" src="<%="http://localhost:8080/rp/cat_image/"+rs1.getString(4)%>"></td>
                        <td><a class="btn btn-success" href="edit_category.jsp?p_cat_id=<%=rs1.getInt(1)%>">EDIT</a></td>
                        <td><button onclick="deletedata(<%=p_cat_id1%>)"class="btn btn-danger">DELETE</button></td>
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
                        
             
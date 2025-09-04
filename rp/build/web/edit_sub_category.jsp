
<%@include file="header.jsp" %>
<%@include file="connect.jsp" %>
<%
    int p_sub_id=Integer.parseInt(request.getParameter("p_sub_id"));
    pstmt1=conn.prepareStatement("select * from p_sub_category where p_sub_id=?");
    pstmt1.setInt(1,p_sub_id);
    rs2=pstmt1.executeQuery();
   %>

<div class="content-wrapper">
    <div class="container">
        <div class="row" pad-botm>
            <div class="col-md-12">
                <center><h1 class="header-line"></h1></center>
                
                
            </div>
        </div>
        
             <div class="row">
            <div class="col-md-12 col-md-12 col-md-12">
               <div class="panel panel-info">
                        <div class="panel-heading">
                           EDIT SUB CATEGORY
                        </div>
                        <div class="panel-body">
                            <form action="edit_sub_category_code.jsp" method="post" enctype="multipart/form-data">
                                <%
                                while(rs2.next())
                                {
                                %>
                                        <div class="form-group">
                                            <label>ENTER CATEGORY NAME</label>
                                            <input type="hidden" name="p_sub_id" value="<%=p_sub_id%>">
                                            
                                            
                                            <input class="form-control" value="<%=rs2.getString(2)%>" type="text" name="p_sub_name" required/>
                                            
                                        </div>
                                
                                            <div class="form-group">
                                            <label>ENTER DESCRIPTION</label>
                                            <textarea class="form-control" type="text" rows="3" name="p_sub_des" required ><%=rs2.getString(3)%></textarea>
                                        </div>
                                        
                                        
                                        <div class="form-group">
                                            <label>SELECT CATEGORY </label>
                                            <select class="form-control" name="p_cat_id"required >
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
                                <div class="form-group">
                                    <label>SELECT PHOTO</label><br>
                                    <input type="hidden" name="old_photo" value="<%=rs2.getString(5)%>">
                                    <img  width="100px" height="100px" src="http://localhost:8080/rp/sub_image/<%=rs2.getString(5)%>">
                                    <input class="form-control" type="file" name="p_sub_photo"/><br>
                                            
                                        </div>
                                
                                  
                                 
                                <center>
                                         <button type="submit" class="btn btn-info">SAVE </button>
                                </center>
                                <%
                                    }
                                  %>
                                    </form>
                            </div>
                        </div>
                            </div>
        
    </div>
</div>

            

<%@include file="footer.jsp" %>
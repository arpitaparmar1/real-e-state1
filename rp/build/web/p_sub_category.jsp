<%@include file="header.jsp" %>
<%@include file="connect.jsp" %>
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
                           ADD SUB CATEGORY
                        </div>
                        <div class="panel-body">
                            <form action="p_sub_category_code.jsp" method="post" enctype="multipart/form-data">
                                        <div class="form-group">
                                            <label>ENTER SUB CATEGORY NAME</label>
                                            <input class="form-control" type="text" name="p_sub_name" required/>
                                            
                                        </div>
                                
                                            <div class="form-group">
                                            <label>ENTER DESCRIPTION</label>
                                            <textarea class="form-control" type="text" name="p_sub_des" required></textarea>
                                        </div>
                                <div class="form-group">
                                            <label>SELECT CATEGORY </label>
                                            <select class="form-control" name="p_cat_id" required>
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
                                            <label>SELECT PHOTO</label>
                                            <input class="form-control" type="file" name="p_sub_photo"/>
                                            
                                        </div>
                                
                                  
                                 
                                <center>
                                         <button type="submit" class="btn btn-info">SAVE </button>
                                </center>
                                    </form>
                            </div>
                        </div>
                            </div>
        
    </div>
</div>

            

<%@include file="footer.jsp" %>
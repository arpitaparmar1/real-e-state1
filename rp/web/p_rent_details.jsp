<%@include file="header.jsp" %>

<%@include file="connect.jsp" %>
<div class="content-wrapper">
    <div class="container">
        <div class="row" pad-botm>
            <div class="col-md-12">
                <center><h1 class="header-line">ADD RENT DETAILS</h1></center>
                
                
            </div>
        </div>
        
             <div class="row">
            <div class="col-md-12 col-md-12 col-md-12">
               <div class="panel panel-info">
                        <div class="panel-heading">
                           BASIC FORM
                        </div>
                        <div class="panel-body">
                            <form action="p_rent_code.jsp" method="post" enctype="multipart/form-data">
                                        
                                
                                 <div class="form-group">
                                            <label>ENTER NAME</label>
                                            <input class="form-control" type="text" name="pr_name"/>
                                            
                                        </div>
                                
                                 <div class="form-group">
                                            <label>SELECT CATEGORY ID</label>
                                            <select class="form-control" name="p_cat_id">
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
                                            <label>SELECT  SUB CATEGORY ID</label>
<select class="form-control" name="p_sub_id">
                                            <% 
                                            stmt1=conn.createStatement();
                                            rs1=stmt1.executeQuery("select * from p_sub_category");
                                            while(rs1.next())
                                            {
                                               %>
                                              
                                               <option value="<%=rs1.getInt("p_sub_id")%>"><%=rs1.getString("p_sub_name")%></option>
                                            <%
                                               }
                                             %>
                                  </select>
                                                                                        
                                        </div>
                                
                                
                                
                                            <div class="form-group">
                                            <label>ENTER ADDRESS</label>
                                            <textarea class="form-control" type="text" name="pr_address"></textarea>
                                        </div>
                                
                                <div class="form-group">
                                            <label>ENTER CITY</label>
                                            <input class="form-control" type="text" name="pr_city"/>
                                            
                                        </div>
                                
                                <div class="form-group">
                                            <label>ENTER RENT</label>
                                            <input class="form-control" type="text" name="pr_rent"/>
                                            
                                        </div>
                                
                                 <div class="form-group">
                                            <label>SELECT USER ID</label>
                                            <input class="form-control" type="text" name="user_id"/>
                                            
                                        </div>
                                
                                 <div class="form-group">
                                            <label>ENTER DESCRIPTION</label>
                                            <textarea class="form-control" type="text" name="pr_des"></textarea>
                                        </div>
                                
                                <div class="form-group">
                                            <label>ENTER SIZE</label>
                                            <input class="form-control" type="text" name="pr_size"/>
                                            
                                        </div>
                               
                                <div class="form-group">
                                            <label>ENTER PHOTO</label>
                                            <input class="form-control" type="file" name="pr_photo"/>
                                            
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
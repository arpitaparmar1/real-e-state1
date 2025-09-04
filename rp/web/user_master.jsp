<%@include file="header.jsp" %>
<div class="content-wrapper">
    <div class="container">
        <div class="row" pad-botm>
            <div class="col-md-12">
                <center><h1 class="header-line">USER MASTER</h1></center>
                
                
            </div>
        </div>
        
             <div class="row">
            <div class="col-md-12 col-md-12 col-md-12">
               <div class="panel panel-info">
                        <div class="panel-heading">
                           BASIC FORM
                        </div>
                        <div class="panel-body">
                            <form action="sample_code.jsp" method="post">
                                        <div class="form-group">
                                            <label>ENTER USER NAME</label>
                                            <input class="form-control" type="text" name="user_name"/>
                                            
                                        </div>
                                
                                            <div class="form-group">
                                            <label>ENTER USER ADDRESS</label>
                                            <textarea class="form-control" type="text" name="user_address"></textarea>
                                        </div>
                                
                                <div class="form-group">
                                            <label>ENTER USER CITY</label>
                                            <input class="form-control" type="text" name="user_city"/>
                                            
                                        </div>
                               
                                <div class="form-group">
                                            <label>ENTER USER PINCODE</label>
                                            <input class="form-control" type="text" name="user_pincode"/>
                                            
                                        </div>
                                
                                <div class="form-group">
                                            <label>ENTER USER EMAIL</label>
                                            <input class="form-control" type="text" name="user_email"/>
                                            
                                        </div>
                                
                                <div class="form-group">
                                            <label>ENTER USER PASSWORD</label>
                                            <input class="form-control" type="text" name="user_password"/>
                                            
                                        </div>
                                
                                <div class="form-group">
                                            <label>ENTER USER MOBLIE</label>
                                            <input class="form-control" type="text" name="user_moblie"/>
                                            
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
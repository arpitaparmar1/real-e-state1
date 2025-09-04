<%@include file="header.jsp" %>
<div class="content-wrapper">
    <div class="container">
        <div class="row" pad-botm>
            <div class="col-md-12">
                <center><h1 class="header-line">ENTER YOUR FEEDBACK</h1></center>
                
                
            </div>
        </div>
        
             <div class="row">
            <div class="col-md-12 col-md-12 col-md-12">
               <div class="panel panel-info">
                        <div class="panel-heading">
                           BASIC FORM
                        </div>
                        <div class="panel-body">
                            <form role="form">
                                        
                                
                                            <div class="form-group">
                                            <label>ENTER YOUR MESSAGE</label>
                                            <textarea class="form-control" type="text" name="fd_mes"></textarea>
                                        </div>
                                <div class="form-group">
                                            <label>ENTER YOUR DATE</label>
                                            <input class="form-control" type="date" name="fd_date"/>
                                            
                                        </div>

                                <div class="form-group">
                                            <label>SELECT USER</label>
                                            <input class="form-control" type="text" name="user_id"/>
                                            
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
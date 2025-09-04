<%@include file="header.jsp" %>

<div class="container-xxl py-5">
            <div class="container">
                <div class="text-center mx-auto mb-5 wow fadeInUp" data-wow-delay="0.1s" style="max-width: 600px;">
                    <h1 class="mb-3">LOGIN</h1>
                </div>
                
                <div class="col-md-12">
                        <div class="wow fadeInUp" data-wow-delay="0.5s">
                            <form action="login_check.jsp" method="post">
                                    <div class="row g-3">
                                    <div class="col-md-12">
                                        <div class="form-floating">
                                            <input type="email" class="form-control"  placeholder="User Name" name="user_email" required>
                                            <label for="name">Enter User name</label>
                                        </div>
                                    </div>
                                    <div class="col-12">
                                        <div class="form-floating">
                                            <input type="password" class="form-control" name="user_password" placeholder="Password">
                                            <label for="subject">Enter Password</label>
                                        </div>
                                    </div>
                                   
                                    <div class="col-12">
                                        <button class="btn btn-primary w-100 py-3" type="submit">DONE!!!</button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                
            </div>
</div>




                        

<%@include file="footer.jsp" %>
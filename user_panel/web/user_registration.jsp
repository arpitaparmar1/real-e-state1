<%@include file="header.jsp" %>
<!-- Contact Start -->
        <div class="container-xxl py-5">
            <div class="container">
                <div class="text-center mx-auto mb-5 wow fadeInUp" data-wow-delay="0.1s" style="max-width: 600px;">
                    <h4 class="mb-3"> ENTER YOUR USER INFORMATION</h4>
                </div>
                <div class="row g-4">
                                       <div class="col-md-12">
                        <div class="wow fadeInUp" data-wow-delay="0.5s">
                                    
                            <form action="user_registration_code.jsp" method="post" >

   

                                <div class="row g-3">
                                    <div class="col-md-12">
                                        <div class="form-floating">
                                            <input type="text" class="form-control" name="user_name" placeholder="Your Name">
                                            <label for="name">Your Name</label>
                                        </div>
                                    </div>
                                     <div class="col-12">
                                        <div class="form-floating">
                                            <textarea class="form-control" placeholder="Leave a address here" name="user_address" style="height: 150px"></textarea>
                                            <label for="message">your address</label>
                                        </div>
                                    </div>
                                    <div class="col-12">
                                        <div class="form-floating">
                                            <input type="text" class="form-control" name="user_city" placeholder="your city">
                                            <label for="subject">your city</label>
                                        </div>
                                    </div>
                                    
                                    <div class="col-12">
                                        <div class="form-floating">
                                            <input type="text" class="form-control" name="user_pincode" placeholder="your pincode">
                                            <label for="subject">your pincode</label>
                                        </div>
                                    </div>
                                    
                                    <div class="col-12">
                                        <div class="form-floating">
                                            <input type="text" class="form-control" name="user_email" placeholder="your email">
                                            <label for="subject">your email</label>
                                        </div>
                                    </div>
                                    
                                    <div class="col-12">
                                        <div class="form-floating">
                                            <input type="password" class="form-control" name="user_password" placeholder="your password">
                                            <label for="subject">your password</label>
                                        </div>
                                    </div>
                                    
                                    <div class="col-12">
                                        <div class="form-floating">
                                            <input type="text" class="form-control" name="user_moblie" placeholder="your moblie">
                                            <label for="subject">your moblie</label>
                                        </div>
                                    </div>
                                    
                                   
                                    <div class="col-12">
                                        <button class="btn btn-primary w-100 py-3" type="submit">Send Message</button>
                                    </div>
                                </div>
                           
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Contact End -->
        <%@include file="footer.jsp" %>


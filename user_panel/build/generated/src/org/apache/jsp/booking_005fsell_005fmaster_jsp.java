package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;
import javax.sql.*;
import com.oreilly.servlet.MultipartRequest;
import java.io.File;

public final class booking_005fsell_005fmaster_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

Connection conn; 
PreparedStatement pstmt1,pstmt2,pstmt3,pstmt4; 
ResultSet rs0,rs1,rs2,rs3,rs4,rs5;
Statement stmt0,stmt1,stmt2; 
  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(3);
    _jspx_dependants.add("/rheader.jsp");
    _jspx_dependants.add("/connect.jsp");
    _jspx_dependants.add("/footer.jsp");
  }

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("    ");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write('\n');
      out.write('\n');
      out.write('\n');
      out.write("\n");
      out.write("\n");
      out.write("\n");

    Class.forName("com.mysql.jdbc.Driver");
    conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/real_estate_property","root","");
    


      out.write('\n');
      out.write('\n');
      out.write('\n');

    int user_id=0;
    String username="";
    if(session.getAttribute("username")==null)
    {
        response.sendRedirect("index.jsp");
        
    }
    else
    {
        username=(String)session.getAttribute("username");
        stmt0=conn.createStatement();
        rs0=stmt0.executeQuery("select * from user_master where user_email='"+username+"'");
        if(rs0.next())
        {
            user_id=rs0.getInt(1);
        }
        
    }
    
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"en\">\n");
      out.write("\n");
      out.write("<head>\n");
      out.write("    <meta charset=\"utf-8\">\n");
      out.write("    <title>Makaan - Real Estate HTML Template</title>\n");
      out.write("    <meta content=\"width=device-width, initial-scale=1.0\" name=\"viewport\">\n");
      out.write("    <meta content=\"\" name=\"keywords\">\n");
      out.write("    <meta content=\"\" name=\"description\">\n");
      out.write("\n");
      out.write("    <!-- Favicon -->\n");
      out.write("    <link href=\"img/favicon.ico\" rel=\"icon\">\n");
      out.write("\n");
      out.write("    <!-- Google Web Fonts -->\n");
      out.write("    <link rel=\"preconnect\" href=\"https://fonts.googleapis.com\">\n");
      out.write("    <link rel=\"preconnect\" href=\"https://fonts.gstatic.com\" crossorigin>\n");
      out.write("    <link href=\"https://fonts.googleapis.com/css2?family=Heebo:wght@400;500;600&family=Inter:wght@700;800&display=swap\" rel=\"stylesheet\">\n");
      out.write("    \n");
      out.write("    <!-- Icon Font Stylesheet -->\n");
      out.write("    <link href=\"https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css\" rel=\"stylesheet\">\n");
      out.write("    <link href=\"https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css\" rel=\"stylesheet\">\n");
      out.write("\n");
      out.write("    <!-- Libraries Stylesheet -->\n");
      out.write("    <link href=\"lib/animate/animate.min.css\" rel=\"stylesheet\">\n");
      out.write("    <link href=\"lib/owlcarousel/assets/owl.carousel.min.css\" rel=\"stylesheet\">\n");
      out.write("\n");
      out.write("    <!-- Customized Bootstrap Stylesheet -->\n");
      out.write("    <link href=\"css/bootstrap.min.css\" rel=\"stylesheet\">\n");
      out.write("\n");
      out.write("    <!-- Template Stylesheet -->\n");
      out.write("    <link href=\"css/style.css\" rel=\"stylesheet\">\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("    <div class=\"container-xxl bg-white p-0\">\n");
      out.write("       \n");
      out.write("\n");
      out.write("        <!-- Navbar Start -->\n");
      out.write("        <div class=\"container-fluid nav-bar bg-transparent\">\n");
      out.write("            <nav class=\"navbar navbar-expand-lg bg-white navbar-light py-0 px-4\">\n");
      out.write("                <a href=\"index.html\" class=\"navbar-brand d-flex align-items-center text-center\">\n");
      out.write("                    <div class=\"icon p-2 me-2\">\n");
      out.write("                        <img class=\"img-fluid\" src=\"img/icon-deal.png\" alt=\"Icon\" style=\"width: 30px; height: 30px;\">\n");
      out.write("                    </div>\n");
      out.write("                    <h2 class=\"m-0 text-primary\">Real-Estate</h2>\n");
      out.write("                </a>\n");
      out.write("                <button type=\"button\" class=\"navbar-toggler\" data-bs-toggle=\"collapse\" data-bs-target=\"#navbarCollapse\">\n");
      out.write("                    <span class=\"navbar-toggler-icon\"></span>\n");
      out.write("                </button>\n");
      out.write("                <div class=\"collapse navbar-collapse\" id=\"navbarCollapse\">\n");
      out.write("                    <div class=\"navbar-nav ms-auto\">\n");
      out.write("                        <a href=\"index.html\" class=\"nav-item nav-link active\">Home</a>\n");
      out.write("                        \n");
      out.write("                        <a href=\"about.html\" class=\"nav-item nav-link\">About</a>\n");
      out.write("                    \n");
      out.write("                         <div class=\"nav-item dropdown\">\n");
      out.write("                            <a href=\"\" class=\"nav-link dropdown-toggle\" data-bs-toggle=\"dropdown\">PROPERTY</a>\n");
      out.write("                            <div class=\"dropdown-menu rounded-0 m-0\">\n");
      out.write("                                 ");
 
                         stmt1=conn.createStatement();
                         rs1=stmt1.executeQuery("select * from p_category");
                         while(rs1.next())
                         {
                         
      out.write("       \n");
      out.write("                         <a href=\"r_subcat.jsp?cat_id=");
      out.print(rs1.getInt(1));
      out.write("\" class=\"dropdown-item\">");
      out.print(rs1.getString(2));
      out.write("</a>\n");
      out.write("                         ");

                          }
                         
      out.write("</div>\n");
      out.write("                        </div>\n");
      out.write("                        \n");
      out.write("                       \n");
      out.write("                        \n");
      out.write("                        <div class=\"nav-item dropdown\">\n");
      out.write("                            <a href=\"#\" class=\"nav-link dropdown-toggle\" data-bs-toggle=\"dropdown\">POST PROPERTY</a>\n");
      out.write("                            <div class=\"dropdown-menu rounded-0 m-0\">\n");
      out.write("                                <a href=\"rent_view.jsp\" class=\"dropdown-item\">RENT</a>\n");
      out.write("                                <a href=\"sell_view.jsp\" class=\"dropdown-item\">SELL</a>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                        \n");
      out.write("                        <div class=\"nav-item dropdown\">\n");
      out.write("                            <a href=\"#\" class=\"nav-link dropdown-toggle\" data-bs-toggle=\"dropdown\">BOOKING</a>\n");
      out.write("                            <div class=\"dropdown-menu rounded-0 m-0\">\n");
      out.write("                                <a href=\"property-list.html\" class=\"dropdown-item\">RENT BOOKING</a>\n");
      out.write("                                <a href=\"property-type.html\" class=\"dropdown-item\">SELLER BOOKING</a>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                        \n");
      out.write("                         <a href=\"contact.html\" class=\"nav-item nav-link\">Contact</a>\n");
      out.write("                        \n");
      out.write("\n");
      out.write("                                                                    <a href=\"index.jsp\" class=\"nav-item nav-link\">LOG OUT</a>\n");
      out.write("\n");
      out.write("                    \n");
      out.write("                    \n");
      out.write("                    \n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </nav>\n");
      out.write("        </div>\n");
      out.write("        <!-- Navbar End -->\n");
      out.write("\n");
      out.write("\n");
      out.write("\r\n");
      out.write("<script>\r\n");
      out.write("    function deletedata(bs_id)\r\n");
      out.write("    {\r\n");
      out.write("        if(confirm(\"Do You Really Want To Delete This Record?\"))\r\n");
      out.write("        {\r\n");
      out.write("            window.location.href=\"booking_sell_master.jsp?bs_id=\"+bs_id;\r\n");
      out.write("        }\r\n");
      out.write("    }\r\n");
      out.write("    \r\n");
      out.write("</script>\r\n");

    if(request.getParameter("bs_id")!=null)
    {
        
        int fd_id=Integer.parseInt(request.getParameter("bs_id"));
        pstmt1=conn.prepareStatement("delete from booking_sell_master where bs_id=?");
        pstmt1.setInt(1,fd_id);
        pstmt1.executeUpdate();
    }
    
   
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<div class=\"content-wrapper\">\r\n");
      out.write("         <div class=\"container\">\r\n");
      out.write("        <div class=\"row pad-botm\">\r\n");
      out.write("            <div class=\"col-md-12\">\r\n");
      out.write("                <center><h4 class=\"header-line\" style=\"margin-top: 50px; margin-bottom: 50px;\">BOOKING SELL VIEW</h4></center>\r\n");
      out.write("                \r\n");
      out.write("                   </div>\r\n");
      out.write("            <div class=\"col-lg-12\">\r\n");
      out.write("                <table class=\"table table-bordered\">\r\n");
      out.write("                    <tr>\r\n");
      out.write("                        <th> ID</th>\r\n");
      out.write("                        <th>PROPERTY</th>\r\n");
      out.write("                        <th>DATE</th>\r\n");
      out.write("                        <th>CANCLE BOOKING</th>\r\n");
      out.write("                    </tr>\r\n");
      out.write("                    ");

                        stmt1=conn.createStatement();
                        rs1=stmt1.executeQuery("select *from booking_sell_master");
                        while(rs1.next())
                        {
                            int bs_id1=rs1.getInt(1);
                         
      out.write("\r\n");
      out.write("                         <tr>\r\n");
      out.write("                         <td>");
      out.print(bs_id1);
      out.write("</td>\r\n");
      out.write("                          \r\n");
      out.write("                          <td>\r\n");
      out.write("                             ");

                                 
                                int ps_id=rs1.getInt(3);
                                pstmt1=conn.prepareStatement("select * from p_sell_details where ps_id=?");
                                pstmt1.setInt(1,ps_id);
                                rs2=pstmt1.executeQuery();
                                
                                while(rs2.next())
                                {
                                    out.println(""+rs2.getString(2));
                                }   
                                
                             
      out.write("\r\n");
      out.write("                             \r\n");
      out.write("                            </td>\r\n");
      out.write("                                  \r\n");
      out.write("                            \r\n");
      out.write("                                                     \r\n");
      out.write("                         \r\n");
      out.write("                                \r\n");
      out.write("                             \r\n");
      out.write("                             \r\n");
      out.write("                             \r\n");
      out.write("                             \r\n");
      out.write("                                                          <td>");
      out.print(rs1.getString(4));
      out.write("</td>\r\n");
      out.write("\r\n");
      out.write("                             \r\n");
      out.write("                                                         \r\n");
      out.write("                       \r\n");
      out.write("                       <td><button onclick=\"deletedata(");
      out.print(rs1.getInt(1));
      out.write(")\" class=\"btn btn-danger\">CANCLE BOOKING</button></td>\r\n");
      out.write("                         </tr>\r\n");
      out.write("                         ");
      
                          }
                        
      out.write("\r\n");
      out.write("\r\n");
      out.write("                </table>\r\n");
      out.write("                        \r\n");
      out.write("                        </div>\r\n");
      out.write("                        \r\n");
      out.write("        </div>\r\n");
      out.write("                        \r\n");
      out.write("         </div>\r\n");
      out.write("</div>\r\n");
      out.write("                        ");
      out.write("<!-- Footer Start -->\n");
      out.write("        <div class=\"container-fluid bg-dark text-white-50 footer pt-5 mt-5 wow fadeIn\" data-wow-delay=\"0.1s\">\n");
      out.write("            <div class=\"container py-5\">\n");
      out.write("                <div class=\"row g-5\">\n");
      out.write("                    <div class=\"col-lg-3 col-md-6\">\n");
      out.write("                        <h5 class=\"text-white mb-4\">Get In Touch</h5>\n");
      out.write("                        <p class=\"mb-2\"><i class=\"fa fa-map-marker-alt me-3\"></i>123 Street, New York, USA</p>\n");
      out.write("                        <p class=\"mb-2\"><i class=\"fa fa-phone-alt me-3\"></i>+012 345 67890</p>\n");
      out.write("                        <p class=\"mb-2\"><i class=\"fa fa-envelope me-3\"></i>info@example.com</p>\n");
      out.write("                        <div class=\"d-flex pt-2\">\n");
      out.write("                            <a class=\"btn btn-outline-light btn-social\" href=\"\"><i class=\"fab fa-twitter\"></i></a>\n");
      out.write("                            <a class=\"btn btn-outline-light btn-social\" href=\"\"><i class=\"fab fa-facebook-f\"></i></a>\n");
      out.write("                            <a class=\"btn btn-outline-light btn-social\" href=\"\"><i class=\"fab fa-youtube\"></i></a>\n");
      out.write("                            <a class=\"btn btn-outline-light btn-social\" href=\"\"><i class=\"fab fa-linkedin-in\"></i></a>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"col-lg-3 col-md-6\">\n");
      out.write("                        <h5 class=\"text-white mb-4\">Quick Links</h5>\n");
      out.write("                        <a class=\"btn btn-link text-white-50\" href=\"\">About Us</a>\n");
      out.write("                        <a class=\"btn btn-link text-white-50\" href=\"\">Contact Us</a>\n");
      out.write("                        <a class=\"btn btn-link text-white-50\" href=\"\">Our Services</a>\n");
      out.write("                        <a class=\"btn btn-link text-white-50\" href=\"\">Privacy Policy</a>\n");
      out.write("                        <a class=\"btn btn-link text-white-50\" href=\"\">Terms & Condition</a>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"col-lg-3 col-md-6\">\n");
      out.write("                        <h5 class=\"text-white mb-4\">Photo Gallery</h5>\n");
      out.write("                        <div class=\"row g-2 pt-2\">\n");
      out.write("                            <div class=\"col-4\">\n");
      out.write("                                <img class=\"img-fluid rounded bg-light p-1\" src=\"img/property-1.jpg\" alt=\"\">\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"col-4\">\n");
      out.write("                                <img class=\"img-fluid rounded bg-light p-1\" src=\"img/property-2.jpg\" alt=\"\">\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"col-4\">\n");
      out.write("                                <img class=\"img-fluid rounded bg-light p-1\" src=\"img/property-3.jpg\" alt=\"\">\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"col-4\">\n");
      out.write("                                <img class=\"img-fluid rounded bg-light p-1\" src=\"img/property-4.jpg\" alt=\"\">\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"col-4\">\n");
      out.write("                                <img class=\"img-fluid rounded bg-light p-1\" src=\"img/property-5.jpg\" alt=\"\">\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"col-4\">\n");
      out.write("                                <img class=\"img-fluid rounded bg-light p-1\" src=\"img/property-6.jpg\" alt=\"\">\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"col-lg-3 col-md-6\">\n");
      out.write("                        <h5 class=\"text-white mb-4\">Newsletter</h5>\n");
      out.write("                        <p>Dolor amet sit justo amet elitr clita ipsum elitr est.</p>\n");
      out.write("                        <div class=\"position-relative mx-auto\" style=\"max-width: 400px;\">\n");
      out.write("                            <input class=\"form-control bg-transparent w-100 py-3 ps-4 pe-5\" type=\"text\" placeholder=\"Your email\">\n");
      out.write("                            <button type=\"button\" class=\"btn btn-primary py-2 position-absolute top-0 end-0 mt-2 me-2\">SignUp</button>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"container\">\n");
      out.write("                <div class=\"copyright\">\n");
      out.write("                    <div class=\"row\">\n");
      out.write("                        <div class=\"col-md-6 text-center text-md-start mb-3 mb-md-0\">\n");
      out.write("                            &copy; <a class=\"border-bottom\" href=\"#\">Your Site Name</a>, All Right Reserved. \n");
      out.write("\t\t\t\t\t\t\t\n");
      out.write("\t\t\t\t\t\t\t<!--/*** This template is free as long as you keep the footer author?s credit link/attribution link/backlink. If you'd like to use the template without the footer author?s credit link/attribution link/backlink, you can purchase the Credit Removal License from \"https://htmlcodex.com/credit-removal\". Thank you for your support. ***/-->\n");
      out.write("\t\t\t\t\t\t\tDesigned By <a class=\"border-bottom\" href=\"https://htmlcodex.com\">HTML Codex</a>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"col-md-6 text-center text-md-end\">\n");
      out.write("                            <div class=\"footer-menu\">\n");
      out.write("                                <a href=\"\">Home</a>\n");
      out.write("                                <a href=\"\">Cookies</a>\n");
      out.write("                                <a href=\"\">Help</a>\n");
      out.write("                                <a href=\"\">FQAs</a>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("        <!-- Footer End -->\n");
      out.write("\n");
      out.write("\n");
      out.write("        <!-- Back to Top -->\n");
      out.write("        <a href=\"#\" class=\"btn btn-lg btn-primary btn-lg-square back-to-top\"><i class=\"bi bi-arrow-up\"></i></a>\n");
      out.write("    </div>\n");
      out.write("\n");
      out.write("    <!-- JavaScript Libraries -->\n");
      out.write("    <script src=\"js/jquery-3.4.1.min.js\"></script>\n");
      out.write("    <script src=\"js/bootstrap.bundle.min.js\"></script>\n");
      out.write("    <script src=\"lib/wow/wow.min.js\"></script>\n");
      out.write("    <script src=\"lib/easing/easing.min.js\"></script>\n");
      out.write("    <script src=\"lib/waypoints/waypoints.min.js\"></script>\n");
      out.write("    <script src=\"lib/owlcarousel/owl.carousel.min.js\"></script>\n");
      out.write("\n");
      out.write("    <!-- Template Javascript -->\n");
      out.write("    <script src=\"js/main.js\"></script>\n");
      out.write("</body>\n");
      out.write("\n");
      out.write("</html>");
      out.write("                        \r\n");
      out.write("                        \r\n");
      out.write("             ");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}

package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;
import javax.sql.*;
import com.oreilly.servlet.MultipartRequest;
import java.io.File;

public final class admin_005fhome_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

Connection conn; 
PreparedStatement pstmt1,pstmt2,pstmt3,pstmt4; 
ResultSet rs1,rs2,rs3,rs4,rs5;
Statement stmt1,stmt2; 
  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(3);
    _jspx_dependants.add("/header.jsp");
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


    if(session.getAttribute("username")==null)
    {
        response.sendRedirect("index.jsp");
        
    }
    else
    {
        String username=(String)session.getAttribute("username");
    }
    
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html xmlns=\"http://www.w3.org/1999/xhtml\">\n");
      out.write("<head>\n");
      out.write("    <meta charset=\"utf-8\" />\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1, maximum-scale=1\" />\n");
      out.write("    <meta name=\"description\" content=\"\" />\n");
      out.write("    <meta name=\"author\" content=\"\" />\n");
      out.write("    <!--[if IE]>\n");
      out.write("        <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge,chrome=1\">\n");
      out.write("        <![endif]-->\n");
      out.write("    <title>REAL-ESTATE | ADMIN</title>\n");
      out.write("    <!-- BOOTSTRAP CORE STYLE  -->\n");
      out.write("    <link href=\"assets/css/bootstrap.css\" rel=\"stylesheet\" />\n");
      out.write("    <!-- FONT AWESOME STYLE  -->\n");
      out.write("    <link href=\"assets/css/font-awesome.css\" rel=\"stylesheet\" />\n");
      out.write("    <!-- CUSTOM STYLE  -->\n");
      out.write("    <link href=\"assets/css/style.css\" rel=\"stylesheet\" />\n");
      out.write("    <!-- GOOGLE FONT -->\n");
      out.write("    <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />\n");
      out.write("\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("    <div class=\"navbar navbar-inverse set-radius-zero\" >\n");
      out.write("        <div class=\"container\">\n");
      out.write("            <div class=\"navbar-header\">\n");
      out.write("                <button type=\"button\" class=\"navbar-toggle\" data-toggle=\"collapse\" data-target=\".navbar-collapse\">\n");
      out.write("                    <span class=\"icon-bar\"></span>\n");
      out.write("                    <span class=\"icon-bar\"></span>\n");
      out.write("                    <span class=\"icon-bar\"></span>\n");
      out.write("                </button>\n");
      out.write("                <a class=\"navbar-brand\" href=\"index.html\">\n");
      out.write("\n");
      out.write("                    <img src=\"assets/img/logo8.png\" width=\"130px\" height=\"80px\" />\n");
      out.write("                </a>\n");
      out.write("\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("            <div class=\"right-div\">\n");
      out.write("                <a href=\"logout.jsp\" class=\"btn btn-danger pull-right\">LOG ME OUT</a>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("    </div>\n");
      out.write("    <!-- LOGO HEADER END-->\n");
      out.write("    <section class=\"menu-section\">\n");
      out.write("        <div class=\"container\">\n");
      out.write("            <div class=\"row \">\n");
      out.write("                <div class=\"col-md-12\">\n");
      out.write("                    <div class=\"navbar-collapse collapse \">\n");
      out.write("                        <ul id=\"menu-top\" class=\"nav navbar-nav navbar-right\">\n");
      out.write("                            <li><a href=\"admin_home.jsp\" class=\"menu-top-active\">DASHBOARD</a></li>\n");
      out.write("                           \n");
      out.write("                            \n");
      out.write("                            <li>\n");
      out.write("                                <a href=\"#\" class=\"dropdown-toggle\" id=\"ddlmenuItem\" data-toggle=\"dropdown\">CTEGORY <i class=\"fa fa-angle-down\"></i></a>\n");
      out.write("                                <ul class=\"dropdown-menu\" role=\"menu\" aria-labelledby=\"ddlmenuItem\">\n");
      out.write("                                    <li role=\"presentation\"><a role=\"menuitem\" tabindex=\"-1\" href=\"p_category.jsp\">ADD CATEGORY</a></li>\n");
      out.write("                                     <li role=\"presentation\"><a role=\"menuitem\" tabindex=\"-1\" href=\"p_category_view.jsp\">VIEW CATEGORY</a></li>\n");
      out.write("                                </ul>\n");
      out.write("                            </li>\n");
      out.write("                            \n");
      out.write("                            <li>\n");
      out.write("                                <a href=\"#\" class=\"dropdown-toggle\" id=\"ddlmenuItem\" data-toggle=\"dropdown\"> SUB CATEGORY <i class=\"fa fa-angle-down\"></i></a>\n");
      out.write("                                <ul class=\"dropdown-menu\" role=\"menu\" aria-labelledby=\"ddlmenuItem\">\n");
      out.write("                                    <li role=\"presentation\"><a role=\"menuitem\" tabindex=\"-1\" href=\"p_sub_category.jsp\">ADD  SUB CATEGORY</a></li>\n");
      out.write("                                     <li role=\"presentation\"><a role=\"menuitem\" tabindex=\"-1\" href=\"p_sub_category_view.jsp\">VIEW SUB CATEGORY</a></li>\n");
      out.write("                                </ul>\n");
      out.write("                            </li>\n");
      out.write("                            <li><a href=\"p_sell_view.jsp\">SELL VIEW</a></li>\n");
      out.write("                            <li><a href=\"p_rent_view.jsp\">RENT VIEW</a></li>\n");
      out.write("                            <li>\n");
      out.write("                                <a href=\"#\" class=\"dropdown-toggle\" id=\"ddlmenuItem\" data-toggle=\"dropdown\">Feedback view<i class=\"fa fa-angle-down\"></i></a>\n");
      out.write("                                <ul class=\"dropdown-menu\" role=\"menu\" aria-labelledby=\"ddlmenuItem\">\n");
      out.write("                                    <li role=\"presentation\"><a role=\"menuitem\" tabindex=\"-1\" href=\"feedback_sell_master_view.jsp\">Sell property view</a></li>\n");
      out.write("                                     <li role=\"presentation\"><a role=\"menuitem\" tabindex=\"-1\" href=\"feedback_rent_master_view.jsp\">Rent property view</a></li>\n");
      out.write("                                </ul>\n");
      out.write("                            </li> \n");
      out.write("                            \n");
      out.write("                            <li>\n");
      out.write("                                <a href=\"#\" class=\"dropdown-toggle\" id=\"ddlmenuItem\" data-toggle=\"dropdown\"> BOOKING VIEW <i class=\"fa fa-angle-down\"></i></a>\n");
      out.write("                                <ul class=\"dropdown-menu\" role=\"menu\" aria-labelledby=\"ddlmenuItem\">\n");
      out.write("                                    <li role=\"presentation\"><a role=\"menuitem\" tabindex=\"-1\" href=\"booking_sell_master_view.jsp\">SELL BOOKING</a></li>\n");
      out.write("                                    <li role=\"presentation\"><a role=\"menuitem\" tabindex=\"-1\" href=\"booking_rent_master_view.jsp\">RENT BOOKING</a></li>\n");
      out.write("                                </ul>\n");
      out.write("                            </li>\n");
      out.write("                            <li><a href=\"user_master_view.jsp\">USER VIEW</a></li>\n");
      out.write("                        </ul>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("    </section>\n");
      out.write("     <!-- MENU SECTION END-->\n");
      out.write('\n');
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
      out.write("\n");
      out.write("    <link rel=\"stylesheet\" href=\"dashboard.css\">\n");
      out.write("\n");
      out.write("<div class=\"content-wrapper\">\n");
      out.write("    <div class=\"container\">\n");
      out.write("        <div class=\"row pad-botm\">\n");
      out.write("            <div class=\"col-md-12\">\n");
      out.write("                <center><h4 class=\"header-line\">ADMIN DASHBOARD</h4></center>\n");
      out.write("                <div class=\"container\">\n");
      out.write("    <div class=\"row\">\n");
      out.write("        <div class=\"col-lg-3 col-sm-6\">\n");
      out.write("            <div class=\"card-box bg-blue\">\n");
      out.write("                <div class=\"inner\">\n");
      out.write("                    ");

                      stmt1=conn.createStatement();
                    rs1=stmt1.executeQuery("select count(*)from p_category");
                    if(rs1.next())
                    {
                        out.println("<h3>"+rs1.getInt(1)+"</h3>");
                    }
                    

                    
      out.write("\n");
      out.write("                    \n");
      out.write("                    <p>CATEGORY</p>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"icon\">\n");
      out.write("                    <i class=\"fa fa-graduation-cap\" aria-hidden=\"true\"></i>\n");
      out.write("                </div>\n");
      out.write("                <a href=\"p_category_view.jsp\" class=\"card-box-footer\">View More <i class=\"fa fa-arrow-circle-right\"></i></a>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("        <div class=\"col-lg-3 col-sm-6\">\n");
      out.write("            <div class=\"card-box bg-green\">\n");
      out.write("                <div class=\"inner\">\n");
      out.write("                    ");

                      stmt1=conn.createStatement();
                    rs1=stmt1.executeQuery("select count(*)from p_sub_category");
                    if(rs1.next())
                    {
                        out.println("<h3>"+rs1.getInt(1)+"</h3>");
                    }
                    

                    
      out.write("\n");
      out.write("                    \n");
      out.write("                    <p> SUB CATEGORY</p>\n");
      out.write("\n");
      out.write("                    \n");
      out.write("                </div>\n");
      out.write("                <div class=\"icon\">\n");
      out.write("                    <i class=\"fa fa-money\" aria-hidden=\"true\"></i>\n");
      out.write("                </div>\n");
      out.write("                <a href=\"p_sub_category_view.jsp\" class=\"card-box-footer\">View More <i class=\"fa fa-arrow-circle-right\"></i></a>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("        <div class=\"col-lg-3 col-sm-6\">\n");
      out.write("            <div class=\"card-box bg-orange\">\n");
      out.write("                <div class=\"inner\">\n");
      out.write("                    ");

                      stmt1=conn.createStatement();
                    rs1=stmt1.executeQuery("select count(*)from p_rent_details");
                    if(rs1.next())
                    {
                        out.println("<h3>"+rs1.getInt(1)+"</h3>");
                    }
                    

                    
      out.write("\n");
      out.write("                    \n");
      out.write("                    <p> RENT PROPERTY</p>\n");
      out.write("\n");
      out.write("                </div>\n");
      out.write("                <div class=\"icon\">\n");
      out.write("                    <i class=\"fa fa-users\"></i>\n");
      out.write("                </div>\n");
      out.write("                <a href=\"p_rent_view.jsp\" class=\"card-box-footer\">View More <i class=\"fa fa-arrow-circle-right\"></i></a>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("        <div class=\"col-lg-3 col-sm-6\">\n");
      out.write("            <div class=\"card-box bg-red\">\n");
      out.write("                <div class=\"inner\">\n");
      out.write("                    ");

                      stmt1=conn.createStatement();
                    rs1=stmt1.executeQuery("select count(*)from p_sell_details");
                    if(rs1.next())
                    {
                        out.println("<h3>"+rs1.getInt(1)+"</h3>");
                    }
                    

                    
      out.write("\n");
      out.write("                    \n");
      out.write("                    <p> SELL PROPERTY</p>\n");
      out.write("\n");
      out.write("                </div>\n");
      out.write("                <div class=\"icon\">\n");
      out.write("                    <i class=\"fa fa-users\"></i>\n");
      out.write("                </div>\n");
      out.write("                <a href=\"p_sell_view.jsp\" class=\"card-box-footer\">View More <i class=\"fa fa-arrow-circle-right\"></i></a>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("                    \n");
      out.write("                    \n");
      out.write("                    \n");
      out.write("\n");
      out.write("    </div>\n");
      out.write("    \n");
      out.write("             <div class=\"row\">\n");
      out.write("        <div class=\"col-lg-3 col-sm-6\">\n");
      out.write("            <div class=\"card-box bg-blue\">\n");
      out.write("                <div class=\"inner\">\n");
      out.write("                    ");

                      stmt1=conn.createStatement();
                    rs1=stmt1.executeQuery("select count(*)from admin_login");
                    if(rs1.next())
                    {
                        out.println("<h3>"+rs1.getInt(1)+"</h3>");
                    }
                    

                    
      out.write("\n");
      out.write("                    \n");
      out.write("                    <p>ADMIN</p>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"icon\">\n");
      out.write("                    <i class=\"fa fa-graduation-cap\" aria-hidden=\"true\"></i>\n");
      out.write("                </div>\n");
      out.write("                <a href=\"admin_home.jsp\" class=\"card-box-footer\">View More <i class=\"fa fa-arrow-circle-right\"></i></a>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("        <div class=\"col-lg-3 col-sm-6\">\n");
      out.write("            <div class=\"card-box bg-green\">\n");
      out.write("                <div class=\"inner\">\n");
      out.write("                    ");

                      stmt1=conn.createStatement();
                    rs1=stmt1.executeQuery("select count(*)from user_master");
                    if(rs1.next())
                    {
                        out.println("<h3>"+rs1.getInt(1)+"</h3>");
                    }
                    

                    
      out.write("\n");
      out.write("                    \n");
      out.write("                    <p> USER</p>\n");
      out.write("\n");
      out.write("                    \n");
      out.write("                </div>\n");
      out.write("                <div class=\"icon\">\n");
      out.write("                    <i class=\"fa fa-money\" aria-hidden=\"true\"></i>\n");
      out.write("                </div>\n");
      out.write("                <a href=\"user_master_view.jsp\" class=\"card-box-footer\">View More <i class=\"fa fa-arrow-circle-right\"></i></a>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("        <div class=\"col-lg-3 col-sm-6\">\n");
      out.write("            <div class=\"card-box bg-orange\">\n");
      out.write("                <div class=\"inner\">\n");
      out.write("                    ");

                      stmt1=conn.createStatement();
                    rs1=stmt1.executeQuery("select count(*)from booking_rent_master");
                    if(rs1.next())
                    {
                        out.println("<h3>"+rs1.getInt(1)+"</h3>");
                    }
                    

                    
      out.write("\n");
      out.write("                    \n");
      out.write("                    <p>BOOKING RENT PROPERTY</p>\n");
      out.write("\n");
      out.write("                </div>\n");
      out.write("                <div class=\"icon\">\n");
      out.write("                    <i class=\"fa fa-users\"></i>\n");
      out.write("                </div>\n");
      out.write("                <a href=\"booking_rent_master_view.jsp\" class=\"card-box-footer\">View More <i class=\"fa fa-arrow-circle-right\"></i></a>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("        <div class=\"col-lg-3 col-sm-6\">\n");
      out.write("            <div class=\"card-box bg-red\">\n");
      out.write("                <div class=\"inner\">\n");
      out.write("                    ");

                      stmt1=conn.createStatement();
                    rs1=stmt1.executeQuery("select count(*)from booking_sell_master");
                    if(rs1.next())
                    {
                        out.println("<h3>"+rs1.getInt(1)+"</h3>");
                    }
                    

                    
      out.write("\n");
      out.write("                    \n");
      out.write("                    <p>BOOKING SELL PROPERTY</p>\n");
      out.write("\n");
      out.write("                </div>\n");
      out.write("                <div class=\"icon\">\n");
      out.write("                    <i class=\"fa fa-users\"></i>\n");
      out.write("                </div>\n");
      out.write("                <a href=\"booking_sell_master_view.jsp\" class=\"card-box-footer\">View More <i class=\"fa fa-arrow-circle-right\"></i></a>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("    </div>\n");
      out.write("    \n");
      out.write("                    <div class=\"row\">\n");
      out.write("                        <div class=\"col-lg-3 col-sm-6\" style=\"margin-left: 294px\">\n");
      out.write("                            \n");
      out.write("                            \n");
      out.write("            <div class=\"card-box bg-green\">\n");
      out.write("                <div class=\"inner\">\n");
      out.write("                    ");

                      stmt1=conn.createStatement();
                    rs1=stmt1.executeQuery("select count(*)from feedback_rent_master");
                    if(rs1.next())
                    {
                        out.println("<h3>"+rs1.getInt(1)+"</h3>");
                    }
                    

                    
      out.write("\n");
      out.write("                    \n");
      out.write("                    <p>FEEDBACK RENT PROPERTY</p>\n");
      out.write("\n");
      out.write("                </div>\n");
      out.write("                <div class=\"icon\">\n");
      out.write("                    <i class=\"fa fa-users\"></i>\n");
      out.write("                </div>\n");
      out.write("                <a href=\"feedback_rent_master_view.jsp\" class=\"card-box-footer\">View More <i class=\"fa fa-arrow-circle-right\"></i></a>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("                    \n");
      out.write("                    \n");
      out.write("                    \n");
      out.write("                    <div class=\"col-lg-3 col-sm-6\">\n");
      out.write("            <div class=\"card-box bg-orange\">\n");
      out.write("                <div class=\"inner\">\n");
      out.write("                    ");

                      stmt1=conn.createStatement();
                    rs1=stmt1.executeQuery("select count(*)from feedback_sell_master");
                    if(rs1.next())
                    {
                        out.println("<h3>"+rs1.getInt(1)+"</h3>");
                    }
                    

                    
      out.write("\n");
      out.write("                    \n");
      out.write("                    <p>FEEDBACK SELL PROPERTY</p>\n");
      out.write("\n");
      out.write("                </div>\n");
      out.write("                <div class=\"icon\">\n");
      out.write("                    <i class=\"fa fa-users\"></i>\n");
      out.write("                </div>\n");
      out.write("                <a href=\"feedback_sell_master_view.jsp\" class=\"card-box-footer\">View More <i class=\"fa fa-arrow-circle-right\"></i></a>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("                        \n");
      out.write("                    </div> \n");
      out.write("                    \n");
      out.write("</div>\n");
      out.write("\n");
      out.write("\n");
      out.write("                \n");
      out.write("            </div>\n");
      out.write("            \n");
      out.write("            \n");
      out.write("        </div>\n");
      out.write("        \n");
      out.write("    </div>\n");
      out.write("    \n");
      out.write("</div>\n");
      out.write("\n");
      out.write("\n");
      out.write("<section class=\"footer-section\">\n");
      out.write("        <div class=\"container\">\n");
      out.write("            <div class=\"row\">\n");
      out.write("                <div class=\"col-md-12\">\n");
      out.write("                   &copy; 2014 Yourdomain.com |<a href=\"http://www.binarytheme.com/\" target=\"_blank\"  > Designed by : binarytheme.com</a> \n");
      out.write("                </div>\n");
      out.write("\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("    </section>\n");
      out.write("      <!-- FOOTER SECTION END-->\n");
      out.write("    <!-- JAVASCRIPT FILES PLACED AT THE BOTTOM TO REDUCE THE LOADING TIME  -->\n");
      out.write("    <!-- CORE JQUERY  -->\n");
      out.write("    <script src=\"assets/js/jquery-1.10.2.js\"></script>\n");
      out.write("    <!-- BOOTSTRAP SCRIPTS  -->\n");
      out.write("    <script src=\"assets/js/bootstrap.js\"></script>\n");
      out.write("      <!-- CUSTOM SCRIPTS  -->\n");
      out.write("    <script src=\"assets/js/custom.js\"></script>\n");
      out.write("  \n");
      out.write("</body>\n");
      out.write("</html>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
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

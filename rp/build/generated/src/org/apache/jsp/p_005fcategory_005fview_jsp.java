package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;
import javax.sql.*;
import com.oreilly.servlet.MultipartRequest;
import java.io.File;

public final class p_005fcategory_005fview_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

Connection conn; 
PreparedStatement pstmt1,pstmt2,pstmt3,pstmt4; 
ResultSet rs1,rs2,rs3,rs4,rs5;
Statement stmt1,stmt2; 
  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(3);
    _jspx_dependants.add("/connect.jsp");
    _jspx_dependants.add("/header.jsp");
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
      out.write("    <title>FREE RESPONSIVE HORIZONTAL ADMIN</title>\n");
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
      out.write("                    <img src=\"assets/img/logo.png\" />\n");
      out.write("                </a>\n");
      out.write("\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("            <div class=\"right-div\">\n");
      out.write("                <a href=\"#\" class=\"btn btn-danger pull-right\">LOG ME OUT</a>\n");
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
      out.write("                            <li><a href=\"index.html\" class=\"menu-top-active\">DASHBOARD</a></li>\n");
      out.write("                           \n");
      out.write("                            <li><a href=\"form.html\">FORMS</a></li>\n");
      out.write("                            <li>\n");
      out.write("                                <a href=\"#\" class=\"dropdown-toggle\" id=\"ddlmenuItem\" data-toggle=\"dropdown\">UI ELEMENTS <i class=\"fa fa-angle-down\"></i></a>\n");
      out.write("                                <ul class=\"dropdown-menu\" role=\"menu\" aria-labelledby=\"ddlmenuItem\">\n");
      out.write("                                    <li role=\"presentation\"><a role=\"menuitem\" tabindex=\"-1\" href=\"ui.html\">UI ELEMENTS</a></li>\n");
      out.write("                                     <li role=\"presentation\"><a role=\"menuitem\" tabindex=\"-1\" href=\"#\">EXAMPLE LINK</a></li>\n");
      out.write("                                </ul>\n");
      out.write("                            </li>\n");
      out.write("                            <li><a href=\"tab.html\">TABS & PANELS</a></li>\n");
      out.write("                             <li><a href=\"table.html\">TABLES</a></li>\n");
      out.write("                            <li><a href=\"blank.html\">BLANK PAGE</a></li>\n");
      out.write("\n");
      out.write("                        </ul>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("    </section>\n");
      out.write("     <!-- MENU SECTION END-->\n");
      out.write("\n");
      out.write("<script>\n");
      out.write("    function deletedata(p_cat_id)\n");
      out.write("    {\n");
      out.write("        if(confirm(\"Do YOU Really Want To Delete This Record?\"))\n");
      out.write("        {\n");
      out.write("            window.location.href=\"p_category_view.jsp?p_cat_id=\"+p_cat_id;\n");
      out.write("        }\n");
      out.write("    }\n");
      out.write("    \n");
      out.write("</script>\n");

    if(request.getParameter("p_cat_id")!=null)
    {
        int p_cat_id=Integer.parseInt(request.getParameter("p_cat_id"));
        pstmt1=conn.prepareStatement("delete from p_category where p_cat_id=?");
        pstmt1.setInt(1,p_cat_id);
        pstmt1.executeUpdate();
    }
    
   
      out.write("\n");
      out.write("<div class=\"content-wrapper\">\n");
      out.write("         <div class=\"container\">\n");
      out.write("        <div class=\"row pad-botm\">\n");
      out.write("            <div class=\"col-md-12\">\n");
      out.write("                <center><h4 class=\"header-line\">CATEGORY VIEW</h4></center>\n");
      out.write("                \n");
      out.write("                \n");
      out.write("                \n");
      out.write("                   </div>\n");
      out.write("            <div class=\"col-lg-12\">\n");
      out.write("                <table class=\"table table-bordered\">\n");
      out.write("                    <tr>\n");
      out.write("                        <th>CATEGORY ID</th>\n");
      out.write("                         <th>CATEGORY NAME</th>\n");
      out.write("                        <th>CATEGORY DESCRIPTION</th>\n");
      out.write("                         <th>CATEGORY PHOTO</th>\n");
      out.write("                          <th>EDIT</th>\n");
      out.write("                           <th>DELETE</th>\n");
      out.write("                    </tr>\n");
      out.write("                    ");

                        stmt1=conn.createStatement();
                        rs1=stmt1.executeQuery("select *from p_category");
                        while(rs1.next())
                            
                        {
                            int p_cat_id1=rs1.getInt(1);
                         
      out.write("\n");
      out.write("                         <tr>\n");
      out.write("                             <td>");
      out.print(p_cat_id1);
      out.write("</td>\n");
      out.write("                             <td>");
      out.print(rs1.getString(2));
      out.write("</td>\n");
      out.write("                             <td>");
      out.print(rs1.getString(3));
      out.write("</td>\n");
      out.write("                            \n");
      out.write("                       \n");
      out.write("                        <td><img class=\"img-responsive\" src=\"");
      out.print("http://localhost:8080/rp/cat_image/"+rs1.getString(4));
      out.write("\"></td>\n");
      out.write("                        <td><a class=\"btn btn-success\" href=\"edit_category.jsp?p_cat_id=");
      out.print(rs1.getInt(1));
      out.write("\">EDIT</a></td>\n");
      out.write("                        <td><button onclick=\"deletedata(");
      out.print(p_cat_id1);
      out.write(")\"class=\"btn btn-danger\">DELETE</button></td>\n");
      out.write("                         </tr>\n");
      out.write("                         ");
      
                          }
                        
      out.write("\n");
      out.write("\n");
      out.write("                </table>\n");
      out.write("                        \n");
      out.write("                        </div>\n");
      out.write("                        \n");
      out.write("        </div>\n");
      out.write("                        \n");
      out.write("         </div>\n");
      out.write("</div>\n");
      out.write("                        ");
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
      out.write("                        \n");
      out.write("                        \n");
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

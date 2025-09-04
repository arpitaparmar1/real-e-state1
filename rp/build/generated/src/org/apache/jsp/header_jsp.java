package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class header_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

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
      out.write("                    <img src=\"assets/img/logo8.png\" width=\"150px\" height=\"80px\" />\n");
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
      out.write("                             <li>\n");
      out.write("                                <a href=\"#\" class=\"dropdown-toggle\" id=\"ddlmenuItem\" data-toggle=\"dropdown\"> BOOKING VIEW <i class=\"fa fa-angle-down\"></i></a>\n");
      out.write("                                <ul class=\"dropdown-menu\" role=\"menu\" aria-labelledby=\"ddlmenuItem\">\n");
      out.write("                                    <li role=\"presentation\"><a role=\"menuitem\" tabindex=\"-1\" href=\"p_sell_view.jsp\">SELL BOOKING</a></li>\n");
      out.write("                                    <li role=\"presentation\"><a role=\"menuitem\" tabindex=\"-1\" href=\"p_rent_view.jsp\">RENT BOOKING</a></li>\n");
      out.write("                                </ul>\n");
      out.write("                            </li>\n");
      out.write("                            <li><a href=\"feedback_master_view.jsp\">FEEDBACK VIEW</a></li>\n");
      out.write("                            <li><a href=\"user_master_view.jsp\">USER VIEW</a></li>\n");
      out.write("                        </ul>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("    </section>\n");
      out.write("     <!-- MENU SECTION END-->\n");
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

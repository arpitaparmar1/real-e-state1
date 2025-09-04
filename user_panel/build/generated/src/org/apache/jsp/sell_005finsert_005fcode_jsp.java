package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;
import javax.sql.*;
import com.oreilly.servlet.MultipartRequest;
import java.io.File;

public final class sell_005finsert_005fcode_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

Connection conn; 
PreparedStatement pstmt1,pstmt2,pstmt3,pstmt4; 
ResultSet rs1,rs2,rs3,rs4,rs5;
Statement stmt1,stmt2; 
  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(1);
    _jspx_dependants.add("/connect.jsp");
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
      out.write('\n');

    MultipartRequest mrequest=new MultipartRequest(request,"D:/real_estate_property/rp/web/ps_image");
     
    File f=mrequest.getFile("ps_photo");
    String ps_photo=f.getName();
    
    
    String ps_name=mrequest.getParameter("ps_name");
    String p_cat_id=mrequest.getParameter("p_cat_id");
    String p_sub_id=mrequest.getParameter("p_sub_id");
    String ps_address=mrequest.getParameter("ps_address");
    String ps_city=mrequest.getParameter("ps_city");
    String ps_amount=mrequest.getParameter("ps_amount");
    String user_id=mrequest.getParameter("user_id");
    String ps_des=mrequest.getParameter("ps_des");
    String ps_size=mrequest.getParameter("ps_size");

    
    
    
    
    pstmt1=conn.prepareStatement("insert into p_sell_details(ps_name,p_cat_id,p_sub_id,ps_address,ps_city,ps_amount,user_id,ps_des,ps_size,ps_photo) values (?,?,?,?,?,?,?,?,?,?)");
    pstmt1.setString(1,ps_name);
    pstmt1.setString(2,p_cat_id);
    pstmt1.setString(3,p_sub_id);
    pstmt1.setString(4,ps_address);
    pstmt1.setString(5,ps_city);
    pstmt1.setString(6,ps_amount);
    pstmt1.setString(7,user_id);
    pstmt1.setString(8,ps_des);
    pstmt1.setString(9,ps_size);
    pstmt1.setString(10,ps_photo);

    
    
    
    
    
int i=pstmt1.executeUpdate();

if(i==1)
{
    out.println("<script type='text/javascript'>alert ('record inserted');</script>");
}
else
{
     out.println("<script type='text/javascript'>alert ('record not inserted');</script>");
}

pstmt1.close();
conn.close();



      out.write("\n");
      out.write("    \n");
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


<%@include file="connect.jsp"%>
<%
    MultipartRequest mrequest=new MultipartRequest(request,"D:/real_estate_property/rp/web/cat_image");
     
    File f=mrequest.getFile("p_photo");
    String p_photo=f.getName();
    
    
    String p_cat_name=mrequest.getParameter("p_cat_name");
    String p_cat_des=mrequest.getParameter("p_cat_des");
    
    
    
    
    pstmt1=conn.prepareStatement("insert into p_category(p_cat_name,p_cat_des,p_photo) values (?,?,?)");
    pstmt1.setString(1,p_cat_name);
    pstmt1.setString(2,p_cat_des);
    pstmt1.setString(3,p_photo);
    
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


%>
    

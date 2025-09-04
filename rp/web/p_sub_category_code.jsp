
<%@include file="connect.jsp"%>
<%
    MultipartRequest mrequest=new MultipartRequest(request,"D:/real_estate_property/rp/web/sub_image");
     
    File f=mrequest.getFile("p_sub_photo");
    String p_sub_photo=f.getName();
    
    
    String p_sub_name=mrequest.getParameter("p_sub_name");
    String p_sub_des=mrequest.getParameter("p_sub_des");
    int p_cat_id=Integer.parseInt(mrequest.getParameter("p_cat_id"));
    

    
    
    
    pstmt1=conn.prepareStatement("insert into p_sub_category(p_sub_name,p_sub_des,p_cat_id,p_sub_photo) values (?,?,?,?)");
    pstmt1.setString(1,p_sub_name);
    pstmt1.setString(2,p_sub_des);
    pstmt1.setInt(3,p_cat_id);
    pstmt1.setString(4,p_sub_photo);
    
int i=pstmt1.executeUpdate();

if(i==1)
{
   response.sendRedirect("p_sub_category_view.jsp");
}
else
{
     out.println("<script type='text/javascript'>alert ('record not inserted');</script>");
}

pstmt1.close();
conn.close();


%>
    


<%@include file="connect.jsp"%>
<%
    String p_photo;
    MultipartRequest mrequest=new MultipartRequest(request,"D:/real_estate_property/rp/web/cat_image");
     
    File f=mrequest.getFile("p_photo");
    
    if(f!=null)
    {
        p_photo=f.getName();
    }
    else
    {
        p_photo=mrequest.getParameter("old_photo");
    }
   
    
    
    String p_cat_name=mrequest.getParameter("p_cat_name");
    String p_cat_des=mrequest.getParameter("p_cat_des");
    int p_cat_id=Integer.parseInt(mrequest.getParameter("p_cat_id"));

    
    
    pstmt1=conn.prepareStatement("update p_category set p_cat_name=?,p_cat_des=?,p_photo=? where p_cat_id=?");
    pstmt1.setString(1,p_cat_name);
    pstmt1.setString(2,p_cat_des);
    pstmt1.setString(3,p_photo);
    pstmt1.setInt(4,p_cat_id);
    
int i=pstmt1.executeUpdate();

if(i==1)
{
    response.sendRedirect("p_category_view.jsp");
}
else
{
     out.println("<script type='text/javascript'>alert "+"('record not inserted');</scsript>");
}

pstmt1.close();
conn.close();


%>
    

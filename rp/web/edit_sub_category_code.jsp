
<%@include file="connect.jsp"%>
<%
    String p_sub_photo;
    MultipartRequest mrequest=new MultipartRequest(request,"D:/real_estate_property/rp/web/sub_image");
     
    File f=mrequest.getFile("p_sub_photo");
    
    if(f!=null)
    {
        p_sub_photo=f.getName();
    }
    else
    {
        p_sub_photo=mrequest.getParameter("old_photo");
    }
   
    
    
    String p_sub_name=mrequest.getParameter("p_sub_name");
    String p_sub_des=mrequest.getParameter("p_sub_des");
    int p_cat_id=Integer.parseInt(mrequest.getParameter("p_cat_id"));
     int p_sub_id=Integer.parseInt(mrequest.getParameter("p_sub_id"));

    
    
    pstmt1=conn.prepareStatement("update p_sub_category set "+"p_sub_name=?,p_sub_des=?,p_cat_id=?,p_sub_photo=? where p_sub_id=?");
    pstmt1.setString(1,p_sub_name);
    pstmt1.setString(2,p_sub_des);
        pstmt1.setInt(3,p_cat_id);

    pstmt1.setString(4,p_sub_photo);
    pstmt1.setInt(5,p_sub_id);
    
int i=pstmt1.executeUpdate();

if(i==1)
{
    response.sendRedirect("p_sub_category_view.jsp");
}
else
{
     out.println("<script type='text/javascript'>alert "+"('record not inserted');</scsript>");
}

pstmt1.close();
conn.close();


%>
    

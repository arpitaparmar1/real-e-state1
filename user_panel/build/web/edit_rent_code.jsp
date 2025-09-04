
<%@include file="connect.jsp"%>
<%
    String pr_photo;
    MultipartRequest mrequest=new MultipartRequest(request,"D:/real_estate_property/user_panel/web/image");
     
    File f=mrequest.getFile("pr_photo");
    
    if(f!=null)
    {
        pr_photo=f.getName();
    }
    else
    {
        pr_photo=mrequest.getParameter("old_photo");
    }
   
    String pr_name=mrequest.getParameter("pr_name");
    int p_cat_id=Integer.parseInt(mrequest.getParameter("p_cat_id"));
    int p_sub_id=Integer.parseInt(mrequest.getParameter("p_sub_id"));
    String pr_address=mrequest.getParameter("pr_address");
    String pr_city=mrequest.getParameter("pr_city");
    String pr_rent=mrequest.getParameter("pr_rent");
    int user_id=Integer.parseInt(mrequest.getParameter("user_id"));
    String pr_des=mrequest.getParameter("pr_des");
    String pr_size=mrequest.getParameter("pr_size");
    int pr_id=Integer.parseInt(mrequest.getParameter("pr_id"));
    
    



    
    
    
    pstmt1=conn.prepareStatement("update p_rent_details set pr_name=?,p_cat_id=?,p_sub_id=?,pr_address=?,pr_city=?,pr_rent=?,user_id=?,pr_des=?,pr_size=?,pr_photo=? where pr_id=?");
    pstmt1.setString(1,pr_name);
    pstmt1.setInt(2,p_cat_id);
    pstmt1.setInt(3,p_sub_id);
    pstmt1.setString(4,pr_address);
    pstmt1.setString(5,pr_city);
    pstmt1.setString(6,pr_rent);
    pstmt1.setInt(7,user_id);
    pstmt1.setString(8,pr_des);
    pstmt1.setString(9,pr_size);
    pstmt1.setString(10,pr_photo);
     pstmt1.setInt(11,pr_id);

int i=pstmt1.executeUpdate();

if(i==1)
{
    response.sendRedirect("rent_view.jsp");
}
else
{
     out.println("<script type='text/javascript'>alert "+"('record not inserted');</scsript>");
}

pstmt1.close();
conn.close();

%>
    


<%@include file="connect.jsp"%>
<%
    MultipartRequest mrequest=new MultipartRequest(request,"D:/real_estate_property/rp/web/ps_image");
     
    File f=mrequest.getFile("pr_photo");
    String pr_photo=f.getName();
    
    
    String pr_name=mrequest.getParameter("pr_name");
    String p_cat_id=mrequest.getParameter("p_cat_id");
    String p_sub_id=mrequest.getParameter("p_sub_id");
    String pr_address=mrequest.getParameter("pr_address");
    String pr_city=mrequest.getParameter("pr_city");
    String pr_rent=mrequest.getParameter("pr_rent");
    String user_id=mrequest.getParameter("user_id");
    String pr_des=mrequest.getParameter("pr_des");
    String pr_size=mrequest.getParameter("pr_size");

    
    
    
    
    pstmt1=conn.prepareStatement("insert into p_rent_details(pr_name,p_cat_id,p_sub_id,pr_address,pr_city,pr_rent,user_id,pr_des,pr_size,pr_photo) values (?,?,?,?,?,?,?,?,?,?)");
    pstmt1.setString(1,pr_name);
    pstmt1.setString(2,p_cat_id);
    pstmt1.setString(3,p_sub_id);
    pstmt1.setString(4,pr_address);
    pstmt1.setString(5,pr_city);
    pstmt1.setString(6,pr_rent);
    pstmt1.setString(7,user_id);
    pstmt1.setString(8,pr_des);
    pstmt1.setString(9,pr_size);
    pstmt1.setString(10,pr_photo);

    
    
    
    
    
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
    

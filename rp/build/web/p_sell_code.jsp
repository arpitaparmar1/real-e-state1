
<%@include file="connect.jsp"%>
<%
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


%>
    

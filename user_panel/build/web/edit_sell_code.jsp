
<%@include file="connect.jsp"%>
<%
    String ps_photo;
    MultipartRequest mrequest=new MultipartRequest(request,"D:/real_estate_property/user_panel/web/image");
     
    File f=mrequest.getFile("ps_photo");
    
    if(f!=null)
    {
        ps_photo=f.getName();
    }
    else
    {
        ps_photo=mrequest.getParameter("old_photo");
    }
   
    String ps_name=mrequest.getParameter("ps_name");
    int p_cat_id=Integer.parseInt(mrequest.getParameter("p_cat_id"));
    int p_sub_id=Integer.parseInt(mrequest.getParameter("p_sub_id"));
    String ps_address=mrequest.getParameter("ps_address");
    String ps_city=mrequest.getParameter("ps_city");
    String ps_amount=mrequest.getParameter("ps_amount");
    int user_id=Integer.parseInt(mrequest.getParameter("user_id"));
    String ps_des=mrequest.getParameter("ps_des");
    String ps_size=mrequest.getParameter("ps_size");
    int ps_id=Integer.parseInt(mrequest.getParameter("ps_id"));
    
    



    
    
    
    pstmt1=conn.prepareStatement("update p_sell_details set ps_name=?,p_cat_id=?,p_sub_id=?,ps_address=?,ps_city=?,ps_amount=?,user_id=?,ps_des=?,ps_size=?,ps_photo=? where ps_id=?");
    pstmt1.setString(1,ps_name);
    pstmt1.setInt(2,p_cat_id);
    pstmt1.setInt(3,p_sub_id);
    pstmt1.setString(4,ps_address);
    pstmt1.setString(5,ps_city);
    pstmt1.setString(6,ps_amount);
    pstmt1.setInt(7,user_id);
    pstmt1.setString(8,ps_des);
    pstmt1.setString(9,ps_size);
    pstmt1.setString(10,ps_photo);
     pstmt1.setInt(11,ps_id);

int i=pstmt1.executeUpdate();

if(i==1)
{
    response.sendRedirect("sell_view.jsp");
}
else
{
     out.println("<script type='text/javascript'>alert "+"('record not inserted');</scsript>");
}

pstmt1.close();
conn.close();

%>
    

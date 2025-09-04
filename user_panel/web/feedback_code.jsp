
<%@include file="connect.jsp"%>
<%@page import="java.util.Date" %>
<%@page import="java.text.SimpleDateFormat" %>
<%
   
    String fd_msg=request.getParameter("fd_msg");
    int user_id=Integer.parseInt(request.getParameter("user_id"));
    int pr_id=Integer.parseInt(request.getParameter("pr_id"));
    int ps_id=Integer.parseInt(request.getParameter("ps_id"));
    

    SimpleDateFormat df=new SimpleDateFormat("dd-MM-yy");
    String fd_date=df.format(new Date());
    
    
    
    
    pstmt1=conn.prepareStatement("insert into feedback_master(user_id,fd_msg,fd_date,pr_id,ps_id) values (?,?,?,?,?)");
    pstmt1.setString(1,fd_msg);
    pstmt1.setString(2,fd_date);
    pstmt1.setInt(3,user_id);
    pstmt1.setInt(4,pr_id);
    pstmt1.setInt(5,ps_id);
    
int i=pstmt1.executeUpdate();

if(i==1)
{
    out.println("r_more_details.jsp");
}
else
{
     out.println("record not inserted");
}

pstmt1.close();
conn.close();


%>
    

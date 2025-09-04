<%@include file="connect.jsp" %>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%
    int user_id=Integer.parseInt(request.getParameter("user_id"));
    SimpleDateFormat sf=new SimpleDateFormat("dd-MM-yy");
    String b_date=sf.format(new Date());
    
            
    
        if(request.getParameter("ps_id")!=null)
        {
            int ps_id=Integer.parseInt(request.getParameter("ps_id"));
            
            pstmt1=conn.prepareStatement("INSERT INTO booking_sell_master(user_id,ps_id,booking_s_date) VALUES (?,?,?)");
            pstmt1.setInt(1,user_id);
            pstmt1.setInt(2,ps_id);
            pstmt1.setString(3,b_date);
            
            int i=pstmt1.executeUpdate();
            
            if(i==1)
            {
                response.sendRedirect("booking_sell_master.jsp");
            }
            else
            {
                out.println("Booking Not Done..");
            }
            
        }
        if(request.getParameter("pr_id")!=null)
        {
            int pr_id=Integer.parseInt(request.getParameter("pr_id"));
            
            pstmt1=conn.prepareStatement("INSERT INTO booking_rent_master(user_id,pr_id,booking_r_date) VALUES (?,?,?)");
            pstmt1.setInt(1,user_id);
            pstmt1.setInt(2,pr_id);
            pstmt1.setString(3,b_date);
            
            int i=pstmt1.executeUpdate();
            
            if(i==1)
            {
                response.sendRedirect("booking_rent_master.jsp");

            }
            else
            {
                out.println("Booking Not Done..");
            }
            
        }
%>  
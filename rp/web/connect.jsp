<%@page import="java.sql.*" %>
<%@page import="javax.sql.*" %>
<%@page import="com.oreilly.servlet.MultipartRequest" %>
<%@page import="java.io.File" %>



<%!Connection conn; %>
<%!PreparedStatement pstmt1,pstmt2,pstmt3,pstmt4; %>
<%!ResultSet rs1,rs2,rs3,rs4,rs5;%>
<%!Statement stmt1,stmt2; %>


<%
    Class.forName("com.mysql.jdbc.Driver");
    conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/real_estate_property","root","");
    

%>

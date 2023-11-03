<%-- 
    Document   : UpdateSalSuccess
    Created on : 20 Mar, 2019, 1:08:02 AM
    Author     : sruth
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@page session="true"%>
<!DOCTYPE html>
<html>
    <head><link href=Payroll.css rel=stylesheet type=text/css>
    </head>
    <body>
        <%
            try { 
                 String url = "jdbc:mysql://localhost:3306/Payroll"; 
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection(url,"root",""); 
            Statement st = conn.createStatement(); 
            String sql = "update EmployeeSal set basicsal=? where empid=?";
 
            PreparedStatement ps = conn.prepareStatement(sql);
            String empid=""+request.getParameter("t1");
            String bs=""+request.getParameter("t2");
          
               ps.setString(1,bs);
               ps.setString(2,empid);
               
               int i=ps.executeUpdate();
               if(i>0)
               {
                     out.println("<center>");
                 out.println("<div style='background-position-y: 350px;background-size: 550px;background-repeat: no-repeat;border: solid;color: black;height:700px;width:700px;background-image: url(\"https://mickitheavonmom.files.wordpress.com/2015/01/keytosuccess.jpeg\")'>");
                out.println("<font size=8>");
                out.println("<br>");
                out.println("<font color=blue>Basic Salary has been updated succesfully!</font>");
                out.println("<br>");
                out.println("<br>");
                out.println("<a href=UpdateRecord.jsp>BACK</a>");
                out.println("<br>");
                out.println("</font>");
                out.println("</div>");
                out.println("</center>");
                
                  conn.close();
               }
               else
               {
                   out.println("Error");
               }
               
            }
            catch (Exception e) 
		{ 
                    System.err.println("Got an exception! "); 
                    System.err.println(e.getMessage()); 
                }
%>
    </body>
</html>

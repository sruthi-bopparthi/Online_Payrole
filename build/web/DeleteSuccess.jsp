<%-- 
    Document   : DeleteSuccess
    Created on : 20 Mar, 2019, 9:50:29 PM
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
                 String url = "jdbc:mysql://localhost:3306/payroll"; 
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection(url,"root",""); 
            Statement st = conn.createStatement(); 
            String sql = "delete from employeesal where Emp_ID=?";
 
            PreparedStatement ps = conn.prepareStatement(sql);
            String empid=""+request.getParameter("t1");
           
              
               ps.setString(1,empid);
               
               int i=ps.executeUpdate();
               
               if(i>0)
               {
                     out.println("<center>");
                 out.println("<div id=box>");
                 out.println("<font size=8>");
                out.println("<br>");
                out.println("<font color=blue>Record has been deleted succesfully!</font>");
                out.println("<br>");
                out.println("<br>");
                out.println("<a href=Actions.jsp>BACK</a>");
                out.println("<br>");
                out.println("</font>");
                out.println("</div>");
                out.println("</center>");
                
                  conn.close();
               }
               else
               {
                   out.println("<center>");
                   out.println("<div id=box><h1>Error");
                   out.println("<br><Br><a href=Actions.jsp>BACK</a></h1></div>");
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

<%-- 
    Document   : successfulmed
    Created on : Aug 6, 2017, 7:15:28 PM
    Author     : ANUSHA
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
            String sql = "update EmployeeSal set Loan_Recovery=? where Emp_ID=?";
 
            PreparedStatement ps = conn.prepareStatement(sql);
            String empid=""+request.getParameter("t1");
            String md=""+request.getParameter("t2");
          
               ps.setString(1,md);
               ps.setString(2,empid);
               
               int i=ps.executeUpdate();
               if(i>0)
               {
                     out.println("<center>");
                 out.println("<div id=box>");
                 out.println("<font size=8>");
                out.println("<br>");
                out.println("Loan Recovery has been updated succesfully!");
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
                   out.println("<center>");
                 out.println("<div id=box>");
                   out.println("Error</div>");
               }
               
            }
            catch (Exception e) 
		{ 
                   
                    System.err.println(e.getMessage()); 
                }
%>
    </body>
</html>

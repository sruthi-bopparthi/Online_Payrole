<%-- 
    Document   : PayslipSuccess
    Created on : 19 Mar, 2019, 11:58:36 PM
    Author     : sruth
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
    </head>
    <body>
        <%@page import="java.sql.*"%>
        <%@page import="java.io.*"%>
        <%@page import="javax.servlet.http.HttpSession"%>
        <%@page session="true"%>
        
        <%
            try { 
                 String url = "jdbc:mysql://localhost:3306/Payroll"; 
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection(url,"root",""); 
            Statement st = conn.createStatement(); 
            String sql = "INSERT INTO EmployeeSal VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
 
            PreparedStatement ps = conn.prepareStatement(sql);
            String empid=""+request.getParameter("e1");
            String bs=""+request.getParameter("e2");
            String tw=""+request.getParameter("e3");
            String nw=""+request.getParameter("e4");
            String lt=""+request.getParameter("e5");
            String bl=""+request.getParameter("e6");
            String ma=""+request.getParameter("e7");
            String ta=""+request.getParameter("e8");
            String lr=""+request.getParameter("e9");
             String hl=""+request.getParameter("e10");
            String it=""+request.getParameter("e11");
            String pf=""+request.getParameter("e12");
            String da=""+request.getParameter("e13");
            String hra=""+request.getParameter("e14");
            String tp=""+request.getParameter("e15");
		
             String dd=""+request.getParameter("e14");
            String np=""+request.getParameter("e15");
            
            
               out.println();
                ps.setString(1,empid);
               ps.setString(2,bs);
               ps.setString(3,tw);
               ps.setString(4,nw);
               ps.setString(5,lt);
               ps.setString(6,bl);
               ps.setString(7,ma);
               ps.setString(8, ta);
               ps.setString(9, lr);
                ps.setString(10, hl);
               ps.setString(11, it);
               ps.setString(12, pf);
               ps.setString(13, da);
               ps.setString(14, hra);
                ps.setString(15, tp);
                ps.setString(16, dd);
                ps.setString(17, np);
               int i=ps.executeUpdate();
               if(i>0)
               {
                   out.println("<head><link href=Payroll.css rel=stylesheet type=text/css></head><body>");
                     out.println("<center>");
                     out.println("<div id=box");
                     out.println("<font size=8>");
                out.println("<br>");
                out.println("<h1>Details have been inserted succesfully!</h1>");
                out.println("<br>");
                out.println("<br>");
                out.println("<a href=Actions.jsp><h1>BACK</h1></a>");
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
                    
                    System.out.println(e.getMessage()); 
                }
%>
    </body>
</html>

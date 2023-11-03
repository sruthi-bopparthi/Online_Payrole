<%-- 
    Document   : SignupDatabase
    Created on : 19 Mar, 2019, 11:28:27 PM
    Author     : sruth
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@page import="java.io.*"%>
<%@page import="javax.servlet.http.HttpSession"%>
<%@page session="true"%>
<!DOCTYPE html>
<html>
    <body>
<%
            try { 
                 String url = "jdbc:mysql://localhost:3306/Payroll"; 
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection(url,"root",""); 
            Statement st = conn.createStatement(); 
            String sql = "INSERT INTO Employee VALUES (?,?,?,?,?,?,?,?,?,?,?)";
 
            PreparedStatement ps = conn.prepareStatement(sql);
            String empid=""+request.getParameter("id");
            String fname=""+request.getParameter("fname");
            String lname=""+request.getParameter("lname");
            String gen=""+request.getParameter("gender");
            String dob=""+request.getParameter("dob");
             String pc=""+request.getParameter("pn");
            String des=""+request.getParameter("designation");
            String doj=""+request.getParameter("doj");
            String dep=""+request.getParameter("dept");
            String id=""+request.getParameter("lid");
            String pw=""+request.getParameter("password");
					
               out.println();
                ps.setString(1, empid);
               ps.setString(2, fname);
               ps.setString(3, lname);
               ps.setString(4, gen);
               ps.setString(5, dob);
                ps.setString(6, pc);
               ps.setString(7, des);
               ps.setString(8, doj);
               ps.setString(9, dep);
               ps.setString(10, id);
                ps.setString(11, pw);
               int i=ps.executeUpdate();
               if(i>0)
               {
                   out.println("<head><link href=Payroll.css rel=stylesheet type=text/css></head><body>");
                     out.println("<center>");
                 out.println("<div id=box");
                out.println("<font size=8>");
                out.println("<br>");
                out.println("<h1>You are signed up successfully. Please click on login!</h1>");
                out.println("<br>");
                out.println("<br>");
                out.println("<h1><a href=EmployeeLogin.jsp>LOGIN IN</h1>");
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


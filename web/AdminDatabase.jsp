<%-- 
    Document   : AdminDatabase
    Created on : 19 Mar, 2019, 10:14:55 PM
    Author     : sruth
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@page session="true"%>
<!DOCTYPE html>
<%
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head><link href=Payroll.css rel=stylesheet type=text/css>");         
            out.println("</head>");
            out.println("<body>");
            try { 
            String url = "jdbc:mysql://localhost:3306/Payroll"; 
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection(url,"root",""); 
            Statement st = conn.createStatement(); 
            PreparedStatement p1 = conn.prepareStatement("select id,password from admin where id=? and password=?");
            String id=request.getParameter("n");
            String pw=request.getParameter("p");
            p1.setString(1, id);
            p1.setString(2, pw);
            ResultSet result = p1.executeQuery();
            if(result.next()){
                response.sendRedirect("AdminSuccessful.jsp");
            }else{
                
                out.println("<center>");
                out.println("<div id=box");
                out.println("<font size=20; color=red>");
                out.println("<h2>Please enter correct username and password!</h2>");
                out.println("<br>");
                out.println("<br>");
                out.println("<form action=AdminLogin.jsp method=get>");
                out.println("<input type=submit value=Back style='height:70px;width:150px;font-size:25px'/>");   
                out.println("</form>");
                out.println("</font>");
                out.println("</div>");
                out.println("</center>");
            }
            session.setAttribute("id", id);
        }
            catch (Exception e) 
		{ 
                    
                    System.out.println(e.getMessage()); 
                }
            out.println("</body>");
            out.println("</html>");
    
%>


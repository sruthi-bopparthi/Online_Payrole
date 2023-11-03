<%-- 
    Document   : SelectUser
    Created on : 19 Mar, 2019, 9:55:27 PM
    Author     : sruth
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href=Payroll.css rel=stylesheet type=text/css>
    </head>
    <body>
        <%
            String user=request.getParameter("user");
            if(user.equals("Admin"))
                    {
                        response.sendRedirect("AdminLogin.jsp");
                    }
            else
                    {
                       response.sendRedirect("EmployeeLogin.jsp");    
                    }
        %>
    </body>
</html>


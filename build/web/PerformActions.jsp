<%-- 
    Document   : PerformActions
    Created on : 19 Mar, 2019, 11:47:59 PM
    Author     : sruth
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String action=request.getParameter("action");
            if(action.equals("insert"))
                    {
                        response.sendRedirect("AdminInsert.jsp");
                    }
            else if(action.equals("delete"))
                    {
                        response.sendRedirect("AdminDelete.jsp");
                    }
            else if(action.equals("select"))
                    {
                        response.sendRedirect("AdminSelect.jsp");
                    }
            else
                    {
                       response.sendRedirect("AdminUpdate.jsp");    
                    }
        %>
    </body>
</html>


<%-- 
    Document   : UpdateActions
    Created on : 20 Mar, 2019, 1:03:04 AM
    Author     : sruth
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head><link href=Payroll.css rel=stylesheet type=text/css>
    </head>
    <body>
       <%
            String action=request.getParameter("action");
            if(action.equals("basicsal"))
                    {
                        response.sendRedirect("UpdateSal.jsp");
                    }
            else if(action.equals("medical"))
                    {
                        response.sendRedirect("UpdateMed.jsp");
                    }
            
            else if(action.equals("loanrecovery"))
                    {
                        response.sendRedirect("UpdateLoan.jsp");
                    }
            else
                    {
                       response.sendRedirect("UpdateHousing.jsp");    
                    }
        %>
    </body>
</html>

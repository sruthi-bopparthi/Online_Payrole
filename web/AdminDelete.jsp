<%-- 
    Document   : AdminDelete
    Created on : 19 Mar, 2019, 11:50:32 PM
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
        <center>
         <div id="box">
            <center><h1><font style='color: aqua; background: black'>PLEASE ENTER A VALUE</font></h1></center>
         <form action="DeleteSuccess.jsp" method="get">
         <table>
           <tr>
                <td>
                <font size='5'>Enter Employee id
                </td>
                <td>
                    <font size="5">:<input required type='text' name='t1' style='height:25px; width:150px; font-size:15pt'/>
                <td>
            </tr>
            <tr><td></td></tr> <tr><td></td></tr> <tr><td></td></tr><tr><td></td></tr> <tr><td></td></tr> <tr><td></td></tr>
            
         </table>
                <input type='submit' name='b1' value='SUBMIT' style='height:50px; width:75px; font-size:12pt'/>
                <input type='reset' name='b2' value='RESET' style='height:50px; width:75px; font-size:12pt'/><br><br>
        </form>
         </div>
        </center>
    </body>
</html>

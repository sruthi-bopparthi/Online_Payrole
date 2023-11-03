<%-- 
    Document   : UpdateSal
    Created on : 20 Mar, 2019, 1:04:24 AM
    Author     : sruth
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head><link href=Payroll.css rel=stylesheet type=text/css>
    </head>
    <body>
       <center>
        <div id="box">
           <center><h1>UPDATE SALARY</h1></center>
    <form action='successfulsal.jsp' method='post'>
        <table>
            <tr>
                <td width="350px">
                <font size='5'>Employee ID
                </td>
                <td>
                    <font size="5"><input required type='text' name='t1' style='height:25px; width:150px; font-size:15pt'/>
                <td>
            </tr>
            <tr><td></td></tr> <tr><td></td></tr> <tr><td></td></tr><tr><td></td></tr> <tr><td></td></tr> <tr><td></td></tr>
            <tr>
                <td>
                <font size='5'>Basic Salary
                </td>
                <td>
                <font size="5"><input required type='text' name='t2' style='height:25px; width:150px; font-size:15pt'/>
                </td>
             </tr>
        </table> <br><br>       
                <input type='submit' name='b1' value='SUBMIT' style='height:50px; width:75px; font-size:12pt'/>
                <input type='reset' name='b2' value='RESET' style='height:50px; width:75px; font-size:12pt'/><br><br>
                <br><br>
                
        </form>
        </div>
    </center>
    </body>
</html>


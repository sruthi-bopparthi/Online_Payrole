<%-- 
    Document   : UpdateLoan
    Created on : 20 Mar, 2019, 1:04:47 AM
    Author     : sruth
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@page session="true"%>
<!DOCTYPE html>
<html>
    <head><link href=Payroll.css rel=stylesheet type=text/css>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
     
       <center>
        <div id="box"> 
            <center><h1>UPDATE MEDICAL ALLOWANCE</h1></center>
    <form action='successfulLoan.jsp' method='post'>
        
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
            <tr>
                <td>
                <font size='5'>Enter Loan Recovery
                </td>
                <td>
                <font size="5">:<input required type='text' name='t2' style='height:25px; width:150px; font-size:15pt'/>
                </td>
             </tr>
        </table> <br><br>    
                <input type='submit' name='b1' value='SUBMIT' style='height:50px; width:75px; font-size:12pt'/>
                <input type='reset' name='b2' value='RESET' style='height:50px; width:75px; font-size:12pt'/><br><br>
        </form>
        </div>
    </center>
    </body>
</html>

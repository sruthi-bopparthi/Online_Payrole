<%-- 
    Document   : EmployeeSuccessfull
    Created on : 19 Mar, 2019, 11:03:39 PM
    Author     : sruth
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@page session="true"%>
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
             <br>              
                   <font size="8">EMPLOYEE is logged in successfully!<br><br>
                   <!--<a href="empid.jsp">PLEASE CLICK TO DISPLAY DETAILS</a>-->
                                <br><br>
                   </font>
                  
       <form action='EmployeePayslip.jsp' method='post'>
         <table>
           <tr>
                <td>
                <font size='5'>To check your Details, Enter your Employee ID provided by the company
                </td>
                <td>
                    <font size="5">:<input type='text' name='id' style='height:25px; width:150px; font-size:15pt'/>
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

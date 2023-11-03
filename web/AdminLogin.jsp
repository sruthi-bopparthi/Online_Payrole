<%-- 
    Document   : AdminLogin
    Created on : 19 Mar, 2019, 10:00:24 PM
    Author     : sruth
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="Payroll.css" rel="stylesheet" type="text/css">
        <title>JSP Page</title>
    </head>
    <body>
    <center>
            <div id="box">
                <a href='Payroll.jsp'><h2 style="text-align: left">  PAYROLL</h2></a>
        
    <center><h1><font style='color: black;'> WELCOME TO LOGIN PAGE</font></h1></center>
    <form action="AdminDatabase.jsp" method="get">
                <font size='5'>Login Id: &nbsp;<input required type='text' name='n' style='height:25px; width:150px; font-size:15pt'/><br><br><br>
                <font size='5'>Password: &nbsp;<input required type='password' name='p' style='height:25px; width:150px; font-size:15pt'/><br><br><br>
                <input type='submit' name='b1' value='LOGIN' style='height:50px; width:75px; font-size:12pt'/>
                <input type='reset' name='b2' value='RESET' style='height:50px; width:75px; font-size:12pt'/></font><br><br>
                
                <br><br>
        </form>
       
            </div>
    </center>
    </body>
</html>

<%--  
    Document   : Payroll
    Created on : 16 Mar, 2019, 11:34:58 PM
    Author     : sruthlm
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%> 

<!DOCTYPE html>
<html>
    <head>
        <title></title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width">
        <link href="Payroll.css" rel="stylesheet" type="text/css">
       
</head>

    <body>
        <center>
        <div id="box">
            <center><h1><font style='font-size: 40px'>PLEASE SELECT TYPE OF USER</font></h1></center>
     <form action="SelectUser.jsp" method="get">
        <table>
            <tr>
                <td>
                    <input type="radio" name="user" value="Admin" style='font-size: 20px;'></td><td><font size=8>Admin Login</font>&nbsp;&nbsp;&nbsp;&nbsp;</td><br>
            
                <td>
                    <input type="radio" name="user" value="Employee" style='font-size: 20px;'></td><td><font size=8>Employee Login</td>
            </tr>
           
          </font>
        </table>
        <br><br>
        <input type=submit value=Submit style='height:50px; width:150px; font-size:16pt;background-color:black; color:aqua'>&nbsp;&nbsp;&nbsp;&nbsp;
        <input type=submit method='post' formaction="welcome.jsp" value=Back style='height:50px; width:150px; font-size:16pt;background-color:black; color:aqua'>
    </form>
        </center>
    </div>
    </body>
</html>


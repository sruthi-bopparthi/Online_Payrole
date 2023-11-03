<%-- 
    Document   : AdminUpdate
    Created on : 19 Mar, 2019, 11:50:56 PM
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
            <center><h1>PLEASE SELECT AN ACTION</h1></center>
         <form action='UpdateActions.jsp' method='post'>
         <table>
            <tr>
                <td>
                    <input type="radio" name="action" value="basicsal" style='height:25px; width:50px;'></td><td><font size=8>Basic Salary</font></td><br>
            </tr>
            <tr>
                <td>
                    <input type="radio" name="action" value="medical" style='height:25px; width:50px;'></td><td><font size=8>Medical Allowance</td>
            </tr>
           
             <tr>
                <td>
                    <input type="radio" name="action" value="loanrecovery" style='height:25px; width:50px;'></td><td><font size=8>Loan Recovery</td>
            </tr>
             <tr>
                <td>
                    <input type="radio" name="action" value="housing" style='height:25px; width:50px;'></td><td><font size=8>Housing Loan</td>
            </tr>
          </font>
        </table>
        <br><br>
        <input type=submit method='post' value=Submit style='height:50px; width:150px; font-size:16pt;background-color:black; color:aqua'>&nbsp;&nbsp;&nbsp;&nbsp;
        <input type=submit method='post' formaction="Actions.jsp" value=Back style='height:50px; width:150px; font-size:16pt;background-color:black; color:aqua'>&nbsp;&nbsp;&nbsp;&nbsp;
        <input type=submit method='post' formaction="welcome.jsp" value=HomePage style='height:50px; width:150px; font-size:16pt;background-color:black; color:aqua'>
    </form>
         </div>
        </center>
    </body>
</html>

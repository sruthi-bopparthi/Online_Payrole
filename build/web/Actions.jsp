<%-- 
    Document   : Actions
    Created on : 19 Mar, 2019, 11:44:17 PM
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
            <center><h1><font style='font-size: 50px'>Select Operation you want to perform</font></h1></center>
     <form action='PerformActions.jsp' method='post'>
        <table>
            <tr>
                <td>
                    <input type="radio" name="action" value="insert" style='height:25px; width:50px;'></td><td><font size=8>Insert Record</font></td><br>
            </tr>
            <tr>
                <td>
                    <input type="radio" name="action" value="update" style='height:25px; width:50px;'></td><td><font size=8>Update Record</td>
            </tr>
            <tr>
                <td>
                    <input type="radio" name="action" value="delete" style='height:25px; width:50px;'></td><td><font size=8>Delete Record</td>
            </tr>
             <tr>
                <td>
                    <input type="radio" name="action" value="select" style='height:25px; width:50px;'></td><td><font size=8>View Record</td>
            </tr>
          </font>
        </table>
        <br><br>
        <input type=submit method='post' value=Submit style='height:50px; width:150px; font-size:16pt;background-color:black; color:aqua'>&nbsp;&nbsp;&nbsp;&nbsp;
        <input type=submit method='post' formaction="index.jsp" value=Back style='height:50px; width:150px; font-size:16pt;background-color:black; color:aqua'>&nbsp;&nbsp;&nbsp;&nbsp;
        <input type=submit method='post' formaction="welcome.jsp" value=Payroll style='height:50px; width:150px; font-size:16pt;background-color:black; color:aqua'>
    </form>
        </center>
    </body>
</html>
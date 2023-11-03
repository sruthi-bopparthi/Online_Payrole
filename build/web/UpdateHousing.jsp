<%-- 
    Document   : UpdateHousing
    Created on : 20 Mar, 2019, 1:04:58 AM
    Author     : sruth
--%>
<%-- 
    Document   : updateSal
    Created on : Aug 6, 2017, 7:04:26 PM
    Author     : ANUSHA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head><link href=Payroll.css rel=stylesheet type=text/css>
    </head>
    <body>
       <center>
        <div style='border-style: solid; width: 550px; height: 350px;background-position-y: 150px;background-size: 200px;background-repeat: no-repeat;background-image:url("https://www.carstickers.com/prodimages/2963_decorative_corner_border_sticker_decal.jpg")'>
    <center><h1><font style='color: aqua; background: black'>UPDATE MEDICAL ALLOWANCE</font></h1></center>
    <form action='successfulHousing.jsp' method='post'>
        
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
                <font size='5'>Enter Housing Loan
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


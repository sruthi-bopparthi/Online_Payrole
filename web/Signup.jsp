<%-- 
    Document   : Signup
    Created on : 19 Mar, 2019, 11:13:07 PM
    Author     : sruth
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link href=Payroll.css rel=stylesheet type=text/css>
    </head>
    <body>
    <center>
        <div id="box">
            <center><h1> SIGN UP </h1></center>
         <form action='SignupDatabase.jsp' method='post'>
            <table>
                <tr>
                    <td>
                        <font size="5">Employee ID
                    </td>
                    <td>
                        <font size="5"> <input required type="text" name="id" style="height:25px; width:150px; font-size:15pt"/>
                    </td>
                </tr>
                    <tr><td></td></tr> <tr><td></td></tr> <tr><td></td></tr><tr><td></td></tr> <tr><td></td></tr> <tr><td></td></tr>
                    <tr>
                    <td>
                        <font size="5">First Name
                    </td>
                    <td>
                        <font size="5"> <input required type="text" name="fname" style="height:25px; width:150px; font-size:15pt"/>
                    </td>
                </tr>
                 <tr><td></td></tr> <tr><td></td></tr> <tr><td></td></tr><tr><td></td></tr> <tr><td></td></tr> <tr><td></td></tr>
                 <tr>
                    <td>
                        <font size="5">Last Name
                    </td>
                    <td>
                        <font size="5"> <input required type="text" name="lname" style="height:25px; width:150px; font-size:15pt"/>
                    </td>
                </tr>
                 <tr><td></td></tr> <tr><td></td></tr> <tr><td></td></tr><tr><td></td></tr> <tr><td></td></tr> <tr><td></td></tr>
                 
                 <tr>
                    <td>
                        <font size="5">Gender
                    </td>
                    <td>
                         <font size="5"><font size="5"><select required name="gender" style="height:25px; width:150px; font-size:15pt">
                        <option value="" disabled selected>---SELECT---</option>
                        <option value="Female">FEMALE</option>
                        <option value="Male">MALE</option>
                        <option value="others">OTHERS</option>
                        </select>
                    </td>
                </tr>
                 <tr><td></td></tr> <tr><td></td></tr> <tr><td></td></tr><tr><td></td></tr> <tr><td></td></tr> <tr><td></td></tr>
                 
                  <tr>
                    <td width="350px">
                        <font size="5">Date of Birth
                    </td>
                    <td>
                        <font size="5"> <input required type="date" name="dob" style="height:25px; width:150px; font-size:15pt"/>
                    </td>
                </tr>
                 <tr><td></td></tr> <tr><td></td></tr> <tr><td></td></tr><tr><td></td></tr> <tr><td></td></tr> <tr><td></td></tr>
                 
                  <tr>
                    <td>
                        <font size="5">Pancard Number
                    </td>
                    <td>
                        <font size="5"> <input required type="text" name="pn" style="height:25px; width:150px; font-size:15pt"/>
                    </td>
                </tr>
                 <tr><td></td></tr> <tr><td></td></tr> <tr><td></td></tr><tr><td></td></tr> <tr><td></td></tr> <tr><td></td></tr>
                 
                  <tr>
                    <td>
                        <font size="5">Designation
                    </td>
                    <td>
                        <font size="5"> <input required type="text" name="designation" style="height:25px; width:150px; font-size:15pt"/>
                    </td>
                </tr>
                 <tr><td></td></tr> <tr><td></td></tr> <tr><td></td></tr><tr><td></td></tr> <tr><td></td></tr> <tr><td></td></tr>
                 
                    <tr>
                    <td>
                        <font size="5">Date of Joining
                    </td>
                    <td>
                        <font size="5"> <input required type="date" name="doj" style="height:25px; width:150px; font-size:15pt"/>
                    </td>
                </tr>
                 <tr><td></td></tr> <tr><td></td></tr> <tr><td></td></tr><tr><td></td></tr> <tr><td></td></tr> <tr><td></td></tr>
                 
                  <tr>
                    <td>
                        <font size="5">Department
                    </td>
                    <td>
                        <font size="5"><input required type="text" name="dept" style="height:25px; width:150px; font-size:15pt"/>
                    </td>
                </tr>
                 <tr><td></td></tr> <tr><td></td></tr> <tr><td></td></tr><tr><td></td></tr> <tr><td></td></tr> <tr><td></td></tr>
                 
                  <tr>
                    <td>
                        <font size="5">Login ID
                    </td>
                    <td>
                        <font size="5"> <input required type="text" name="lid" style="height:25px; width:150px; font-size:15pt"/>
                    </td>
                </tr>
                 <tr><td></td></tr> <tr><td></td></tr> <tr><td></td></tr><tr><td></td></tr> <tr><td></td></tr> <tr><td></td></tr>
                 
                 <tr>
                    <td>
                        <font size="5">Password
                    </td>
                    <td>
                        <font size="5"> <input required type="password" name="password" style="height:25px; width:150px; font-size:15pt"/>
                    </td>
                </tr>
                 <tr><td></td></tr> <tr><td></td></tr> <tr><td></td></tr><tr><td></td></tr> <tr><td></td></tr> <tr><td></td></tr>
                 
            </table>
             <input type='submit' name='b1' value='SIGN UP' style='height:50px; width:75px; font-size:12pt'/>
             <input type='reset' name='b2' value='RESET' style='height:50px; width:75px; font-size:12pt'/><br><br>
                <br><br>
    </form>
        </div>
         </center>
    </body>
</html>


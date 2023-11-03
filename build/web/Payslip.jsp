<%-- 
    Document   : Payslip
    Created on : 19 Mar, 2019, 11:56:42 PM
    Author     : sruth
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@page session="true"%>
<!DOCTYPE html>
<html>
    <head><link href=Payroll.css rel=stylesheet type=text/css>
    </head>
    <body>
        <%
            String empid=""+request.getParameter("e1");
            String bs=""+request.getParameter("e2");
            String tw=""+request.getParameter("e3");
            String nw=""+request.getParameter("e4");
            String lt=""+request.getParameter("e5");
            //String bl=""+request.getParameter("e6");
            String ma=""+request.getParameter("e6");
            String ta=""+request.getParameter("e7");
            String lr=""+request.getParameter("e8");
            String hl=""+request.getParameter("e9");
            
            double bl=(Double.parseDouble(request.getParameter("e3"))-(Double.parseDouble(request.getParameter("e4"))+(Double.parseDouble(request.getParameter("e5")))));
            double it=(Double.parseDouble(request.getParameter("e2"))*0.2);
            double pf=(Double.parseDouble(request.getParameter("e2"))*0.1);
            double da=(Double.parseDouble(request.getParameter("e2"))*0.4);
            double hra=(Double.parseDouble(request.getParameter("e2"))*0.12);
            double tp=(Double.parseDouble(request.getParameter("e2"))+da+Double.parseDouble(request.getParameter("e3"))+Double.parseDouble(request.getParameter("e4")));
            double dd=(Double.parseDouble(request.getParameter("e5"))+it+pf+Double.parseDouble(request.getParameter("e6")));
            double np=tp-dd;
        %>
         <center>
         <div id="box">
             <center><h1>TOTAL MONTHLY TRANSACTION</h1></center>
         <form action="PayslipSuccess.jsp" method="post">
       
            <table>
                <tr>
                    <td width="350px">
                        <font size="5">Employee ID
                    </td>
                    <td>
                        <font size="5"> <input required readonly type="text" name="e1" value='<%=empid%>' style="height:25px; width:150px; font-size:15pt"/>
                    </td>
                </tr>
                    <tr><td></td></tr> <tr><td></td></tr> <tr><td></td></tr><tr><td></td></tr> <tr><td></td></tr> <tr><td></td></tr>
                    <tr>
                    <td>
                        <font size="5">Basic Salary
                    </td>
                    <td>
                        <font size="5"> <input required readonly type="text" name="e2" value='<%=bs%>' style="height:25px; width:150px; font-size:15pt"/>
                    </td>
                </tr>
                 <tr><td></td></tr> <tr><td></td></tr> <tr><td></td></tr><tr><td></td></tr> <tr><td></td></tr> <tr><td></td></tr>
                 <tr>
                    <td>
                        <font size="5">Total Working Days
                    </td>
                    <td>
                        <font size="5"> <input required readonly type="text" name="e3"  value='<%=tw%>' style="height:25px; width:150px; font-size:15pt"/>
                    </td>
                </tr>
                 <tr><td></td></tr> <tr><td></td></tr> <tr><td></td></tr><tr><td></td></tr> <tr><td></td></tr> <tr><td></td></tr>
                 <tr>
                    <td>
                        <font size="5">Number of Working Days attended
                    </td>
                    <td>
                        <font size="5"> <input required readonly type="text" name="e4" value='<%=nw%>'  style="height:25px; width:150px; font-size:15pt"/>
                    </td>
                </tr>
                 <tr><td></td></tr> <tr><td></td></tr> <tr><td></td></tr><tr><td></td></tr> <tr><td></td></tr> <tr><td></td></tr>
                 <tr>
                    <td>
                        <font size="5">Leaves Taken
                    </td>
                    <td>
                        <font size="5"> <input required readonly type="text" name="e5" value='<%=lt%>' style="height:25px; width:150px; font-size:15pt"/>
                    </td>
                </tr>
                 <tr><td></td></tr> <tr><td></td></tr> <tr><td></td></tr><tr><td></td></tr> <tr><td></td></tr> <tr><td></td></tr>
                 <tr>
                    <td>
                        <font size="5">Balance Leaves
                    </td>
                    <td>
                        <font size="5"> <input required readonly type="text" name="e6" value='<%=bl%>'  style="height:25px; width:150px; font-size:15pt"/>
                    </td>
                </tr>
                 <tr><td></td></tr> <tr><td></td></tr> <tr><td></td></tr><tr><td></td></tr> <tr><td></td></tr> <tr><td></td></tr>
                 
                 <tr>
                    <td>
                        <font size="5">Medical Allowance
                    </td>
                    <td>
                        <font size="5"> <input required readonly type="text" name="e7" value='<%=ma%>' style="height:25px; width:150px; font-size:15pt"/>
                    </td>
                </tr>
                 <tr><td></td></tr> <tr><td></td></tr> <tr><td></td></tr><tr><td></td></tr> <tr><td></td></tr> <tr><td></td></tr>
                 
                  <tr>
                    <td>
                        <font size="5">Transportation Allowance
                    </td>
                    <td>
                        <font size="5"> <input required readonly type="text" name="e8" value='<%=ta%>' style="height:25px; width:150px; font-size:15pt"/>
                    </td>
                </tr>
                 <tr><td></td></tr> <tr><td></td></tr> <tr><td></td></tr><tr><td></td></tr> <tr><td></td></tr> <tr><td></td></tr>
                 
                  <tr>
                    <td>
                        <font size="5">Loan Recovery
                    </td>
                    <td>
                        <font size="5"> <input required readonly type="text" name="e9" value='<%=lr%>' style="height:25px; width:150px; font-size:15pt"/>
                    </td>
                </tr>
                 <tr><td></td></tr> <tr><td></td></tr> <tr><td></td></tr><tr><td></td></tr> <tr><td></td></tr> <tr><td></td></tr>
                 
                  <tr>
                    <td>
                        <font size="5">Housing Loan
                    </td>
                    <td>
                        <font size="5"> <input required readonly type="text" name="e10" value='<%=hl%>' style="height:25px; width:150px; font-size:15pt"/>
                    </td>
                </tr>
                 <tr><td></td></tr> <tr><td></td></tr> <tr><td></td></tr><tr><td></td></tr> <tr><td></td></tr> <tr><td></td></tr>
                 
       <tr>
                    <td>
                        <font size="5">Income Tax
                    </td>
                    <td>
                        <font size="5"> <input required readonly type="text" name="e11" value='<%=it%>' style="height:25px; width:150px; font-size:15pt"/>
                    </td>
                </tr>
                 <tr><td></td></tr> <tr><td></td></tr> <tr><td></td></tr><tr><td></td></tr> <tr><td></td></tr> <tr><td></td></tr>
                 
                    <tr>
                    <td>
                        <font size="5">Provident Fund
                    </td>
                    <td>
                        <font size="5"> <input required readonly type="text" name="e12" value='<%=pf%>' style="height:25px; width:150px; font-size:15pt"/>
                    </td>
                </tr>
                 <tr><td></td></tr> <tr><td></td></tr> <tr><td></td></tr><tr><td></td></tr> <tr><td></td></tr> <tr><td></td></tr>
                 
                 
                  <tr>
                    <td>
                        <font size="5">Daily Allownace
                    </td>
                    <td>
                        <font size="5"> <input required readonly type="text" name="e13" value='<%=da%>' style="height:25px; width:150px; font-size:15pt"/>
                    </td>
                </tr>
                 <tr><td></td></tr> <tr><td></td></tr> <tr><td></td></tr><tr><td></td></tr> <tr><td></td></tr> <tr><td></td></tr>
                 
                 <tr>
                    <td>
                        <font size="5">House Rent Allowance
                    </td>
                    <td>
                        <font size="5"> <input required readonly type="text" name="e14" value='<%=hra%>' style="height:25px; width:150px; font-size:15pt"/>
                    </td>
                </tr>
                 <tr><td></td></tr> <tr><td></td></tr> <tr><td></td></tr><tr><td></td></tr> <tr><td></td></tr> <tr><td></td></tr>
                 
                   
                 <tr>
                    <td>
                        <font size="5">Total Pay
                    </td>
                    <td>
                        <font size="5"> <input required readonly type="text" name="e15" value='<%=tp%>' style="height:25px; width:150px; font-size:15pt"/>
                    </td>
                </tr>
                 <tr><td></td></tr> <tr><td></td></tr> <tr><td></td></tr><tr><td></td></tr> <tr><td></td></tr> <tr><td></td></tr>
                 
                  <tr>
                    <td>
                        <font size="5">Deduction
                    </td>
                    <td>
                        <font size="5"> <input required readonly type="text" name="e16" value='<%=dd%>' style="height:25px; width:150px; font-size:15pt"/>
                    </td>
                </tr>
                 <tr><td></td></tr> <tr><td></td></tr> <tr><td></td></tr><tr><td></td></tr> <tr><td></td></tr> <tr><td></td></tr>
                 
                  <tr>
                    <td>
                        <font size="5">Net Pay
                    </td>
                    <td>
                        <font size="5"> <input required readonly type="text" name="e17" value='<%=np%>' style="height:25px; width:150px; font-size:15pt"/>
                    </td>
                </tr>
                 <tr><td></td></tr> <tr><td></td></tr> <tr><td></td></tr><tr><td></td></tr> <tr><td></td></tr> <tr><td></td></tr>
                 
                  </table>
                    <input type='submit' name='b1' value='NEXT' style='height:50px; width:75px; font-size:12pt; background-color:black; color:aqua'/>&nbsp;&nbsp;&nbsp;
             <input type='reset' name='b2' value='RESET' style='height:50px; width:75px; font-size:12pt; background-color:black; color:aqua'/><br><br>
                <br><br>
    </form>
        </div>
         </center>
    </body>
</html>


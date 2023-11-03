<%-- 
    Document   : EmployeePayslip
    Created on : 21 Mar, 2019, 7:40:02 PM
    Author     : sruth
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@page session="true"%>
<%@page import="java.text.DecimalFormat" %>
<%@page import="java.io.*"%>
<%@page import="java.util.*, java.lang.*" %>
<!DOCTYPE html>
<html>
    <head><link href="Payroll.css" rel="stylesheet" type="text/css">
    </head>
    <body>
       <%
            try
                {
                    int flag=0;
                    String url = "jdbc:mysql://localhost:3306/Payroll"; 
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection conn = DriverManager.getConnection(url,"root",""); 
                    Statement st = conn.createStatement(); 
                    String empid=request.getParameter("id");
                    PreparedStatement ps=(PreparedStatement) conn.prepareStatement("SELECT * from Employee where Emp_ID=?");
                    ps.setString(1,empid);
                    ResultSet result=ps.executeQuery();
                    
                     PreparedStatement ps1=(PreparedStatement) conn.prepareStatement("SELECT * from EmployeeSal where Emp_ID=?");
                    ps1.setString(1,empid);
                    ResultSet rs=ps1.executeQuery();
                    
                    out.println("<font size=12>");
                    out.println("<center>");
                    out.println("<div id=box>");
                    out.println("<br>");
                    out.println("PAY SLIP ");
                    out.println("<br>");
                    out.println("</font>");
                      out.print("<br>");
                      
                        out.println("<font size=6>");
                        out.println("<table border=2;  frame=void; cellpadding=5; cellspacing=5; bordercolor=green>");
                    while(result.next())
                    {
                       
                         out.println("<tr>");
                        out.println("<th colspan=2>");
                         out.println("PERSONAL DETAILS");
                        out.println("</th>");
                        out.println("</tr>");
                        out.println("<tr>");
			out.println("<td><table border=1><tr>");
				out.print("<td>Empoyee id</td>");
                                out.print("&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;");
                                out.println("<td>:"+result.getString(1)+"</td></tr>");
                                out.println("<tr><td>");
                                out.print("Employee Name</td>");
                                out.println("<td>:"+result.getString(2)+"</td></tr>");
                                 out.println("<br>");
                                
                                out.print("<tr><td>Pan Card</td>");
                                 out.print("&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;");
                                out.println("<td>:"+result.getString(6)+"</td></tr></table>");
                                 out.println("<br>");
                        out.println(""); 
                        out.println("<td>");
                             out.print("Designation");  
                             out.println("&nbsp;");
                              out.println(":"+result.getString(7));
                               out.println("<br>");
                              out.print("Date of Join");
                              out.println("&nbsp;");
                              out.println(":"+result.getString(8));
                               out.println("<br>");
                               out.print("Department");
                               out.println("&nbsp;");
                              out.println(":"+result.getString(9));
                               out.println("<br>");
			out.println("</tr>");
                        out.println("</tr>");
                        out.println("<tr>");
                        out.println("<tr colspan='2'>");
                         out.println("MONTHLY TRANSACTIONS IN RUPEES");
                        out.println("</tr>");
                        out.println("</tr>");
                    }
                         while(rs.next())
                         {
                             out.println("<tr align='left'>"); 
                             out.println("<tr>");
                             out.print("Basic Salary");
                             out.print("&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;");
                             out.println(":"+Double.parseDouble(rs.getString(2)));
                             out.println("<br>");
                             out.print("Medical Allowance");
                             out.print("&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;");
                             out.println(":"+Double.parseDouble(rs.getString(3)));
                             out.println("<br>");
                             out.print("Transportation Allowance");
                              out.println(":"+Double.parseDouble(rs.getString(4)));
                             out.println("<br>");
                             out.print("Loan Recovery");
                             out.print("&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;");
                             out.println(":"+Double.parseDouble(rs.getString(5)));
                             out.println("<br>");
                              out.print("Housing Loan");
                            out.print("&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;");
                             out.println(":"+Double.parseDouble(rs.getString(6)));
                             out.println("<br>");
                             out.println("</tr>");
                             out.println("<tr>");
                             out.print("Income Tax");
                            out.print("&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;");
                             out.println(":"+Double.parseDouble(rs.getString(7)));
                             out.println("<br>");
                              out.print("Provident Fund");
                              out.print("&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;");
                             out.println(":"+Double.parseDouble(rs.getString(8)));
                             out.println("<br>");
                             out.println("<br>");
                             out.print("Daily Allowance");
                             out.print("&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;");
                             out.println(":"+Double.parseDouble(rs.getString(9)));
                             out.println("<br>");
                             out.print("House Rent Allowance");
                             out.print("");
                             out.println(":"+Double.parseDouble(rs.getString(10)));
                             out.println("<br><br>");
                             out.print("Total Pay");
                              out.print("&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;");
                             out.println(":"+Double.parseDouble(rs.getString(11)));
                             out.println("<br>");
                             out.print("Deduction");
                             out.print("&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;");
                             out.println(":"+Double.parseDouble(rs.getString(12)));
                             out.println("<br>");
                             out.println("<br>");
                              out.print("Net Pay");
                             out.print("&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;");
                             out.println(":"+Double.parseDouble(rs.getString(13)));
                             out.println("<br>");
                             out.println("</tr>");
                             out.println("</tr>");
                             flag++;
                         }
                        
                        out.println("</table>");
                        out.println("<br>");
                         if(flag==0)
                          {
                             out.println("<font size='8' style='color:red'>Your details have not been updated. Please contact administrator</font>");
                         }
                }
                 catch (Exception e) 
		{ 
                    out.println("Got an exception! "); 
                    out.println(e.getMessage()); 
                }
                     out.println("<br>");
                    out.println("<br>");
                    out.println("<form method=post>");
                      out.println("<input formaction=index.jsp type=Submit name=b3 value=Back style='height:50px;width:185px;font-size:35px;background-color:black; color:aqua'/>");
                     out.println("<input formaction='/JSPApplication/JSPIndex.jsp' type=Submit name=b3 value=HomePage style='height:50px;width:185px;font-size:35px;background-color:black; color:aqua'/>");
                     out.println("</form>");
                     out.println("</div>");
                     out.println("</center>");
       %>
    </body>
</html>

package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class Payslip_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        ");

            String empid=""+request.getParameter("e1");
            String bs=""+request.getParameter("e2");
            String ma=""+request.getParameter("e3");
            String ta=""+request.getParameter("e4");
            String lr=""+request.getParameter("e5");
            String hl=""+request.getParameter("e6");
            
            double it=(Double.parseDouble(request.getParameter("e2"))*0.2);
            double pf=(Double.parseDouble(request.getParameter("e2"))*0.1);
            double da=(Double.parseDouble(request.getParameter("e2"))*0.4);
            double hra=(Double.parseDouble(request.getParameter("e2"))*0.12);
            double tp=(Double.parseDouble(request.getParameter("e2"))+da+Double.parseDouble(request.getParameter("e3"))+Double.parseDouble(request.getParameter("e4")));
            double dd=(Double.parseDouble(request.getParameter("e5"))+it+pf+Double.parseDouble(request.getParameter("e6")));
            double np=tp-dd;
        
      out.write("\n");
      out.write("         <center>\n");
      out.write("         <div style='border-style: solid; width: 550px; height: 950px;background-position-y: 800px;background-size: 150px;background-repeat: no-repeat;background-image:url(\"https://www.carstickers.com/prodimages/2963_decorative_corner_border_sticker_decal.jpg\")'>\n");
      out.write("    <center><h1><font style='color: aqua; background: black'>COMPLETE MONTHLY TRANSACTION</font></h1></center>\n");
      out.write("         <form action='PayslipSuccess.jsp' method='post'>\n");
      out.write("       \n");
      out.write("            <table>\n");
      out.write("                <tr>\n");
      out.write("                    <td>\n");
      out.write("                        <font size=\"5\">Enter Employee id\n");
      out.write("                    </td>\n");
      out.write("                    <td>\n");
      out.write("                        <font size=\"5\"> :<input required readonly type=\"text\" name=\"t1\" value='");
      out.print(empid);
      out.write("' style=\"height:25px; width:150px; font-size:15pt\"/>\n");
      out.write("                    </td>\n");
      out.write("                </tr>\n");
      out.write("                    <tr><td></td></tr> <tr><td></td></tr> <tr><td></td></tr><tr><td></td></tr> <tr><td></td></tr> <tr><td></td></tr>\n");
      out.write("                    <tr>\n");
      out.write("                    <td>\n");
      out.write("                        <font size=\"5\">Basic Salary\n");
      out.write("                    </td>\n");
      out.write("                    <td>\n");
      out.write("                        <font size=\"5\"> :<input required readonly type=\"text\" name=\"t2\" value='");
      out.print(bs);
      out.write("' style=\"height:25px; width:150px; font-size:15pt\"/>\n");
      out.write("                    </td>\n");
      out.write("                </tr>\n");
      out.write("                 <tr><td></td></tr> <tr><td></td></tr> <tr><td></td></tr><tr><td></td></tr> <tr><td></td></tr> <tr><td></td></tr>\n");
      out.write("                 <tr>\n");
      out.write("                    <td>\n");
      out.write("                        <font size=\"5\">Medical Allowance\n");
      out.write("                    </td>\n");
      out.write("                    <td>\n");
      out.write("                        <font size=\"5\"> :<input required readonly type=\"text\" name=\"t3\" value='");
      out.print(ma);
      out.write("' style=\"height:25px; width:150px; font-size:15pt\"/>\n");
      out.write("                    </td>\n");
      out.write("                </tr>\n");
      out.write("                 <tr><td></td></tr> <tr><td></td></tr> <tr><td></td></tr><tr><td></td></tr> <tr><td></td></tr> <tr><td></td></tr>\n");
      out.write("                 \n");
      out.write("                  <tr>\n");
      out.write("                    <td>\n");
      out.write("                        <font size=\"5\">Transportation Allowance\n");
      out.write("                    </td>\n");
      out.write("                    <td>\n");
      out.write("                        <font size=\"5\"> :<input required readonly type=\"text\" name=\"t4\" value='");
      out.print(ta);
      out.write("' style=\"height:25px; width:150px; font-size:15pt\"/>\n");
      out.write("                    </td>\n");
      out.write("                </tr>\n");
      out.write("                 <tr><td></td></tr> <tr><td></td></tr> <tr><td></td></tr><tr><td></td></tr> <tr><td></td></tr> <tr><td></td></tr>\n");
      out.write("                 \n");
      out.write("                  <tr>\n");
      out.write("                    <td>\n");
      out.write("                        <font size=\"5\">Loan Recovery\n");
      out.write("                    </td>\n");
      out.write("                    <td>\n");
      out.write("                        <font size=\"5\"> :<input required readonly type=\"text\" name=\"t5\" value='");
      out.print(lr);
      out.write("' style=\"height:25px; width:150px; font-size:15pt\"/>\n");
      out.write("                    </td>\n");
      out.write("                </tr>\n");
      out.write("                 <tr><td></td></tr> <tr><td></td></tr> <tr><td></td></tr><tr><td></td></tr> <tr><td></td></tr> <tr><td></td></tr>\n");
      out.write("                 \n");
      out.write("                  <tr>\n");
      out.write("                    <td>\n");
      out.write("                        <font size=\"5\">Housing Loan\n");
      out.write("                    </td>\n");
      out.write("                    <td>\n");
      out.write("                        <font size=\"5\"> :<input required readonly type=\"text\" name=\"t6\" value='");
      out.print(hl);
      out.write("' style=\"height:25px; width:150px; font-size:15pt\"/>\n");
      out.write("                    </td>\n");
      out.write("                </tr>\n");
      out.write("                 <tr><td></td></tr> <tr><td></td></tr> <tr><td></td></tr><tr><td></td></tr> <tr><td></td></tr> <tr><td></td></tr>\n");
      out.write("                 \n");
      out.write("       <tr>\n");
      out.write("                    <td>\n");
      out.write("                        <font size=\"5\">Income Tax\n");
      out.write("                    </td>\n");
      out.write("                    <td>\n");
      out.write("                        <font size=\"5\"> :<input required readonly type=\"text\" name=\"t7\" value='");
      out.print(it);
      out.write("' style=\"height:25px; width:150px; font-size:15pt\"/>\n");
      out.write("                    </td>\n");
      out.write("                </tr>\n");
      out.write("                 <tr><td></td></tr> <tr><td></td></tr> <tr><td></td></tr><tr><td></td></tr> <tr><td></td></tr> <tr><td></td></tr>\n");
      out.write("                 \n");
      out.write("                    <tr>\n");
      out.write("                    <td>\n");
      out.write("                        <font size=\"5\">Provident Fund\n");
      out.write("                    </td>\n");
      out.write("                    <td>\n");
      out.write("                        <font size=\"5\"> :<input required readonly type=\"text\" name=\"t8\" value='");
      out.print(pf);
      out.write("' style=\"height:25px; width:150px; font-size:15pt\"/>\n");
      out.write("                    </td>\n");
      out.write("                </tr>\n");
      out.write("                 <tr><td></td></tr> <tr><td></td></tr> <tr><td></td></tr><tr><td></td></tr> <tr><td></td></tr> <tr><td></td></tr>\n");
      out.write("                 \n");
      out.write("                 \n");
      out.write("                  <tr>\n");
      out.write("                    <td>\n");
      out.write("                        <font size=\"5\">Daily Allownace\n");
      out.write("                    </td>\n");
      out.write("                    <td>\n");
      out.write("                        <font size=\"5\"> :<input required readonly type=\"text\" name=\"t9\" value='");
      out.print(da);
      out.write("' style=\"height:25px; width:150px; font-size:15pt\"/>\n");
      out.write("                    </td>\n");
      out.write("                </tr>\n");
      out.write("                 <tr><td></td></tr> <tr><td></td></tr> <tr><td></td></tr><tr><td></td></tr> <tr><td></td></tr> <tr><td></td></tr>\n");
      out.write("                 \n");
      out.write("                 <tr>\n");
      out.write("                    <td>\n");
      out.write("                        <font size=\"5\">House Rent Allowance\n");
      out.write("                    </td>\n");
      out.write("                    <td>\n");
      out.write("                        <font size=\"5\"> :<input required readonly type=\"text\" name=\"t10\" value='");
      out.print(hra);
      out.write("' style=\"height:25px; width:150px; font-size:15pt\"/>\n");
      out.write("                    </td>\n");
      out.write("                </tr>\n");
      out.write("                 <tr><td></td></tr> <tr><td></td></tr> <tr><td></td></tr><tr><td></td></tr> <tr><td></td></tr> <tr><td></td></tr>\n");
      out.write("                 \n");
      out.write("                   \n");
      out.write("                 <tr>\n");
      out.write("                    <td>\n");
      out.write("                        <font size=\"5\">Total Pay\n");
      out.write("                    </td>\n");
      out.write("                    <td>\n");
      out.write("                        <font size=\"5\"> :<input required readonly type=\"text\" name=\"t11\" value='");
      out.print(tp);
      out.write("' style=\"height:25px; width:150px; font-size:15pt\"/>\n");
      out.write("                    </td>\n");
      out.write("                </tr>\n");
      out.write("                 <tr><td></td></tr> <tr><td></td></tr> <tr><td></td></tr><tr><td></td></tr> <tr><td></td></tr> <tr><td></td></tr>\n");
      out.write("                 \n");
      out.write("                  <tr>\n");
      out.write("                    <td>\n");
      out.write("                        <font size=\"5\">Deduction\n");
      out.write("                    </td>\n");
      out.write("                    <td>\n");
      out.write("                        <font size=\"5\"> :<input required readonly type=\"text\" name=\"t12\" value='");
      out.print(dd);
      out.write("' style=\"height:25px; width:150px; font-size:15pt\"/>\n");
      out.write("                    </td>\n");
      out.write("                </tr>\n");
      out.write("                 <tr><td></td></tr> <tr><td></td></tr> <tr><td></td></tr><tr><td></td></tr> <tr><td></td></tr> <tr><td></td></tr>\n");
      out.write("                 \n");
      out.write("                  <tr>\n");
      out.write("                    <td>\n");
      out.write("                        <font size=\"5\">Net Pay\n");
      out.write("                    </td>\n");
      out.write("                    <td>\n");
      out.write("                        <font size=\"5\"> :<input required readonly type=\"text\" name=\"t13\" value='");
      out.print(np);
      out.write("' style=\"height:25px; width:150px; font-size:15pt\"/>\n");
      out.write("                    </td>\n");
      out.write("                </tr>\n");
      out.write("                 <tr><td></td></tr> <tr><td></td></tr> <tr><td></td></tr><tr><td></td></tr> <tr><td></td></tr> <tr><td></td></tr>\n");
      out.write("                 \n");
      out.write("                  </table>\n");
      out.write("                    <input type='submit' name='b1' value='NEXT' style='height:50px; width:75px; font-size:12pt; background-color:black; color:aqua'/>&nbsp;&nbsp;&nbsp;\n");
      out.write("             <input type='reset' name='b2' value='RESET' style='height:50px; width:75px; font-size:12pt; background-color:black; color:aqua'/><br><br>\n");
      out.write("                <br><br>\n");
      out.write("    </form>\n");
      out.write("        </div>\n");
      out.write("         </center>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
      out.write("\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}

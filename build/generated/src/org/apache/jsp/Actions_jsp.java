package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class Actions_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head><link href=Payroll.css rel=stylesheet type=text/css>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <center>\n");
      out.write("        <div id=\"box\">\n");
      out.write("            <center><h1><font style='font-size: 50px'>Select Operation you want to perform</font></h1></center>\n");
      out.write("     <form action='PerformActions.jsp' method='post'>\n");
      out.write("        <table>\n");
      out.write("            <tr>\n");
      out.write("                <td>\n");
      out.write("                    <input type=\"radio\" name=\"action\" value=\"insert\" style='height:25px; width:50px;'></td><td><font size=8>Insert Record</font></td><br>\n");
      out.write("            </tr>\n");
      out.write("            <tr>\n");
      out.write("                <td>\n");
      out.write("                    <input type=\"radio\" name=\"action\" value=\"update\" style='height:25px; width:50px;'></td><td><font size=8>Update Record</td>\n");
      out.write("            </tr>\n");
      out.write("            <tr>\n");
      out.write("                <td>\n");
      out.write("                    <input type=\"radio\" name=\"action\" value=\"delete\" style='height:25px; width:50px;'></td><td><font size=8>Delete Record</td>\n");
      out.write("            </tr>\n");
      out.write("             <tr>\n");
      out.write("                <td>\n");
      out.write("                    <input type=\"radio\" name=\"action\" value=\"select\" style='height:25px; width:50px;'></td><td><font size=8>View Record</td>\n");
      out.write("            </tr>\n");
      out.write("          </font>\n");
      out.write("        </table>\n");
      out.write("        <br><br>\n");
      out.write("        <input type=submit method='post' value=Submit style='height:50px; width:150px; font-size:16pt;background-color:black; color:aqua'>&nbsp;&nbsp;&nbsp;&nbsp;\n");
      out.write("        <input type=submit method='post' formaction=\"index.jsp\" value=Back style='height:50px; width:150px; font-size:16pt;background-color:black; color:aqua'>&nbsp;&nbsp;&nbsp;&nbsp;\n");
      out.write("        <input type=submit method='post' formaction=\"welcome.jsp\" value=Payroll style='height:50px; width:150px; font-size:16pt;background-color:black; color:aqua'>\n");
      out.write("    </form>\n");
      out.write("        </center>\n");
      out.write("    </body>\n");
      out.write("</html>");
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

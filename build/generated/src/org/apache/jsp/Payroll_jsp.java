package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class Payroll_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write(" \n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <title></title>\n");
      out.write("        <meta charset=\"UTF-8\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width\">\n");
      out.write("        <link href=\"Payroll.css\" rel=\"stylesheet\" type=\"text/css\">\n");
      out.write("       \n");
      out.write("</head>\n");
      out.write("\n");
      out.write("    <body>\n");
      out.write("        <center>\n");
      out.write("        <div id=\"box\">\n");
      out.write("            <center><h1><font style='font-size: 40px'>PLEASE SELECT TYPE OF USER</font></h1></center>\n");
      out.write("     <form action=\"SelectUser.jsp\" method=\"get\">\n");
      out.write("        <table>\n");
      out.write("            <tr>\n");
      out.write("                <td>\n");
      out.write("                    <input type=\"radio\" name=\"user\" value=\"Admin\" style='font-size: 20px;'></td><td><font size=8>Admin Login</font>&nbsp;&nbsp;&nbsp;&nbsp;</td><br>\n");
      out.write("            \n");
      out.write("                <td>\n");
      out.write("                    <input type=\"radio\" name=\"user\" value=\"Employee\" style='font-size: 20px;'></td><td><font size=8>Employee Login</td>\n");
      out.write("            </tr>\n");
      out.write("           \n");
      out.write("          </font>\n");
      out.write("        </table>\n");
      out.write("        <br><br>\n");
      out.write("        <input type=submit value=Submit style='height:50px; width:150px; font-size:16pt;background-color:black; color:aqua'>&nbsp;&nbsp;&nbsp;&nbsp;\n");
      out.write("        <input type=submit method='post' formaction=\"welcome.jsp\" value=Back style='height:50px; width:150px; font-size:16pt;background-color:black; color:aqua'>\n");
      out.write("    </form>\n");
      out.write("        </center>\n");
      out.write("    </div>\n");
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

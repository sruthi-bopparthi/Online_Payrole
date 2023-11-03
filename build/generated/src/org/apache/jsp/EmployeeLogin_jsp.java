package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class EmployeeLogin_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <link href=\"Payroll.css\" rel=\"stylesheet\" type=\"text/css\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("    </head>\n");
      out.write("    <body><center>\n");
      out.write("        <div id=\"box\">\n");
      out.write("                <a href='Payroll.jsp'><h2 style=\"text-align: left\">  PAYROLL</h2></a>\n");
      out.write("       <center><h1><font style='color:black'> WELCOME TO LOGIN PAGE</font></h1></center>\n");
      out.write("        <form action=\"EmployeeDatabase.jsp\" method=\"get\">\n");
      out.write("        <font size='5'>Login Id: &nbsp;<input required type='text' name='n' style='height:25px; width:150px; font-size:15pt'/><br><Br>\n");
      out.write("                <font size='5'>Password: &nbsp;<input required type='password' name='p' style='height:25px; width:150px; font-size:15pt'/><br><br>\n");
      out.write("                <input type='submit' name='b1' value='LOGIN' style='height:50px; width:75px; font-size:12pt'/>\n");
      out.write("                <input type='reset' name='b2' value='RESET' style='height:50px; width:75px; font-size:12pt'/></font><br><br>\n");
      out.write("                <font style=\"color:blue\">NEW USER?? Please Sign up!</font><br><br>\n");
      out.write("                <a href='Signup.jsp'>SIGN UP</a><br>\n");
      out.write("                <br><br>\n");
      out.write("        </form>\n");
      out.write("        </div>\n");
      out.write("    </center>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
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

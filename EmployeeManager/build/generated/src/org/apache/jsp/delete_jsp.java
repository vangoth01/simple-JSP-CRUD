package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.PreparedStatement;
import java.sql.DriverManager;
import java.sql.Statement;
import java.sql.Connection;
import java.sql.ResultSet;

public final class delete_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("         <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("         <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("         <link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css\" integrity=\"sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u\" crossorigin=\"anonymous\">\n");
      out.write("         <link href=\"https://fonts.googleapis.com/css?family=Arvo|Gugi|Patua+One|Pontano+Sans|Titan+One|Yanone+Kaffeesatz\" rel=\"stylesheet\">\n");
      out.write("         <title>Search Employee Results</title>\n");
      out.write("    </head>\n");
      out.write("    \n");
      out.write("    <body style=\"background-image:url(22.png)\" >\n");
      out.write("\n");
      out.write("         <nav class=\"navbar navbar-inverse navbar-fixed-top\" style=\"margin-bottom: 0px\">\n");
      out.write("  <div class=\"container-fluid\">\n");
      out.write("      <div class=\"navbar-header\">\n");
      out.write("         \n");
      out.write("      <a class=\"navbar-brand\" href=\"index.jsp\" style=\"color: whitesmoke; font-size: 30px; font-family: 'Titan One', cursive;font-weight: bolder;\">\n");
      out.write("          Home\n");
      out.write("      </a> \n");
      out.write("           </div>\n");
      out.write("      \n");
      out.write("      <div id=\"navbar\" class=\"navbar-collapse collapse\">\n");
      out.write("            <ul class=\"nav navbar-nav navbar-right\">\n");
      out.write("                <li><a href=\"search.jsp\">Search Employee</a></li>\n");
      out.write("                <li><a href=\"delete.jsp\">Delete Employee Data</a></li>\n");
      out.write("            </ul>\n");
      out.write("      \n");
      out.write("      </div>\n");
      out.write("  </div>\n");
      out.write(" </nav>\n");
      out.write("\n");
      out.write("        <br><br><br><br><br> <table class=\"table\" style = \" color: white\">\n");
      out.write("               <thead class=\"thead-dark\">\n");
      out.write("                    <th scope=\"col\">ID</th>\n");
      out.write("                    <th scope=\"col\">Full name</th>\n");
      out.write("                    <th scope=\"col\">Sex</th>\n");
      out.write("                    <th scope=\"col\">Nationality</th>\n");
      out.write("                    <th scope=\"col\">Company</th>\n");
      out.write("                </thead>\n");
      out.write("\n");
 
    
   String nameFromForm = request.getParameter("search");
    
    String ConURL = "jdbc:mysql://localhost:3306/test";
    Connection connection = null;
    Statement state =null;
    
    Class.forName("com.mysql.jdbc.Driver").newInstance();
    int sql =0;
    
    try{
        connection = DriverManager.getConnection(ConURL,"root","");
        String query = "select * from  user";
        state = connection.createStatement();
        
        ResultSet rs = state.executeQuery(query);
            int count= 0;
            while (rs.next()){
            
      out.write("\n");
      out.write("           \n");
      out.write("                <tbody>\n");
      out.write("                    <tr>\n");
      out.write("                    <th scope=\"row\">");
      out.print(rs.getString("id"));
      out.write("</th>\n");
      out.write("                    <td>");
      out.print(rs.getString("username"));
      out.write("</td>\n");
      out.write("                    <td>");
      out.print(rs.getString("sex"));
      out.write("</td>\n");
      out.write("                    <td>");
      out.print(rs.getString("nation"));
      out.write("</td>\n");
      out.write("                    <td>");
      out.print(rs.getString("company"));
      out.write("</td> \n");
      out.write("                    <td><a href=\"deleteData.jsp?=");
 rs.getString("id");
      out.write("\"><button class=\"btn btn-info delete\" >Delete</button></a></td>\n");
      out.write("                    </tr>\n");
      out.write("                </tbody>\n");
      out.write("           ");

                 count++;
            }
            
     
    }catch(Exception e){
       out.println("Error: Unable to connect to DB "+e);
    }
    finally{
    state.close();
    connection.close();
    }
            
      out.write("\n");
      out.write("                \n");
      out.write("            </table>\n");
      out.write("    </body>\n");
      out.write("\n");
      out.write("</html>\n");
      out.write("\n");
      out.write("\n");
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

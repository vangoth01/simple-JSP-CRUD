<%-- 
    Document   : process
    Created on : May 19, 2018, 12:59:54 PM
    Author     : Van Ghoth
--%>



<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page language = "java" contentType="text/html" pageEncoding="UTF-8"%>

<html>
    <head>
         <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <meta name="viewport" content="width=device-width, initial-scale=1">
         <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
         <link href="https://fonts.googleapis.com/css?family=Arvo|Gugi|Patua+One|Pontano+Sans|Titan+One|Yanone+Kaffeesatz" rel="stylesheet">
         <title>Search Employee Results</title>
    </head>
    
    <body style="background-image:url(22.png)" >

         <nav class="navbar navbar-inverse navbar-fixed-top" style="margin-bottom: 0px">
  <div class="container-fluid">
      <div class="navbar-header">
         
      <a class="navbar-brand" href="index.jsp" style="color: whitesmoke; font-size: 30px; font-family: 'Titan One', cursive;font-weight: bolder;">
          Home
      </a> 
           </div>
      
      <div id="navbar" class="navbar-collapse collapse">
            <ul class="nav navbar-nav navbar-right">
                <li><a href="search.jsp">Search Employee</a></li>
                <li><a href="delete.jsp">Delete Employee Data</a></li>
            </ul>
      
      </div>
  </div>
 </nav>

<% 
    String name = request.getParameter("name");
    String nation = request.getParameter("nation");
    String sex = request.getParameter("sex");
    String comp = request.getParameter("company");
    
    String ConURL = "jdbc:mysql://localhost:3306/test";
    Connection connection = null;
    PreparedStatement pstate =null;
    
    Class.forName("com.mysql.jdbc.Driver").newInstance();
    int sql =0;
    
    try{
        connection = DriverManager.getConnection(ConURL,"root","");
        String query = "insert into user (username,nation,sex,company) values (?,?,?,?)";
        pstate = connection.prepareStatement(query);
        pstate.setString(1, name);
        pstate.setString(2, nation);
        pstate.setString(3, sex);
        pstate.setString(4, comp);
        
        sql = pstate.executeUpdate();
        
            if (sql != 0){
                %> <script type="text/javascript"> window.alert("Data Inserted");</script>
                <%
            }
        
    }catch(Exception e){
       out.println("Error: Unable to connect to DB "+e);
    }
    finally{
    pstate.close();
    connection.close();
    }
%>
    
    </body>

</html>



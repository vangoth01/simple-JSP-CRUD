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
<%@page import="java.sql.ResultSet"%>

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
    
   String nameFromForm = request.getParameter("search");
    
    String ConURL = "jdbc:mysql://localhost:3306/test";
    Connection connection = null;
    Statement state =null;
    
    Class.forName("com.mysql.jdbc.Driver").newInstance();
    int sql =0;
    
    try{
        connection = DriverManager.getConnection(ConURL,"root","");
        String query = "select * from  user where username like '%"+nameFromForm+"%' ";
        state = connection.createStatement();
        
        ResultSet rs = state.executeQuery(query);
        
            if (!rs.next()){
%> <br><br><br><br><br><p style="color:white">Name not in database! <a href="search.jsp">Click here to try another name</a></p>
                <%
            }else{%>
           <br><br><br><br><br> <table class="table" style = " color: white">
               <thead class="thead-dark">
                    <th scope="col">ID</th>
                    <th scope="col">Full name</th>
                    <th scope="col">Sex</th>
                    <th scope="col">Nationality</th>
                    <th scope="col">Company</th>
                </thead>
                <tbody>
                    <tr>
                    <th scope="row"><%=rs.getString("id")%></th>
                    <td><%=rs.getString("username")%></td>
                    <td><%=rs.getString("sex")%></td>
                    <td><%=rs.getString("nation")%></td>
                    <td><%=rs.getString("company")%></td> 
                    </tr>

                </tbody>
               
            </table>
                    <%    
            }
            
      
    }catch(Exception e){
       out.println("Error: Unable to connect to DB "+e);
    }
    finally{
    state.close();
    connection.close();
    }
%>
 
    </body>

</html>




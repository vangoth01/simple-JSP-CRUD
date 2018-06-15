<%-- 
    Document   : search
    Created on : May 20, 2018, 8:48:37 PM
    Author     : Van Ghoth
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <meta name="viewport" content="width=device-width, initial-scale=1">
         <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
         <link href="https://fonts.googleapis.com/css?family=Arvo|Gugi|Patua+One|Pontano+Sans|Titan+One|Yanone+Kaffeesatz" rel="stylesheet">
         <title>Search Employee</title>
    </head>
    <body style="background-image:url(22.png)">
        
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
       <div class="container-fluid">
            <div class="row" justify-content-center>
                    <div class="col-md-4 col-md-offset-4" align="center">
                        <br><br><br><br><br>
                        <form action="searchData.jsp" method="post">
                            <label for="search">Search By name</label>
                            <input type="text" required name="search" class="form-control" placeholder="Enter name to look for"><br>
                            <button class="btn btn-info" type="submit">Search</button>
                        </form>
                 </div>
            </div>
        </div>
    </body>
</html>

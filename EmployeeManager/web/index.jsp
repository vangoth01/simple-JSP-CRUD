
<%-- 
    Document   : index
    Created on : May 19, 2018, 2:54:50 PM
    Author     : Van Ghoth
--%>

<%@page language="java" contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    
    <!-- Bootstrap -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

    <!-- Optional theme -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

    <!-- Latest compiled and minified JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>

    <link href="https://fonts.googleapis.com/css?family=Arvo|Gugi|Patua+One|Pontano+Sans|Titan+One|Yanone+Kaffeesatz" rel="stylesheet">

 
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Main</title>
    </head>
    <body style=" background-image:url(22.png)">
        
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
                                 <br>
                            <p style="color: white; font-weight: bolder; font-size: 20px">Enter Employee Data</p>
                                <br><br><br>
                            <form action="enterData.jsp" method="post">
                                 <br>
                                <label for="username">Full Name</label>
                                <input required name="name" type="text" class="form-control" placeholder="Full name">
                                 <br>
                                <label for="sex">Sex</label>
                                <input required name="sex" type="text" class="form-control" placeholder="sex">
                                 <br>
                                <label for="nation">Nationality</label>
                                <input required name="nation" type="text" class="form-control" placeholder="Which country are you citizen">
                                 <br>
                                <label for="company">Company</label>
                                <input required name="company" type="text" class="form-control" placeholder="Where Do You Work">
                                <br>
                                <button class="btn btn-info" type="submit">Enter</button>
                            </form>
                </div>
            </div>
        </div>
        
   
        
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
   
    </body>
</html>

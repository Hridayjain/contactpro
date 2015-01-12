<%-- 
    Document   : delete
    Created on : Jan 10, 2015, 7:12:38 PM
    Author     : hriday
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="css/style.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div class="navbar  navbar-inverse navbar-fixed-top">
            <div class="container">
             <a class="navbar-brand" href="test.html">Contact Book</a>
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target  =".navbar-collapse">
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
            </button>
        <div class="collapse navbar-collapse">
          <ul class="nav navbar-nav navbar-right">
            <li><a href="test.html">Home</a></li>
            <li><a href="about.html">About</a></li>
            <li class="active dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Option<span class="caret"></span></a>

          		 <ul class="dropdown-menu">
            		<li><a href="view.jsp">View</a></li>
            		<li><a href="delete.jsp">Delete</a></li>
            		<li><a href="searchname.html">Search</a></li>
          		</ul>
			</li>
          </ul>
        </div>
      </div>
    </div>
    

<script src="js/jquery.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js">	</script>

    </body>
</html>

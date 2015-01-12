<%-- 
    Document   : add
    Created on : Jan 10, 2015, 8:25:09 AM
    Author     : hriday
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
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

    <!--    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> -->
        <title>View Contact</title>
    <style>
        table tr td a{
            text-decoration: none;
            color: white;
            text-align: center;
            
            
        }
        table tr td a:hover{
            text-decoration: none;
            color: black;
            
        }
        
        
        
        </style>
        
        
        
        
</head>
<body>

   
          <div class="navbar  navbar-inverse navbar-fixed-top">
               <div class="container">
        <a class="navbar-brand" href="test.html"><span class="glyphicon glyphicon-book"></span> Contact Book</a>
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target  =".navbar-collapse">
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
            </button>
        <div class="collapse navbar-collapse">
          <ul class="nav navbar-nav navbar-right">
            <li ><a href="test.html"><span class="glyphicon glyphicon-home"></span>Home</a></li>
            <li><a href="about.html">About</a></li>
            <li class="active dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Option<span class="caret"></span></a>

          		 <ul class="dropdown-menu">
            		<li><a href="view.jsp">View</a></li>
                        <li><a href="updaterecord.html">Update</a></li>
            		<li><a href="delete.jsp">Delete</a></li>
            		<li><a href="searchname.html">Search</a></li>
          		</ul>
			</li>
          </ul>
        </div>
      </div>
    </div>

          <%
           Class.forName("sun.jdbc.odbc.JdbcOdbcConnection");
        
        Connection con=DriverManager.getConnection("jdbc:odbc:contact","root","root");
        
        PreparedStatement ps=con.prepareStatement("select * from contact order by name ");
        
        ResultSet rs=ps.executeQuery();
           %>
           <div class="container">
        <div class="table-responsive">
        <table class="table table-bordered table-hover table-condensed">
        <tr class="success">
        <th>Name</th>
        <th>Email</th>
        <th>Number</th>
        <th>Address</th>
        <th>Delete Contact</th>
        </tr>
        <%
        while(rs.next())
        {
        
        %>
        <tr>
        <td><%= rs.getString(1)%></td>
        <td><%=rs.getString(2)%></td>
        <td><%=rs.getString(3)%></td>
        <td><%=rs.getString(4)%></td>
        <td><a href="delete.jsp" class="btn btn-danger btn-sm"><span class="glyphicon glyphicon-delete"></span>DELETE</a></td>
        </tr>
        <% } %>
         </table>
        </div>
           </div>
      <script src="js/jquery.js"></script>
         <script type="text/javascript" src="js/bootstrap.min.js">
             </script>
    </body>
</html>

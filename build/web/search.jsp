<%-- 
    Document   : search
    Created on : Jan 10, 2015, 9:26:10 PM
    Author     : hriday
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
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
        <style>
          
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
            <li><a href="test.html"><span class="glyphicon glyphicon-home"></span>Home</a></li>
            <li><a href="about.html">About</a></li>
            <li class="dropdown active"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Option<span class="caret"></span></a>

          		 <ul class="dropdown-menu">
            		<li><a href="view.jsp">View<span class="glyphicon glyphicon-eye-open"></span></a></li>
                        <li><a href="updaterecord.html">Update<span class="glyphicon glyphicon-edit"></span></a></li>
                        <li><a href="delete.jsp">Delete<span class="glyphicon glyphicon-delete"></span></a></li>
                        <li><a href="searchname.html">Search<span class="glyphicon glyphicon-search"></span></a></li>
          		</ul>
			</li>
          </ul>
        </div>
      </div>
    </div>
        <%
            String name=request.getParameter("name");
            Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
            Connection con=DriverManager.getConnection("jdbc:odbc:contact","root","root");
            String qr="select * from contact where name=?";
            PreparedStatement ps=con.prepareStatement(qr);
            ps.setString(1,name);
            ResultSet rs=ps.executeQuery();
            if(rs.next())
            {
        %>
        <div class="container">
            <div class="jumbotron">
            <div class="table-responsive">
                <table class="table table-bordered table-condensed table-hover">
                    <tr class="success">
                        <th>Name</th>
                        <th>Email</th>
                        <th>Number</th>
                        <th>Address</th>
                     </tr>
                     <tr>
                            <td><%=rs.getString(1)%></td>
                            <td><%=rs.getString(2)%></td>
                            <td><%=rs.getString(3)%></td>
                            <td><%=rs.getString(4)%></td>
                      </tr>
                </table>
              </div>    
            </div>
           </div>
                      <% }
             
        
          
                        else
            {
                 out.println("record not found");
            }
            %>
           <script src="js/jquery.js"></script>
         <script type="text/javascript" src="js/bootstrap.min.js">
             </script>
   
      
    </body>
</html>

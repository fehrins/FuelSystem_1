<%-- 
    Document   : productaccess
    Created on : Nov 30, 2018, 8:15:30 PM
    Author     : Vaiosoft
--%>

<%@page import="java.sql.*"%>
<%@page import="java.io.*"%>


<%
     String url = "jdbc:oracle:thin:@129.7.240.3:1521:ORCL";
        Class.forName ("oracle.jdbc.driver.OracleDriver"); 
// Establish connection //
Connection conn = DriverManager.getConnection(url, "SUNESARAF", "SUNESARAF#");

Statement statement = conn.createStatement ();             
ResultSet resultset = statement.executeQuery ("select * from Product");
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Users</h1>

<table BORDER = “1” BGCOLOR= '#dcdfdf' width=’50%’ cellspacing=‘1’ cellpadding = ‘0’  bordercolor='#0e1515' border = none>
            <tr>
                <th BGCOLOR=‘#DAA520’> <font size= ‘2’/> Product ID </th>
                <th bgcolor=‘#DAA520’> <font size= ‘2’/> Product Name </th>
               <th bgcolor=‘#DAA520’> <font size= ‘2’/> Product Price </th>
                
            </tr>
            <% while (resultset.next()) {%>
            <tr>
                <td> <center> <%= resultset.getString(1)%></center> </td>
                <td> <center> <%= resultset.getString(2)%></center> </td>
                <td> <center> $ <%= resultset.getString(4)%></center> </td>
            </tr>
            <% }%>
                        
        </table>
    </body>
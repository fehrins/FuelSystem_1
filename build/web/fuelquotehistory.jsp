<%-- 
    Document   : FUELQUOTEHISTORY
    Created on : Apr 24, 2019, 1:38:34 AM
    Author     : Vaiosoft
--%>

<%@page import="java.sql.*"%>
<%@page import="java.io.*"%>


<%
    String username = request.getParameter("USERNAME");
     String url = "jdbc:oracle:thin:@129.7.240.3:1521:ORCL";
        Class.forName ("oracle.jdbc.driver.OracleDriver"); 
// Establish connection //
Connection conn = DriverManager.getConnection(url, "SUNESARAF", "SUNESARAF1");

Statement statement = conn.createStatement ();             
ResultSet resultset = statement.executeQuery ("select clientname, clientstreet, clientcity, clientstate, clientzipcode, gallonsrequested, total, shipping, totalcost FROM FUEL_QUOTE where username = '"+username+"'");
out.println(username);
%>
<div id="header">
            <center> <h3> Fuel Quote History</h3> </center>
            
        </div>
        <div id="sidemenu">

    <center><title>Quote History</title></centre>


<body>
    <div class="optionsDiv">
        Sort By <select id="selectField">
            <option value="All" selected>All</option>
            <option value="Fuel Price">Fuel Price</option>
            <option value="Delivery Date">Delivery Date</option>
            <option value="Gallons Requested">Gallons Requested</option>

        </select>
   
    </div>
    <table id="myTable">
        <tr id="HeadRow">
            <td>Full Name  </td>
            <td>Address  </td>
            <td>Gallons Requested  </td>
            <td>Requested Date </td>
            <td>Total </td>
            <td>Shipping</td>
            <td>Total Cost</td>
        </tr>
</tr>
            <% while (resultset.next()) {%>
            <tr>
                <td> <center> <%= resultset.getString(1)%></center> </td>
    <td> <center> <%= resultset.getString(2)%>, <%= resultset.getString(3)%> <%= resultset.getString(4)%></center> </td>
                <td> <center> <%= resultset.getString(5)%></center> </td>
                <td> <center> <%= resultset.getString(6)%></center> </td>
                <td> <center> <%= resultset.getString(7)%></center> </td>
                <td> <center> <%= resultset.getString(8)%></center> </td>
                <td> <center> <%= resultset.getString(9)%></center> </td>
            </tr>
            <% }%>
        
    </table>
    </div>
</body>


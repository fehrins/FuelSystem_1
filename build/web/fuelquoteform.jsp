<%-- 
    Document   : accessTable
    Created on : Nov 29, 2018, 9:44:47 PM
    Author     : Admin
--%>


<%@page import="java.sql.*"%>
<%@page import="java.io.*"%>


<%
    try{
     String url = "jdbc:oracle:thin:@129.7.240.3:1521:ORCL";
        Class.forName ("oracle.jdbc.driver.OracleDriver"); 
// Establish connection //
Connection conn = DriverManager.getConnection(url, "SUNESARAF", "SUNESARAF1");

Statement statement = conn.createStatement ();             
ResultSet resultset = statement.executeQuery ("select * from SEASONALFLUCTUATION");
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body> <% while (resultset.next()) {%><hr>
        <div>
            <jsp:declaration>
            String summer = "";
            String winter = "";
            </jsp:declaration>
            
            <jsp:scriptlet>
            summer = resultset.getString(1);
            winter = resultset.getString(2);
            
            
            </jsp:scriptlet>

              
           <script>
            var summer = <%= resultset.getString(1) %>;
            localStorage.setItem("summer", summer);
            var winter = <%= resultset.getString(2) %>;
            localStorage.setItem("winter", winter);
        </script>
        <div>
            <% }%>
        
        </table>
    </body>

<%@page import="java.sql.*"%>
<%@page import="java.io.*"%>

<% }catch(Exception e){
out.println("try again!");
}
%>


<% try{
     String url = "jdbc:oracle:thin:@129.7.240.3:1521:ORCL";
        Class.forName ("oracle.jdbc.driver.OracleDriver"); 
// Establish connection //
Connection conn = DriverManager.getConnection(url, "SUNESARAF", "SUNESARAF1");

Statement statements = conn.createStatement ();             
ResultSet resultsets = statements.executeQuery ("select * from TRANSPORTATION");
%>


<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>  <% while (resultsets.next()) {%>       <hr>
        <div>
            <jsp:declaration>
            String txcost = "";
            String othercost = "";
            </jsp:declaration>
            
            <jsp:scriptlet>
            txcost = resultsets.getString(1);
            othercost = resultsets.getString(2);
            
            
            </jsp:scriptlet>

           <script>
            var txcost = <%= resultsets.getString(1) %>;
            localStorage.setItem("txcost", txcost);
            var othercost = <%= resultsets.getString(2) %>;
            localStorage.setItem("othercost", othercost);
        </script>
        <div>
            <% }%>
        
        </table>
    </body>
    
    <% }catch(Exception e){
out.println("try again!");
}
%>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
   <script>
        //document.getElementById('USERNAME').innerhtml = localStorage.getItem('username');
        //document.getElementById('USERNAME').value = localStorage.getItem('username');
        function storeme(){
          document.getElementById('USERNAME').value = localStorage.getItem('username');
          document.getElementById('SUMMERFUELPRICE').value = localStorage.getItem('summer');
          document.getElementById('WINTERFUELPRICE').value = localStorage.getItem('winter');
          document.getElementById('TXCOST').value = localStorage.getItem('txcost');
          document.getElementById('OTHERCOST').value = localStorage.getItem('othercost');
          document.getElementById('DISCOUNT').value = localStorage.getItem('discount');
        }
        //
    </script>
    <div id="header">

            <center>
        <h2> Fuel Quote Form </h2> </center>
        </div>
        <div id="sidemenu">
            <form action="fuelquote.jsp" method="post">  
<input id="USERNAME" type="text" name="USERNAME" hidden/><input id="SUMMERFUELPRICE" type="text" name="SUMMERFUELPRICE" hidden/><input id="WINTERFUELPRICE" type="text" name="WINTERFUELPRICE" hidden/>
<input id="TXCOST" type="text" name="TXCOST" hidden/><input id="OTHERCOST" type="text" name="OTHERCOST" hidden/>
              <input id="DISCOUNT" type="text" name="DISCOUNT" hidden/>

Full Name:<input type="text" name="CLIENTNAME"/><br/><br/>   
Address:<input type="text" name="CLIENTSTREET"/><br/><br/>
City:<input type="text" name="CLIENTCITY"/><br/><br/>
State:<input type="text" name="CLIENTSTATE"/><br/><br/>
Zipcode:<input type="text" name="CLIENTZIPCODE"/><br/><br/>
Gallons Requested:<input type="text" name="GALLONSREQUESTED"/><br/><br/>
Day:<input type="text" name="DAY"/><br/><br/>
Month:<input type="text" name="MONTH"/><br/><br/>
Year:<input type="text" name="YEAR"/><br/><br/>

<input  type="submit" onclick="storeme()" value="SUBMIT"/> 
 
</form>  
         
        </div>   
    </body>
</html>

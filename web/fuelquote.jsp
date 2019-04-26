
<%@ page import ="java.sql.*" %>
   <%
try{

    String url = "jdbc:oracle:thin:@129.7.240.3:1521:ORCL";
        String username = request.getParameter("USERNAME");
        String clientname = request.getParameter("CLIENTNAME");
        String clientstreet = request.getParameter("CLIENTSTREET");
        String clientcity = request.getParameter("CLIENTCITY");
        String clientstate = request.getParameter("CLIENTSTATE");
        String clientzipcode = request.getParameter("CLIENTZIPCODE");
        String gallonsrequested = request.getParameter("GALLONSREQUESTED");
        String day = request.getParameter("DAY");
        String Month = request.getParameter("MONTH");
        String year = request.getParameter ("YEAR");
        String deliverydate = request.getParameter("REQUESTEDDATE");
        String summerfuelprice = request.getParameter("SUMMERFUELPRICE");
        String winterfuelprice = request.getParameter("WINTERFUELPRICE");
        String txcost = request.getParameter("TXCOST");
        String othercost = request.getParameter("OTHERCOST");
        
        
        float gallonsrequested1= Float.parseFloat(gallonsrequested);
        float summerfuelprice1 = Float.parseFloat(summerfuelprice);
        float winterfuelprice1 = Float.parseFloat(winterfuelprice);
        float txcost1 = Float.parseFloat(txcost);
        float othercost1 = Float.parseFloat(othercost);
        float shipping = 1.22f;
        float total = 1.22f;
        float totalcost = 1.22f;
        if (clientstate == "TX"){
             shipping = txcost1;
        } else {
             shipping = othercost1;
             //return shipping;
        }
        
        if (Month == "Mar" || Month == "Apr" || Month == "May" || Month == "Jun" || Month == "Jul" || Month == "Aug"){
          
            total = (gallonsrequested1*summerfuelprice1);
            totalcost = total + shipping;
            
        } else {
           total = (gallonsrequested1*winterfuelprice1);
           totalcost = total + shipping;
       }

       %>
      

       
       <%
        Class.forName ("oracle.jdbc.driver.OracleDriver"); // database connection
        Connection conn =DriverManager.getConnection(url, "SUNESARAF", "SUNESARAF1");  
       
        PreparedStatement psrt = conn.prepareStatement("INSERT INTO FUEL_QUOTE VALUES ('"+username+"','"+clientname+"','"+clientstreet+"','"+clientcity+"','"+clientstate+"','"+clientzipcode+"', '"+gallonsrequested+"', '"+day+"','"+Month+"', '"+year+"','"+total+"','"+shipping+"','"+totalcost+"')");
        psrt.execute();
       
        PreparedStatement pst = conn.prepareStatement("DELETE FROM FUEL_EXTRACT");
                     pst.execute();
        
        PreparedStatement pat = conn.prepareStatement("INSERT INTO FUEL_EXTRACT VALUES ('"+username+"','"+clientname+"','"+clientstreet+"','"+clientcity+"','"+clientstate+"','"+clientzipcode+"', '"+gallonsrequested+"', '"+day+"','"+Month+"', '"+year+"','"+total+"','"+shipping+"','"+totalcost+"')");
        pat.execute();
        
        PreparedStatement ptt = conn.prepareStatement("Select clientname, clientstreet, clientcity, clientstate, clientzipcode, gallonsrequested, total, shipping, totalcost From FUEL_EXTRACT");
        ResultSet resultset = ptt.executeQuery();
        out.println(clientname);
        out.println (clientstreet);
        out.println(clientcity);
        out.println (clientstate);
        out.println(clientzipcode);
        out.println (gallonsrequested);
        out.println(total);
        out.println (shipping);
        out.println (totalcost);
        %>
        <%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Order Confirmation</title>
    </head>
    <body>
        <h2>Order Confirmation</h2>

        <form action="access3.jsp" method="post">
            <% while (resultset.next()) {%>
            
                <td>  <%= resultset.getString(1)%> </td>
                 <td> <%= resultset.getString(2)%> </td>
               <td>   <%= resultset.getString(3)%>, <%= resultset.getString(4)%> <%= resultset.getString(5)%> </td>
                
                
        <td>     Gallons Requested :<%= resultset.getString(6)%> </td>
             
             
<td> Total:      $<%= resultset.getFloat(7)%> </td>
<td> Shipping:   $<%= resultset.getFloat(8)%> </td>
<td> Total Cost: $<%= resultset.getFloat(9)%> </td>

            
            <% }%>
            <input type="submit" name = "" value = "Confirm"><br>   </form>           
        
    </body>

      <%  }
   catch(Exception e){
        
       out.println("Please Try Again");       
       
   }    

        %>
        



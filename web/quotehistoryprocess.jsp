<%-- 
    Document   : quotehistoryprocess
    Created on : Apr 24, 2019, 1:41:57 AM
    Author     : Vaiosoft
--%>

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
        String requesteddate = request.getParameter("REQUESTEDDATE");
        
     
        Class.forName ("oracle.jdbc.driver.OracleDriver"); // database connection
        Connection conn =DriverManager.getConnection(url, "SUNESARAF", "SUNESARAF1");  
       
        PreparedStatement pst = conn.prepareStatement("SELECT h.GALLONSREQUESTED, h.CLIENTSTREET, h.CLIENTCITY, h.CLIENTSTATE, h.CLIENTZIPCODE, e.SUGGESTEDPRICE, e.AMOUNTDUE FROM FUEL_QUOTE h inner join PRICING e ON h.USERNAME = '"+username+"' AND h.USERNAME=e.USERNAME)"); 
        pst.execute();
        
     }
   catch(Exception e){
        
       out.println("Please Try Again");       
       
   }    

        %>

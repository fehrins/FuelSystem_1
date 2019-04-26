<%-- 
    Document   : delete
    Created on : Nov 29, 2018, 9:36:56 PM
    Author     : Admin
--%>


<%@ page import ="java.sql.*" %>
<%
    try{
        String url = "jdbc:oracle:thin:@129.7.240.3:1521:ORCL";
        String username = request.getParameter("USERNAME");   
        String password = request.getParameter("PASSWORD");
        
        Class.forName ("oracle.jdbc.driver.OracleDriver"); // MySQL database connection
        Connection conn =DriverManager.getConnection(url, "SUNESARAF", "SUNESARAF1");  
         
         
        PreparedStatement pst = conn.prepareStatement("INSERT INTO LOGIN VALUES ('"+username+"','"+password+"','1')");
     
     pst.execute();
                
   }
   catch(Exception e){
        
       out.println("Please Try Again");       
       
   }      
%>


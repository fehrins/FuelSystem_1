<%-- 
    Document   : validate
    Created on : Nov 29, 2018, 4:12:42 PM
    Author     : Admin
--%>

<%@ page import ="java.sql.*" %>
<%
    try{
        String url = "jdbc:oracle:thin:@129.7.240.3:1521:ORCL";
        String username = request.getParameter("username");   
        String password = request.getParameter("password");
        Class.forName ("oracle.jdbc.driver.OracleDriver"); // MySQL database connection
        Connection conn =DriverManager.getConnection(url, "SUNESARAF", "SUNESARAF#");  
        PreparedStatement pst = conn.prepareStatement("Select * from ProductLine WHERE ProductLineName='"+password+"' AND ProductLineID='"+username+"'");
      //pst.setString(1, "Cherry");
      //  pst.setString(2, password);
        ResultSet rs = pst.executeQuery();          
        if(rs.next())           
           out.println("Valid login credentials");        
        else
           out.println("Invalid login credentials");            
   }
   catch(Exception e){       
       out.println("Something went wrong !! Please try again");       
   }      
%>
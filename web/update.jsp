<%-- 
    Document   : update
    Created on : Nov 29, 2018, 10:09:49 PM
    Author     : Admin
--%>

<%@ page import ="java.sql.*" %>
<%
    try{
        String url = "jdbc:oracle:thin:@129.7.240.3:1521:ORCL";
        String username = request.getParameter("username");  
        String password = request.getParameter("password");
      // int accessnum=Integer.parseInt(access);
        
        Class.forName ("oracle.jdbc.driver.OracleDriver"); // MySQL database connection
        Connection conn =DriverManager.getConnection(url, "SUNESARAF", "SUNESARAF#");  
         
         
        PreparedStatement pst = conn.prepareStatement("UPDATE LOGIN WHERE UN='"+username+"'");
      //pst.setString(1, "Cherry");
      //  pst.setString(2, password);
     pst.execute();
      
     // conn.commit();
       // ResultSet rs = pst.executeQuery();          
       // if(rs.next())           
       //    out.println("Valid login credentials");        
       // else
       //    out.println("Invalid login credentials");            
   }
   catch(Exception e){   
        String access=request.getParameter("access");
       out.println("Something went wrong !! Please try again");       
       out.println(access); 
   }      
%>

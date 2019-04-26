<%-- 
    Document   : quotehistoryprocess
    Created on : Apr 24, 2019, 1:41:57 AM
    Author     : Vaiosoft
--%>

<%@ page import ="java.sql.*" %>
   <%
try{
    String url = "jdbc:oracle:thin:@129.7.240.3:1521:ORCL";
        String txcost = request.getParameter("TXCOST");
        String othercost = request.getParameter ("OTHERCOST");
        
        
        

        Class.forName ("oracle.jdbc.driver.OracleDriver"); // database connection
        Connection conn =DriverManager.getConnection(url, "SUNESARAF", "SUNESARAF1");  
        
       
        PreparedStatement st = conn.prepareStatement("INSERT INTO TRANSPORTATION VALUES('"+txcost+"','"+othercost+"')"); 
        
        st.execute();
        
     }
   catch(Exception e){
        
       out.println("Please Try Again");       
       
   }    

        %>
        
        <%
            String redirectURL = ("access2.jsp");
            response.sendRedirect(redirectURL);
        %>

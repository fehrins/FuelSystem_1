<%-- 
    Document   : insert
    Created on : Nov 29, 2018, 7:31:15 PM
    Author     : Admin
--%>
<%--
<%@page import="bean.InsertInto"%>
<%@ include file="index.jsp" %>  
<hr/>  
  
<h3>Login Form</h3>  
<%  
String username=request.getParameter("username"); 
String password=request.getParameter("password"); 
String access=request.getParameter("access");
InsertInto.insertInto(username,password,access);
 %>  
 <br/>  
<form action="loginprocess.jsp" method="post">  
Email:<input type="text" name="username"/><br/><br/>  
Password:<input type="password" name="password"/><br/><br/>  
<input type="submit" value="login"/>"  
</form> 
--%>


<%@ page import ="java.sql.*" %>
<%
    try{
        String url = "jdbc:oracle:thin:@129.7.240.3:1521:ORCL";
        String fullname = request.getParameter("fullname");   
        String address1 = request.getParameter("address1");
        String address2 = request.getParameter("address2");
        String city = request.getParameter("city");
        String state = request.getParameter("state");
        String zipcode = request.getParameter("zipcode");
        
        Class.forName ("oracle.jdbc.driver.OracleDriver"); // MySQL database connection
        Connection conn =DriverManager.getConnection(url, "SUNESARAF", "SUNESARAF1");  
         
         
        PreparedStatement pst = conn.prepareStatement("INSERT INTO PROFILECOMPLETION VALUES ('"+fullname+"','"+address1+"','"+address2+"',"
                + "'"+city+"','"+state+"','"+zipcode+"')");
     
     pst.execute();
                
   }
   catch(Exception e){   
        
       out.println("Please Try Again");       
       
   }      
%>

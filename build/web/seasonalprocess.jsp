<%-- 
    Document   : quotehistoryprocess
    Created on : Apr 24, 2019, 1:41:57 AM
    Author     : Vaiosoft
--%>

<%@ page import ="java.sql.*" %>
   <%
try{
    String url = "jdbc:oracle:thin:@129.7.240.3:1521:ORCL";
        String summerdiscount = request.getParameter("SUMMERDISCOUNT");
        String winterdiscount = request.getParameter("WINTERDISCOUNT");
        String discount = request.getParameter("DISCOUNT");
        String profitmargin = request.getParameter("PROFITMARGIN");
        
        float summerdiscount1 = Float.parseFloat(summerdiscount);
        float winterdiscount1 = Float.parseFloat(winterdiscount);
        float profitmargin1 = Float.parseFloat(profitmargin);
        //calculating summer fuel price
        float profitmargin2 = summerdiscount1 * (profitmargin1/100);
        float summerfuelprice = summerdiscount1 + profitmargin2;
        //calculating winter fuel price
        float profitmargin3 = winterdiscount1 * (profitmargin1/100);
        float winterfuelprice = winterdiscount1 + profitmargin3;
      
        Class.forName ("oracle.jdbc.driver.OracleDriver"); // database connection
        Connection conn =DriverManager.getConnection(url, "SUNESARAF", "SUNESARAF1");  
        
        PreparedStatement dst = conn.prepareStatement("DELETE FROM SEASONALFLUCTUATION");
        
        dst.execute();
        
        PreparedStatement pst = conn.prepareStatement("INSERT INTO SEASONALFLUCTUATION VALUES('"+summerdiscount+"','"+winterdiscount+"','"+discount+"','"+profitmargin+"','"+summerfuelprice+"','"+winterfuelprice+"')"); 
        
        pst.execute();
        
        PreparedStatement st = conn.prepareStatement("INSERT INTO SEASONALHISTORY VALUES('"+summerdiscount+"','"+winterdiscount+"','"+discount+"','"+profitmargin+"','"+summerfuelprice+"','"+winterfuelprice+"')"); 
        
        st.execute();
        
     }
   catch(Exception e){
        
       out.println("Please Try Again");       
       
   }    

        %>

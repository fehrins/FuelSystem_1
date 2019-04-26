/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bean;  
import java.sql.*;  
import static bean.Provider.*;  
  
public class ConnectionProvider {  
private static Connection con=null;  
static{  
try{  
Class.forName("oracle.jdbc.driver.OracleDriver");  
con=DriverManager.getConnection( "jdbc:oracle:thin:@129.7.240.3:1521:ORCL","SUNESARAF", "SUNESARAF1"); 
}catch(Exception e){}  
}  
  
public static Connection getCon(){  
    return con;  
}  
  
}  
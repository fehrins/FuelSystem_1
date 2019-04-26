/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bean;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 *
 * @author Admin
 */
public class InsertInto {
    public static void insertInto(String username,String password,String access){
        boolean status=false;  
try{  
   int accessnum=Integer.parseInt(access);		
Connection con=ConnectionProvider.getCon();  
    

//PreparedStatement pst=con.prepareStatement(  
//        "INSERT INTO LOGINTABLE VALUES ('"+username+ "', '"+password+"', '"+accessnum+"')");
System.out.println("we are in insert into");
 PreparedStatement pst=con.prepareStatement("INSERT INTO LOGIN VALUES ('Username','Password',1)");
 //pst.setString(1, username);
 //pst.setString(2, password);
  //pst.setInt(3, 1);
  pst.executeUpdate();   
  con.commit();
  System.out.println("we are in insert into");
//ps.setString(1,bean.getEmail());  

//ps.setString(2, bean.getPass());  
            

}catch(Exception e){}  
  

       
    }
}

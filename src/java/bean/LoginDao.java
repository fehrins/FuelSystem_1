/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bean;

import java.sql.*;

public class LoginDao {
    static String glb_username = "";    
    public static int validate(String username, String password) {
        boolean status = false;
   
        Connection con = ConnectionProvider.getCon();
        
        System.out.println("were in here");
        
        try{
            PreparedStatement ps = con.prepareStatement(
                "SELECT * from LOGIN WHERE username='" +username+ "' AND password='" +password+ "'");
            ResultSet rs = ps.executeQuery();
            
             
            if (rs.next()) {
                int loginstatus = 0;
                loginstatus = rs.getInt("loginstatus");
                if (loginstatus == 1) {
                    glb_username = username;
                    updates(username);
                    return 1;
                } 
                else if (loginstatus ==3){
                return 3;
                }
                else {
                    glb_username = username;
                    return 2;
                }
            }
        } catch (Exception e){
            return -1;
        }
        

        return -1;
      
    }



public static void updates(String username) {
        int loginstatus = 0;
        try {

            Connection con = ConnectionProvider.getCon();
            //int loginstatus = -1;
            //System.out.println("were in here");

            PreparedStatement pst = con.prepareStatement(
                    "UPDATE LOGIN set loginstatus = 2 WHERE username='"+ username + "'");

            ResultSet rss = pst.executeQuery();

            if (rss.next()) {
                loginstatus = rss.getInt("loginstatus");
            }
        } catch (Exception e) {
        }
    }




public static void setclientform(String clientname, String clientstreet, String clientcity, String clientstate, String clientzipcode, String gallonsrequested, String suggestedprice, String requesteddate)
{
    try{
        Connection con = ConnectionProvider.getCon();
        PreparedStatement pst = con.prepareStatement("INSERT INTO fuelquote VALUES ('"+glb_username+"','"+clientname+"','"+clientstreet+"','"+clientcity+"','"+clientstate+"','"+clientzipcode+"', '"+gallonsrequested+"', '"+suggestedprice+"','"+requesteddate+"'");
        pst.execute();  
        }
        
    catch (Exception e ){}
}




public static void getfuelhistory(String username)
{
    try{
        Connection con = ConnectionProvider.getCon();
        PreparedStatement pst = con.prepareStatement("SELECT clientname, clientstreet, clientcity, clientstate, clientzipcode, gallonsrequested, requesteddate, totalamountdue FROM fuelhistory, profilecompletion WHERE username='"+username+"'");
        ResultSet rs = pst.executeQuery();
        if (rs.next()){
            String att[] = new String[5];
            //2 + 3 = 5
            att[0] = "gallonsrequested";
            att[1] = "deliveryaddress";
            att[2] = "deliverydate";
            att[3] = "suggestedprice";
            att[4] = "totalamountdue";
            
        }
        System.out.println("gallonsrequested + deliveryaddress");
    }catch (Exception e ){
        
    }
}



}

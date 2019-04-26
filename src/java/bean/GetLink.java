/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bean;

/**
 *
 * @author Admin
 */
public class GetLink {
    public String getLink(int accessLevel){
        
        switch(accessLevel)
        {
            case 0:
                return "www.google.com";
            case 1: 
               return "access1.jsp";
            case 2:
                return "access2.jsp";
            case 3: 
                return "access3.jsp";
            default:
                return "www.google.com";
            
        }
    }
}

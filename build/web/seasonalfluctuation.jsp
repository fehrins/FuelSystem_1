<%-- 
    Document   : fuelquoteform
    Created on : Apr 23, 2019, 8:17:20 PM
    Author     : Vaiosoft
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>

    <div id="header">

            <center>
        <h2> Seasonal Rates and Discounts </h2> </center>
        </div>
        <div id="sidemenu">
            <form action="seasonalprocess.jsp" method="post">  
        
          
<h3>Fuel Rates</h3>
Summer Rates: <input type="text" name="SUMMERDISCOUNT"/><br/><br/>
Winter Rates: <input type="text" name="WINTERDISCOUNT"/><br/><br/>

<h3>Discounts</h3>
Monthly discounts: <input type="text" name="DISCOUNT"/><br/><br/>

<h3>Company Profit</h3>
Profit per gallon: <input type="text" name="PROFITMARGIN"/>%<br/><br/>


<input  type="submit" onclick="storeme()" value="SAVE"/> 
 
</form>  
           
            
        </div>   
    </body>
</html>

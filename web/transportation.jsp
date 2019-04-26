<%-- 
    Document   : fuelquoteform
    Created on : Apr 23, 2019, 8:17:20 PM
    Author     : Vaiosoft
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  
    <body>
    <script>
        //document.getElementById('USERNAME').innerhtml = localStorage.getItem('username');
        //document.getElementById('USERNAME').value = localStorage.getItem('username');
        function storeme(){
          document.getElementById('USERNAME').value = localStorage.getItem('username');
        }
        //
    </script>
    <div id="header">

            <center>
        <h2> Transportation </h2> </center>
        </div>
        <div id="sidemenu">
            <form action="transportationprocess.jsp" method="post">  
          <input id="USERNAME" type="text" name="USERNAME" hidden/><br></br>   
          
<h3>Transportation</h3>
Texas Shipping Cost: <input type="text" name="TXCOST"/><br/><br/>
Other States Shipping Cost: <input type="text" name="OTHERCOST"/><br/><br/>
<input  type="submit" onclick="storeme()" value="SAVE"/> 
 
</form>  
           
            
        </div>   
    </body>
</html>
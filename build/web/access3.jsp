<%-- 
    Document   : access3
    Created on : Nov 29, 2018, 7:08:13 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
     <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <style>
body{
	background-image: url("main.jpg");
	margin: 0px;
	border: 0px;
}
#header{
	height:100px;
    background:#061216;
    border:1px solid #061216;
    margin:0px auto;
    color: white;
}
#sidemenu{
	width: 320px;
	background: rgba(0,0,0,0.5);
	height: 420px;
	color: #fff;
	top: 57%;
	left: 50%;
	position: absolute;
	transform: translate(-50%, -50%);
	box-sizing: border-box;
        padding: 60px 70px;
}
#data{
	height: 700px;
	background:yellow;
	padding-left:330px;
}
#head_img{
	background:white;
	border-radius:50px;
}
#sidemenu.ul li{
	display: inline-block;
	padding-bottom: 10px;
	
}
li{
	padding-bottom: 30px;
	border-bottom: 3px solid grey;
}
li:hover {
	background: black;
	color: white;
	padding-left:10px;
    -moz-transition: padding-left .3s ease-in;
    -o-transition: padding-left  .3s ease-in;
    -webkit-transition: padding-left  .3s ease-in;
    transition: padding-left  .3s ease-in;
}
a{
	text-decoration:none;
	color:white;
}
#back{
	width: 50px;
	height: 50px;
	box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19)
}
#back:hover{
	box-shadow: 0 4px 8px 0 white, 0 6px 20px 0 white;
}
#back{
	width: 50px;
	height: 50px;
	box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19)
}
#back:hover{
	box-shadow: 0 4px 8px 0 white, 0 6px 20px 0 white;
}
img{
	width: 70px;
	height: 70px;
	}
.loginbox input[type = "submit"]
{
    background: transparent;
	color: white;
         border: none;
         cursor: pointer;
         outline:none;
	padding-left:10px;
    -moz-transition: padding-left .3s ease-in;
    -o-transition: padding-left  .3s ease-in;
    -webkit-transition: padding-left  .3s ease-in;
    transition: padding-left  .3s ease-in;
          	
        }
   
        
     </style>
     
     <script>
        //document.getElementById('USERNAME').innerhtml = localStorage.getItem('username');
        //document.getElementById('USERNAME').value = localStorage.getItem('username');
        function storeme(){
          document.getElementById('USERNAME').value = localStorage.getItem('username');

        }</script>
     
        <div id="header">
            <center>
        <h1> Welcome to Admin Portal </h1> </center>
        </div>
        <div id="sidemenu">
        
            <ul>
                
                <li><a href="fuelquoteform.jsp" >Fuel Quote Form</a></li>
                <div class = "loginbox">
                <form action="fuelquotehistory.jsp" method="post"> 
                <input id="USERNAME" type="text" name="USERNAME" hidden/>
                <li><input type="submit" onclick="storeme()" value="Past Orders"></a></li></form>
                </div>
                <li><a href="https://www.google.com">Global Link</a></li>
                <li><a href="https://overview.mail.yahoo.com/">Secure Link</a></li>
            </ul>
        </div>   
    </body>
</html>

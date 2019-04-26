<%-- 
    Document   : adduser
    Created on : Nov 30, 2018, 3:23:56 PM
    Author     : Vaiosoft
--%>

<head>
    <title> Insert </title>
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

    </style>
    <div id="header">

            <center>
        <h2> New Account </h2> </center>
        </div>
        <div id="sidemenu">
            <form action="add.jsp" method="post">  
Username:<input type="text" name="USERNAME"/><br/><br/>   
Password:<input type="text" name="PASSWORD"/><br/><br/>
<input  type="submit" value="CREATE"/> 
 
</form>  
           
            
        </div>   
    </body>



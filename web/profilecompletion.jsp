
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    

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
            height: 500px;
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
    <body>
        <script>
            function validateaccount(){
                var fullname = document.getElementById("fullname").value;
                var address1 = document.getElementById("address1").value;
                var address2 = document.getElementById("address2").value;
                var city = document.getElementById("city").value;
                var state = document.getElementById("state").value;
                var zipcode = document.getElementById("zipcode").value;
                
                if(fullname === "" || address1 === "" || city === "" || state === "" || zipcode === ""){
                    alert("Make sure none of the fields are blank");
                    return;
                }

                if(!Number.isInteger(zipcode)) {
                    alert("Make sure the Zipcode is Number");
                    return;
                }

                if(Number.isInteger(state) || Number.isInteger(city)) {
                    alert("Make sure the state or city does not include any digits");
                    return;
                }
                
            }
        </script>
        <div id="header">
            <center> <h2> Welcome</h2> </center>
            <center> <h4> Update your profile </h4> </center>
        </div>
        <div id="sidemenu">
            
        <form action="LoginDao.java" method="post">  
            Full Name: 
            <input id="fullname" type="text" name="fullname"/><br/><br/>  
            Address 1: 
            <input id="address1" type="text" name="address1"/><br/><br/> 
            Address 2: 
            <input id="address2" type="text" name="address2"/><br/><br/>
            City: 
            <input id="city" type="text" name="city"/><br/><br/>
            State: 
            <input id="state" type="text" name="state"/><br/><br/>
            Zipcode: 
            <input id="zipcode" type="text" name="zipcode"/><br/><br/>
            <input type="submit" onclick="validateaccount()" value="Submit"/> 
        </form> 
        </div> 
    </body>
</html>

<%-- 
    Document   : loginprocess
    Created on : Nov 29, 2018, 2:47:16 PM
    Author     : Admin
--%>

<%@page import="bean.LoginDao"%>  
<jsp:useBean id="obj" class="bean.LoginBean"/>  
  
<jsp:setProperty property="*" name="obj"/>  
  
<%  
String username=request.getParameter("username");  
String password=request.getParameter("password");

System.out.println(username);

int status = LoginDao.validate(username,password);  
if(status>=0){
    switch(status){
        case 1:
            response.sendRedirect("profilecompletion.jsp");
            break;
        case 2:
            response.sendRedirect("access3.jsp");
            break;
        case 3:
            response.sendRedirect("access2.jsp");
            break;
        default: 
            response.sendRedirect("index.jsp");
            break;
    }
    out.println("You r successfully logged in"); 
    //out.println(bean.getEmail());
    session.setAttribute("session","TRUE");
    out.println("You'r access level is "+status); 
}  
else  {
    System.out.print("Sorry, email or password error"); 
}
 
%>   
 
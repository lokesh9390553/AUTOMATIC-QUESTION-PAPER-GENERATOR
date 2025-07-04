<%@ page import="java.sql.*" %>
<%@ page import="java.util.*"%>
<%@ include file="makecon.jsp" %>

<% 
   String uid=request.getParameter("uname");
   String pwd=request.getParameter("upass");
   session.putValue("blogin",uid);
ResultSet rs=st.executeQuery("select * from students where STUREGNO ='" + uid + "' and password='" +pwd+  "'");

if(uid.equals("admin") && pwd.equals("admin"))
   
{%>
    <jsp:forward page="index.jsp"/>
   <% 
}
 else
   if(rs.next())
{
session.putValue("uid",uid);
%>
    <jsp:forward page="user.html"/>
   <% 
}

else
  {
	out.println(" <body > <center>Login Failed <br><br><a href=login.jsp> Login </login>");
   } %> 
  

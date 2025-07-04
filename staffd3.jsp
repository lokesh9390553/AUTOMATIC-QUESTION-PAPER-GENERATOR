<link href="ksrm.cdf" rel="stylesheet">
<%@ include file="common.jsp" %>
<%@ page import="java.sql.*"%>
<%
String staffid=request.getParameter("staffid");


try{
PreparedStatement sst=null;
ResultSet rs=null;

st.executeUpdate("delete staff where staffid='"+staffid+"'");
%>
<body >
<br>  <br>  <br>  <br>
<center>
<h3>Your staff Deleted Succeeded</h3>
<br><br><center>


<% 
     st.close();
     con.close(); 
}
catch(Exception e)
{
%>
<body >
<br>  <br>  <br>  <br>
<center>
<a href="javascript:history.back()"><img src="images\cont.png" border=0></a>&nbsp;&nbsp;
<br>  <br>  <br>  <br>
<%
out.println(e.getMessage());
}
%>

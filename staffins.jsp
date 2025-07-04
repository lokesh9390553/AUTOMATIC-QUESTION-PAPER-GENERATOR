<%@ page import="java.util.Date, java.text.DateFormat, java.util.*" %>
<link href="ksrm.cdf" rel="stylesheet">
<%@ include file="common.jsp" %>
<%@ page import="java.sql.*"%>
<%
String staffid=request.getParameter("staffid");
String name=request.getParameter("name");
String address=request.getParameter("address");
String qualification=request.getParameter("qualification");
int phone=Integer.parseInt(request.getParameter("phone"));
int mobile=Integer.parseInt(request.getParameter("mobile"));
String email=request.getParameter("email");
String tos=request.getParameter("tos");
String sex=request.getParameter("sex");
String branch=request.getParameter("branch");
String doj=request.getParameter("sel_date");
	
try{


PreparedStatement sst=null,sst1=null;
ResultSet rs=null;




String cmd ="insert into staff values (?,?,?,?,?,?,?,?,?,?,?)";

sst=con.prepareStatement(cmd);

sst.setString(1,staffid);
sst.setString(2,name);
sst.setString(3,address);
sst.setString(4,qualification);
sst.setInt(5,phone);
sst.setInt(6,mobile);
sst.setString(7,email);
sst.setString(8,tos);
sst.setString(9,sex);
sst.setString(10,branch);
sst.setString(11,doj);
int eff=sst.executeUpdate();

Date d1 = new Date();
String doc=new java.text.SimpleDateFormat("dd-MMM-yy").format(d1);



//Date d2 = new Date(yearjoin,"dec",12);


String t=null;

if(tos.equalsIgnoreCase("principal"))
 t="p";
else  
if(tos.equalsIgnoreCase("hod"))
t="t";
else  
if(tos.equalsIgnoreCase("professor"))
t="t";
else  
if(tos.equalsIgnoreCase("lecturer"))
t="t";
else  
if(tos.equalsIgnoreCase("staff"))
t="t";
else
t="d";


cmd ="insert into users values (?,?,?)";

sst1=con.prepareStatement(cmd);

sst1.setString(1,staffid);
sst1.setString(2,staffid);
sst1.setString(3,"e");


eff=sst1.executeUpdate();

if(eff>0)
{%>
<script type='text/javascript' src='JS/aexmplmenu_var.js'></script>
<script type='text/javascript' src='JS/menu_com.JS'></script>
<body >
  <br>  <br>  <br>  <br>
  <center>
  <h3>Your  Entry Succeeded and staff id is <%=staffid%> </h3>
  <br><br><center>

<%}
else
{%>
<body >
  <br>  <br>  <br>  <br>
  <center>
  <h3>Your Entry Failed</h3>
  <br><br><center>

<%}
}
catch(Exception e)
{
%>
<body >
  <br>  <br>  <br>  <br>
  <center>
  <a href="javascript:history.back()"><img src="images\cont.png" 
border=0></a>&nbsp;&nbsp;
  <br>  <br>  <br>  <br>
<% 
 out.println(e.getMessage());
}
%>

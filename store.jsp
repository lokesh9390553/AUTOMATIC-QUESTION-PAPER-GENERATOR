<link href="ksrm.cdf" rel="stylesheet">
<%@ include file="makecon.jsp" %>
<%@ page import="java.sql.*"%>
<%
String [] sname,regno,email;
String branch;
int g;


String uid = request.getParameter("uid");
String pwd = request.getParameter("pwd");
branch = request.getParameter("branch");

sname = request.getParameterValues("sname");
regno = request.getParameterValues("regno");
email = request.getParameterValues("email");


try{
PreparedStatement sst=null,sst1=null;
ResultSet rs=null;
int eff=0;
String cmd ="insert into branchstudents values (?,?,?,?,?,?)";
String cmd1 ="insert into marks values (?,?,?,?,?,?,?,?,?)";

for(int i=0;i<sname.length;i++)
{
sst=con.prepareStatement(cmd);

sst.setString(1,uid);
sst.setString(2,pwd);
sst.setString(3,branch);
sst.setString(4,sname[i]);
sst.setString(5,regno[i]);
sst.setString(6,email[i]);

eff=sst.executeUpdate();
}

sst1=con.prepareStatement(cmd1);
sst1.setString(1,uid);
sst1.setString(2,null);
sst1.setInt(3,0);
sst1.setInt(4,0);
sst1.setString(5,null);
sst1.setString(6,null);
sst1.setString(7,null);
sst1.setString(8,null);
sst1.setString(9,"r");

eff=sst1.executeUpdate();

if(eff>0)
{%>
<body bgColor= #bbe9ff>
  <br>  <br>  <br>  <br>
  <center>
  <h3>Your  Entry Succeeded</h3>
  <br><br><center>
  <a href="welcome.jsp" target="_parent"><img src=Images\home.jpg></a>


<%}
else
{%>
<body bgColor= #bbe9ff>
  <br>  <br>  <br>  <br>
  <center>
  <h3>Your Entry Failed</h3>
  <br><br><center>
  <a href="welcome.jsp" target="_parent"><img src=Images\home.jpg></a>
<%}
}
catch(Exception e)
{
%>
<body bgColor= #bbe9ff>
  <br>  <br>  <br>  <br>
  <center>
  <a href="javascript:history.back()"><img src="Images\cont.png" 
border=0></a>&nbsp;&nbsp;
  <br>  <br>  <br>  <br>
<% 
 out.println(e.getMessage());
}
%>

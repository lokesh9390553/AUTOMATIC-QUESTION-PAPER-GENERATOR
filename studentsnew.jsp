<%@ page import="java.sql.*" %>
<%@ page import="java.util.*"%>
<%@ include file="makecon.jsp" %>
<body>
<table border="1" cellspacing="1" width="100%" height="1">
  <tr>
    <td width="100%" height="20" colspan="3">
    <img border="0" src="pics/yellow.gif" width="100%" height="18"></td>
  </tr>
  <tr>
    <td width="100%" height="1" colspan="3">
    <p align="center">
    <img border="0" src="pics/hleft.jpg" width="125" height="28" align="left" hspace="0"><font size="5">
    <img border="0" src="pics/hright.jpg" width="125" height="28" align="right" hspace="0"></font>
    <font color="#CC6600" style="font-size: 18pt">O N L I N E&nbsp;&nbsp; E X A 
    M I N A T I O N</font></td>
  </tr>
  <tr>
    <td width="100%" height="17" colspan="3">
    <img border="0" src="pics/yellow1.gif" width="100%" height="18"></td>
  </tr>
  <tr>
    <td width="100%" height="17" colspan="3">
    <p align="center">
    <img border="0" src="pics/bar.gif" width="100%" height="16"></td>
  </tr>
</table>
<%
	String sturegno=request.getParameter("sturegno").toLowerCase();
	String name=request.getParameter("name").toLowerCase();
	String address=request.getParameter("address").toLowerCase();	
	String sex=request.getParameter("sex").toLowerCase();	
	String branch=request.getParameter("branch").toLowerCase();	
	String password=request.getParameter("password").toLowerCase();
	String phone=request.getParameter("phone");
	int  y=Integer.parseInt(request.getParameter("year"));

	
	
	PreparedStatement sst=null;
	PreparedStatement sst1=null;
	try{
		String cmd="INSERT INTO students VALUES(?,?,?,?,?,?,?,?,?,?)";
//		String cmd1 ="insert into marks values (?,?,?,?,?)";

		sst=con.prepareStatement(cmd);

		sst.setString(1,sturegno);
		sst.setString(2,name);
		sst.setString(3,address);
		sst.setString(4,phone);
		sst.setString(5,sex);
		sst.setString(6,branch);
		sst.setString(7,password);
		sst.setInt(8,y);
		sst.setInt(9,0);
		sst.setString(10,"0");

		int eff=sst.executeUpdate();
//
//		sst1=con.prepareStatement(cmd1);
//		sst1.setString(1,sturegno);
//		sst1.setString(2,null);
//		sst1.setInt(3,0);
//		sst1.setInt(4,0);
//		sst1.setString(5,"r");

//		eff=sst1.executeUpdate();

		if(eff>0)
		{%>



		<center>
		<h3>Students Creation Succeeded</h3>
		<br><br><center>
		<a href="welcome.jsp"><img src=Images\home.jpg></a>		
		<%}
		else
		{%>
		<h3>Students Creation is Failed</h3>
		<br><br><center>
		<a href="login.jsp"><img src=Images\home.jpg></a>
		<%}
	}
	catch(Exception e)
		{
		%>

		<br>		<br>		<br>		<br>
		<center>
		<a href="javascript:history.back()">Continue</a>&nbsp;&nbsp;
		<br>		<br>		<br>		<br>
<%	
		out.println(e.getMessage());
			}
%>
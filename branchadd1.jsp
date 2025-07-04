<%@ page import="java.sql.*" %>
<%@ page import="java.util.*"%>
<%@ include file="makecon.jsp" %>
<%
	String branchid=request.getParameter("branchid").toLowerCase();
	String name=request.getParameter("name").toLowerCase();
String semester=request.getParameter("semester").toLowerCase();
String branch=request.getParameter("branch").toLowerCase();
	
	
	PreparedStatement sst=null;
	ResultSet rs=null;
	try{
	String cmd="INSERT INTO branch VALUES(?,?,?,?)";
		sst=con.prepareStatement(cmd);

		sst.setString(1,branch);
		sst.setString(2,semester);
		sst.setString(3,branchid);
		sst.setString(4,name);

	
		int eff=sst.executeUpdate();
		if(eff>0)
		{%>
<body><center>
		<h3><br><br><br><br>Subject Creation Succeeded</h3>
		<br><br><center>
		<a href="blank.jsp" target="main"><img src=Images\home.jpg></a>		
		<%}
		else
		{%>

<body bgColor='papayawhip' >
		<h3>Subject  Creation is Failed</h3>
		<br><br><center>
		<a href="blank.jsp" target="main"><img src=Images\home.jpg></a>
		<%}
	}
	catch(Exception e)
		{
		%>
<body bgColor='papayawhip' >
		<br>		<br>		<br>		<br>
		<center>
		<a href="javascript:history.back()">Continue</a>&nbsp;&nbsp;
		<br>		<br>		<br>		<br>
<%	
		out.println(e.getMessage());
			}
%>
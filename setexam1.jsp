<%@ page import="java.sql.*" %>
<%@ page import="java.util.*"%>
<%@ include file="makecon.jsp" %>
<%
	String branchid=request.getParameter("extype").toLowerCase();
        st.executeUpdate("delete  setexam");
	st1.executeUpdate("update students set marks=0");

	PreparedStatement sst=null;
	ResultSet rs=null;
	try{
	String cmd="INSERT INTO setexam VALUES(?)";
		sst=con.prepareStatement(cmd);

		sst.setString(1,branchid);
	
		int eff=sst.executeUpdate();
		if(eff>0)
		{%>
<body ><center>
		<h3><br><br><br><br>Setting Successfully</h3>
		<br><br><center>
		<a href="blank.jsp" target="main"><img src=Images\home.jpg></a>		
		<%}
		else
		{%>

		<body >
		<h3>Branch  Creation is Failed</h3>
		<br><br><center>
		<a href="blank.jsp" target="main"><img src=Images\home.jpg></a>
		<%}
	}
	catch(Exception e)
		{
		%>
<body >
		<br>		<br>		<br>		<br>
		<center>
		<a href="javascript:history.back()">Continue</a>&nbsp;&nbsp;
		<br>		<br>		<br>		<br>
<%	
		out.println(e.getMessage());
			}
%>
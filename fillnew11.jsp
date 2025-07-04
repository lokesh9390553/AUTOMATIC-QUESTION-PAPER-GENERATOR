<%@ page import="java.sql.*" %>
<%@ page import="java.util.*"%>
<%@ include file="makecon.jsp" %>
<%

	String question=request.getParameter("question").toLowerCase();
	String option1=" ";
	String option2=" ";
	String option3=" ";
	String option4=" ";
	String answer=" ";
	String image=request.getParameter("image").toLowerCase();
	String branch=request.getParameter("branch").toLowerCase();
	String subject=request.getParameter("subject").toLowerCase();
	String semester=request.getParameter("semester").toLowerCase();
	String pri=request.getParameter("pri").toLowerCase();

	String unit=request.getParameter("unitid").toLowerCase();
	String level=request.getParameter("leve").toLowerCase();
	Double marks=Double.valueOf(request.getParameter("marks"));	


	


	int a=0;
	ResultSet rs=st.executeQuery("select max(qno) from matchdesc where branch='" + branch + "' and semester='" + semester + "' and subject='" + request.getParameter("subject") + "' and priority='" + pri + "' and unit = " + unit);

	if(rs.next())
	   a=rs.getInt(1) + 1;	
	
	PreparedStatement sst=null;

	try{
	String cmd="INSERT INTO matchdesc VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
		sst=con.prepareStatement(cmd);

		sst.setInt(1,a);
		sst.setString(2,branch);
		sst.setString(3,semester);
		sst.setString(4,subject);
		sst.setString(5,question);
		sst.setString(6,option1);
		sst.setString(7,option2);
		sst.setString(8,option3);
		sst.setString(9,option4);
		sst.setString(10,answer);
		sst.setString(11,image);
		sst.setString(12,unit);
		sst.setDouble(13,marks);
		sst.setString(14,level);
		sst.setString(15,"n");
		sst.setString(16,pri);


	
		int eff=sst.executeUpdate();
		if(eff>0)
		{%>
<body ><center>
		<h3><br><br><br><br>Question AddedSucceeded</h3>
		<br><br><center>
		<a href="blank.jsp" target="main"><img src=Images\home.jpg></a>		
		<%}
		else
		{%>

<body >
		<h3>Question  Creation is Failed</h3>
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
<%@ page import="java.sql.*" %>
<%@ page import="java.util.*"%>
<%@ include file="makecon.jsp" %>
<%
	int  qno=Integer.parseInt(request.getParameter("qno"));
	String question=request.getParameter("question").toLowerCase();
	String option1=request.getParameter("option1").toLowerCase();
	String option2=request.getParameter("option2").toLowerCase();
	String option3=request.getParameter("option3").toLowerCase();
	String option4=request.getParameter("option4").toLowerCase();
	String answer=request.getParameter("answer").toLowerCase();
	String image=request.getParameter("image").toLowerCase();
		String branch=request.getParameter("subject").toLowerCase();
	
	
	
	PreparedStatement ps=null;
	
	try{
ps=con.prepareStatement("update matchques set qno=?,branch=?,question=?,option1=?,option2=?,option3=?,option4=?,answer=?,image=? where  qno='"+ qno +"'");

		ps.setInt(1,qno);
		ps.setString(2,branch);
		ps.setString(3,question);
		ps.setString(4,option1);
		ps.setString(5,option2);
		ps.setString(6,option3);
		ps.setString(7,option4);
		ps.setString(8,answer);
		ps.setString(9,image);

	
	int j=ps.executeUpdate();
		if (j>0)
		{
   	    out.println("<body ><br> <br><br><br><h3 align=center>  Questions Details  successfully modified </h3>");
  	   }
 

     st.close();
     con.close(); 
  
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


   







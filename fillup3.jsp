<%@ page import="java.sql.*" %>
<%@ page import="java.util.*"%>
<%@ include file="makecon.jsp" %>
<%
	int  qno=Integer.parseInt(request.getParameter("qno"));
	String question=request.getParameter("question").toLowerCase();
 	String answer=request.getParameter("answer").toLowerCase();
	String image=request.getParameter("image").toLowerCase();
		String branch=request.getParameter("branch").toLowerCase();
	
	
	
	PreparedStatement ps=null;
	
	try{
ps=con.prepareStatement("update fillques set qno=?,branch=?,question=?,answer=?,image=? where  qno='"+ qno +"'");

		ps.setInt(1,qno);
		ps.setString(2,branch);
		ps.setString(3,question);
		ps.setString(4,answer);
		ps.setString(5,image);

	
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
<body bgColor='papayawhip' >
		<br>		<br>		<br>		<br>
		<center>
		<a href="javascript:history.back()">Continue</a>&nbsp;&nbsp;
		<br>		<br>		<br>		<br>
<%	
		out.println(e.getMessage());
			}
%>


   







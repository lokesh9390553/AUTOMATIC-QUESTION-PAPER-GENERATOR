<%@ page import="java.sql.*" %>
<%@ page import="java.util.*"%>
<%@ include file="makecon.jsp" %>
<%
	String branchid=request.getParameter("branchid").toLowerCase();
	String name=request.getParameter("name").toLowerCase();

	
	
	
	
	PreparedStatement ps=null;
	
	try{
ps=con.prepareStatement("update branch set branchid=?,name=? where  branchid='"+ branchid +"'");

		ps.setString(1,branchid);
		ps.setString(2,name);

	
	int j=ps.executeUpdate();
		if (j>0)
		{
   	    out.println("<body ><br> <br><br><br><h3 align=center>  Subject Details  successfully modified </h3>");
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


   







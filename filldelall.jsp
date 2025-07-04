<%@ page import="java.sql.*" %>
<%@ page import="java.util.*"%>
<%@ include file="makecon.jsp" %>
<%
String branchid=request.getParameter("branchid");
	
	
	try{
	
    st.executeUpdate("delete  from matchdesc");

   	    out.println("<body ><br> <br><br><br><h3 align=center>  All Questions Deleted </h3>");

 

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


   







<%@ page import="java.sql.*" %>
<%@ page import="java.util.*"%>
<%@ include file="makecon.jsp" %>
<%
String branchid=request.getParameter("branchid");
	
	
	try{
	
    st.executeUpdate("delete  from  matchques");

   	    out.println("<body background='Images/bak.JPG'><br> <br><br><br><h3 align=center>  All Questions Deleted </h3>");

 

     st.close();
     con.close(); 
  
}
	catch(Exception e)
		{
		%>
		<body background=Images\bak.JPG>
		<br>		<br>		<br>		<br>
		<center>
		<a href="javascript:history.back()">Continue</a>&nbsp;&nbsp;
		<br>		<br>		<br>		<br>
<%	
		out.println(e.getMessage());
			}
%>


   







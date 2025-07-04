<%@ page import="java.sql.*" %>
<%@ page import="java.util.*"%>
<%@ include file="makecon.jsp" %>
<%
String qno=request.getParameter("qno");
	
	
	try{
	
    st.executeUpdate("delete  fillques where qno='" + qno + "'");

  	    out.println("<body ><br> <br><br><br><h3 align=center>   Questions Deleted Succesfully</h3>");

 

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


   







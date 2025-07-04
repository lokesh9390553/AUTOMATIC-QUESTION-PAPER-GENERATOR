<%@ page import="java.sql.*" %>
<%@ page import="java.util.*"%>
<%@ include file="makecon.jsp" %>
<HTML>
<style>
.sbar {
RIGHT: 420px; LEFT: 153px; WIDTH: 21px; POSITION: absolute; TOP: 60px; HEIGHT: 10px; BACKGROUND-COLOR: #99ccff
}
.border{
 BORDER:0; 
}
</style>
<HEAD>
<TITLE> Subject Delete Section </TITLE>


</HEAD>
<body  >

<FORM  NAME=comfrm ACTION="branchdel2.jsp" >

<%
String branchid=request.getParameter("branchid");
ResultSet rs=st.executeQuery("select * from branch where branchid='" + branchid + "'");


while(rs.next())
{

%>

<CENTER>
<LABEL style="BORDER-BOTTOM-COLOR: khaki; COLOR: maroon; BORDER-BOTTOM-STYLE: groove">
<FONT SIZE="2" COLOR="navy">
<B>Branch Deletion</B><br>
<b> Deletion Subjects</b>
</FONT></CENTER>


<BR><BR>
<TABLE  align =center  background="Images\bak.JPG" border=2 >
<tr>
	<TD  nowrap>
	<FONT SIZE="3" COLOR="navy">
	<B> Subject Id :</B>
	</FONT>
	</TD>
	<TD>
<INPUT TYPE="text" NAME="branchid" value="<%=rs.getString(1)%>"  class=border>
	</TD>
</TR>
<TR>
	<TD nowrap>
	<FONT SIZE="3" COLOR="navy">
	<B>Branch Name :</B></FONT></TD>
	<TD>
	<INPUT TYPE="text" NAME="name"  value="<%=rs.getString(2)%>"  class=border>
	</TD>
</TR>


</TR>
</TABLE>
</TD>
</TR>
</TABLE>
<CENTER>
<INPUT TYPE="SUBMIT" value="Delete" class=border >
<%}%>
</FORM>

<TABLE border=0>

</TABLE>
</CENTER>
</BODY>


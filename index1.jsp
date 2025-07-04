<%@ page import="java.sql.*" %>
<%@ page import="java.util.*"%>
<%@ include file="makecon.jsp" %>
 <% 
String uid = session.getValue("uid").toString();
int x = 1;
 	
ResultSet rs=st.executeQuery("select * from setexam");
//ResultSet rs1=st1.executeQuery("select * from marks where usid='" + uid + "' and marks <=35");

//if(rs1.next())
  //x = 1;
//else
//  x = 0;

%>

<HTML>
<HEAD>

<STYLE type=text/css>A.orangefont {
	COLOR: #e5851e; TEXT-DECORATION: none
}
A.orangefont:hover {
	COLOR: #1f3984; TEXT-DECORATION: none
}
A.whitefont {
	COLOR: white; TEXT-DECORATION: none
}
A.whitefont:hover {
	COLOR: #ff9900; TEXT-DECORATION: none
}
A.whitefont2 {
	COLOR: white; TEXT-DECORATION: none
}
A.whitefont2:hover {
	COLOR: #1f3984; TEXT-DECORATION: none
}
A.navfont {
	COLOR: #1f3984; TEXT-DECORATION: none
}
A.navfont:hover {
	COLOR: #0044ff; TEXT-DECORATION: none
}
A.uline {
	COLOR: #1f3984; TEXT-DECORATION: underline
}
A.uline:hover {
	COLOR: #ff9900; TEXT-DECORATION: none
}
A {
	COLOR: #1f3984; TEXT-DECORATION: none
}
A:hover {
7	COLOR: #ff9900; TEXT-DECORATION: none
}
</STYLE>
<LINK href="online_files/main.css" type=text/css rel=stylesheet>


<body> 

<TABLE style="position:absolute;top:46;" align=left cellSpacing=5 width="100%" border=0 >
  <TBODY>
  <TR vAlign=top height="100%" width="100%"><!-- NAV -->
    <TD>

      <DIV class=rounded-box>
      <DIV class=top-left-corner>
      <DIV class=top-left-inside>•</DIV></DIV>
      <DIV class=top-right-corner>
      <DIV class=top-right-inside>•</DIV></DIV>
      <DIV class=menu-items>
      <DIV class=curvebar-outer>
      <DIV class=curvebar-inner>•</DIV></DIV>
      <DIV class=left-buttons><A class=title 
      >
	&nbsp;&nbsp;&nbsp;&nbsp;
User Examination</A> 
      <DIV class=curvebar-outer>
      <DIV class=curvebar-inner>•</DIV></DIV>


<%
if(rs.next())
{
String a = rs.getString(1);
if(a.equalsIgnoreCase("match"))
{
%>
	
<li><a target=main href=start.jsp?a=1> Start Examination </a>
<%}
else
{
%>
<li><a target=main href=start1.jsp?a=1> Start Examination </a>
<%}}%>

      <LI><A target=main href="result.jsp" >View Exam Result</A> 
      <LI><A target=main  href="logout.jsp" >Logout</A> 


	&nbsp;&nbsp;&nbsp;&nbsp;

      </A> 
  
  <DIV class=curvebar-outer>
      <DIV class=curvebar-inner>•</DIV></DIV>
      <DIV class=curvebar-outer>
      <DIV class=curvebar-inner>•</DIV></DIV></LI></DIV>
      <DIV class=curvebar2-outer>
      <DIV class=curvebar2-inner>•</DIV></DIV></DIV></DIV></CENTER></TD>
</div>
</table>

</BODY>
</HTML>
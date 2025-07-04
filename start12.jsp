<%@ page import="java.sql.*" %>
<%@ page import="java.util.*"%>
<%@ include file="makecon.jsp" %>
 <% 
int qnno = Integer.parseInt(request.getParameter("a"));
int qs1=0;
String ans = request.getParameter("ans1");
String subject = request.getParameter("subject");
String c,bs;
bs=session.getValue("blogin").toString();
PreparedStatement ps=null;
PreparedStatement sst=null,sst1=null;


qs1 = qnno - 1;
if(ans==null)
{
    out.println("First Question");
String cmd1 ="insert into marks values (?,?,?,?,?)";
sst1=con.prepareStatement(cmd1);
sst1.setString(1,bs);
sst1.setString(2,subject);
sst1.setInt(3,0);
sst1.setInt(4,0);
sst1.setString(5,"e");
int eff=sst1.executeUpdate();
}
else
{
ResultSet rs1=st1.executeQuery("select * from fillques where qno=" + qs1);
   st2.executeUpdate("update marks set status ='e' ,tquestion = tquestion + 1,subject='" + subject + "' where  usid='"+ bs +"' and status = 'e'");

  if(rs1.next())
    {
     c=rs1.getString("answer");
     bs=session.getValue("uid").toString();
	if(c.equals(ans))

   st2.executeUpdate("update marks set marks=marks+1 where  usid='"+ bs +"' and subject='" + subject + "' and status = 'e'");

	}	
 
}
 


ResultSet rs=st.executeQuery("select * from fillques where qno=" + qnno);
	%>

<body >
<br>
<center>
<font face=verdana color=blue>
<h2> OnLine Examination </h2>
</font>
</center>
<br><br><br>
<form  name=ques>
<table border="Images/bak.JPG" align=center>
<%
 if (rs.next())
{%>

<CAPTION>On Line Examination</caption>
<tr>
<tr bgcolor=blue >
<td> Qid</td>
<td> Question</td>
<td> Image</td>
<td> Answer</td>

	
</tr>
 <TR>
	<TD width=20><%=rs.getInt(1)%> </TD>
	<TD width=220><%=rs.getString(2)%></TD>
	<TD width=80><img src=<%=rs.getString(4)%> height=50 width=50></TD>
	<TD width=80><input type=text name=ans1></TD>
</TR> 
<tr>
<td colspan=5 align=right>
<%
qnno = qnno + 1;
%>

	<input type=hidden name=a value=<%=qnno%>>
	<input type=submit value=Next>
<%
//out.println("<a href=start.jsp?a=" + qnno + "&b=" + ans + "> Next Question </a>");
}
else
{
%>
</td>
</tr>
<%
   st2.executeUpdate("update marks set status ='c',marks=(marks/tquestion) * 100 where  usid='"+ bs +"' and subject='" + subject + "' and status = 'e'");

%>
<center>Examination Completed <br><br><br>
<center>
<a href="result.jsp"> Result </a>
</center>

<%}%>
</TABLE>
</div>
</form>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.*"%>
<%@ page import="java.util.Date"%>
<%@ page import="java.lang.*"%>
<%@ include file="makecon.jsp" %>
<% 

	int hc1=0,mc1=0,sc1=0;
    	int hc=0,mc=0,sc=0;
	String  level = request.getParameter("level");
	int stop =Integer.parseInt(request.getParameter("stop"));
	Date d1=new Date();
	hc1=d1.getHours();                           
	mc1=d1.getMinutes();
	sc1=d1.getSeconds();

if(mc1==stop)
   out.println("<center><br><br><br><br><h1>Exam time over");
else
{
int q1=1;
q1=Integer.parseInt(request.getParameter("r"));
int qnno = Integer.parseInt(request.getParameter("a"));
int qs1;
String ans = request.getParameter("ans1");

String subject = request.getParameter("subject");
String c,bs;
bs=session.getValue("blogin").toString();
PreparedStatement ps=null;
PreparedStatement sst=null,sst1=null;

qs1 = qnno - 1;
if(ans==null)
{
String cmd1 ="insert into marks values (?,?,?,?,?,?)";
sst1=con.prepareStatement(cmd1);
sst1.setString(1,bs);
sst1.setString(2,subject);
sst1.setInt(3,0);
sst1.setInt(4,0);
sst1.setString(5,"e");
sst1.setString(6,level);
int eff=sst1.executeUpdate();
out.println("First Question");

	Date d2=new Date();
	hc=d2.getHours();                           
	mc=d2.getMinutes();
	sc=d2.getSeconds();
	stop = mc1 + 10;
}
else
{

ResultSet rs1=st1.executeQuery("select * from matchques where image ='" + level  + "' and branch='" + subject + "' and qno=" + qs1);


   st2.executeUpdate("update marks set status ='e' ,tquestion = tquestion + 1,subject='" + subject + "' where  usid='"+ bs +"' and status = 'e'");

  if(rs1.next())
    {
     c=rs1.getString("answer");
  
	if(c.equals(ans))

   st2.executeUpdate("update marks set marks=marks+1 where  usid='"+ bs +"' and subject='" + subject + "' and status = 'e'");
	}	
}
  


ResultSet rs=st.executeQuery("select * from matchques where image ='" + level  + "' and   branch='" + subject + "' and qno=" + qnno);
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
<input type=hidden name=r value=<%=q1%>>
<input type=hidden name=stop value=<%=stop%>>
<table border=1 align=center>
<%
 if (rs.next())
{%>

<CAPTION>On Line Examination</caption>
<tr>
<tr bgcolor=blue >
<td> Qid</td>
<td> Question</td>
<td> Option 1</td>
<td> Option 2</td>
<td> Option 3</td>
<td> Option 4</td>
<td> Level</td>
	
</tr>
 <TR>
	<TD width=20><%=rs.getInt(1)%> </TD>
	<TD width=220><%=rs.getString(3)%></TD>
	<TD width=80><%=rs.getString(4)%><br><center><input type=radio name=ans1 value=1></TD>
	<TD width=80><%=rs.getString(5)%><br><center><input type=radio name=ans1 value=2></TD>
	<TD width=80><%=rs.getString(6)%><br><center><input type=radio name=ans1 value=3></TD>
	<TD width=80><%=rs.getString(7)%><br><center><input type=radio name=ans1 value=4></TD>
	<TD width=80>Level <%=rs.getString(9)%> </TD>
</TR> 
<tr>
<td colspan=5 align=right>
<%

qnno = qnno + 1;
%>

	<input type=hidden name=a value=<%=qnno%>>
	<input type=hidden name=subject value=<%=subject%>>
                      <input type=hidden name=level  value=<%=request.getParameter("level")%>>
	<input type=submit value=Next>
<%
//out.println("<a href=start.jsp?a=" + qnno + "&b=" + ans + "> Next Question </a>");
}
else
{
%>
</td>
</tr>
<center>
<%
   st2.executeUpdate("update marks set status ='c',marks=(marks/tquestion)*100 where  usid='"+ bs +"' and subject='" + subject + "' and status = 'e'");


%>

	Examination Completed <br><br><br>
<center>

</center>

<%}}%>
</TABLE>
</div>
</form>
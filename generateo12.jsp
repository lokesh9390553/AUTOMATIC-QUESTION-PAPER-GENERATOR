<%@ page import="java.sql.*" %>
<%@ page import="java.util.*"%>
<%@ page import="java.match.*"%>

<%@ include file="makecon.jsp" %>


<%
String[] msgs=request.getParameterValues("from");

try
	{

	st=con.createStatement();
String unit = "";

	for(int i=0;i<msgs.length;i++) 
{

unit = unit + msgs[i] + ",";

}

unit = unit + "0";


String cmd="Select min(qno),max(qno) from matchques where branch = '" + request.getParameter("branch") + "' and semester ='" + request.getParameter("semester") + "' and subject='" + request.getParameter("subject") + "' and unit in (" + unit + ")";

int max =0;
int min = 0;
ResultSet rs=st.executeQuery(cmd);

	if(rs.next())
	{
	   max= rs.getInt(2);
	   min= rs.getInt(1);
}

int pid=0;
String cmd2="Select max(pid) from objectivequestions";
rs=st.executeQuery(cmd2);

	if(rs.next())
	{
	  pid= rs.getInt(1) +1;
	}
	else
	pid = 1;	


%>

<%

 Random randNum = new Random();
      LinkedHashSet<Integer>aa = new LinkedHashSet<Integer>();
      while (aa.size() < 21) {
         aa.add(randNum.nextInt(max)+1);

      }

Integer[] rns = new Integer[aa.size()];
rns=aa.toArray(rns);

for(int i = 0;i<21;i++)

{


String cmd1="insert into objectivequestions Select *," + pid + " from matchques where branch = '" + request.getParameter("branch") + "' and semester ='" + request.getParameter("semester") + "' and subject='" + request.getParameter("subject") + "' and qno =" + rns[i];
st.executeUpdate(cmd1);


}
%>
<br><br><br><br><br><br><br><br> <center> <h2><b>Paper Generated Sucesfully

<%













} catch(Exception e) {
		out.println("<center><h2>Failed To Delete Items Due to The Error <BR>"+e);
}
%>






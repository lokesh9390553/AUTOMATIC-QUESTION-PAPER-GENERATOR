-<%@ page import="java.sql.*" %>
<%@ page import="java.util.*"%>
<%@ page import="java.match.*"%>

<%@ include file="makecon.jsp" %>


<%
String[] msgs=request.getParameterValues("from");
String pri = request.getParameter("pri");
int c =0;
int r = 0;

int pid=0;
int pqno = 1;

String cmd2="Select max(pid) from descquestions";
ResultSet rs1=st.executeQuery(cmd2);

	if(rs1.next())
	{
	  pid= rs1.getInt(1) +1;
	}
	else
	pid = 1;


	for(int j=0;j<msgs.length;j++) 
		c=c+1;

		
int noq = 16/c;

if (noq==5)
   r=1;
   
try
	{

	st=con.createStatement();
	String unit = "";

	for(int i=0;i<msgs.length;i++) 
{

noq = 16/c;

	if(c==3 && i==1)
	   noq = 6;

	if(c==5 && i==4)
	   noq = 4;

					unit = unit + msgs[i] + ",";

				//unit = unit + "0";


String cmd="Select min(qno),max(qno) from matchdesc where branch = '" + request.getParameter("branch") + "' and semester ='" + request.getParameter("semester") + "' and subject='" + request.getParameter("subject") + "' and priority='" + pri + "' and unit =" + msgs[i];

int max =0;
int min = 0;
ResultSet rs=st.executeQuery(cmd);

	if(rs.next())
	{
	   max= rs.getInt(2);
	   min= rs.getInt(1);
}

	


%>

<%

 Random randNum = new Random();
      LinkedHashSet<Integer>aa = new LinkedHashSet<Integer>();
      while (aa.size() < noq) {
         aa.add(randNum.nextInt(max)+1);

      }

Integer[] rns = new Integer[aa.size()];
rns=aa.toArray(rns);

for(int ii = 0;ii<noq;ii++)

{


String cmd1="insert into descquestions Select *," + pid + "," + pqno + " from matchdesc where branch = '" + request.getParameter("branch") + "' and semester ='" + request.getParameter("semester") + "' and subject='" + request.getParameter("subject") + "' and qno =" + rns[ii] + " and unit = " + msgs[i] + " and priority='" + pri + "'";
 
st.executeUpdate(cmd1);
pqno = pqno +1;

}
%>
<%
}
%>
<br><br><br><br><br><br><br><br> <center> <h2><b>Paper Generated Sucesfully
<%
	
} catch(Exception e) {
		out.println("<center><h2>Failed To Delete Items Due to The Error <BR>"+e);
}




%>






<%@ page import="java.sql.*" %>
<%@ page import="java.util.*"%>
<%@ page import="java.match.*"%>
<%@ include file="makecon.jsp" %>
<%

HashSet hs=new HashSet();

while(hs.size()<=10)
{

int num=(int)(Math.random()*10);
hs.add(num);

}

Iterator it=hs.iterator();

while(it.hasNext()){

out.println(it.next());
}


%>
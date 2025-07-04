<%@ page import="java.sql.*" %>
<%@ page import="java.util.*"%>
<%@ page import="java.match.*"%>



<%@ include file="makecon.jsp" %>
<%

 Random randNum = new Random();
      LinkedHashSet<Integer>aa = new LinkedHashSet<Integer>();
      while (aa.size() < 20) {
         aa.add(randNum.nextInt(20)+1);
      }

Integer[] rns = new Integer[aa.size()];
rns=aa.toArray(rns);

out.println("Random numbers with no duplicates = "+rns[2]);
   



%>
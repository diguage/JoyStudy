<%@ page language="java" contentType="text/html; charset=gb2312"
	pageEncoding="gb2312"%>
<%
	request.setCharacterEncoding("gb2312");
%>
<%@page import="java.sql.*"%>
<%
int enID = 0;
try{
	enID = Integer.parseInt(request.getParameter("enID"));
}catch(Exception e)
{
	e.printStackTrace();
}
   
   session.setAttribute("enID", enID);
   String userName = request.getParameter("userName");
%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>���</title>
</head>
<body>
<h1 align="center">��ѧ����<%=userName %>�����</h1>
<table align="center" border="1">


<tr>
<td>
<form action="processGrading.jsp" method="post" >
ѧ����</td><td><%=userName %></td>
</tr>
<tr>
<td>�ɼ���</td><td><input name="enGrade" type="text" size="10" maxlength="20" />

</td>
</tr>
<tr>
<td colspan="2" align="center">
 <input name="submit" type="submit" value="�ύ"/>&nbsp;&nbsp;&nbsp;&nbsp;<input name="reset" type="reset" value="����"/>
  </td>
</tr>



</table>

</body>
</html>
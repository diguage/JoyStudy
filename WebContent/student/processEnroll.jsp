<%@ page language="java" contentType="text/html; charset=gb2312"
	pageEncoding="gb2312"%>
<%
	request.setCharacterEncoding("gb2312");
%>
<%@page import="connDB.*"%>
<%@page import="model.*"%>
<%
   User user = (User)session.getAttribute("user");
  int uID = user.getUID();
  int csID = Integer.parseInt(request.getParameter("csID"));
  boolean successed = InsertInfo.enrollment(uID, csID);
%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<meta http-equiv="refresh" content="3;url=myCourse.jsp"/>
<title>���ѡ��</title>
</head>
<body>
<center> 
  <h1>���ѡ�γɹ�</h1>
  <h4>�����Ӻ��Զ���ת�����鿴��ѡ�γ̡�ҳ�棡<a href="myCourse.jsp">��������!</a></h4>
</center>

</body>
</html>
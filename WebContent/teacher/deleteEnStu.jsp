<%@ page language="java" contentType="text/html; charset=gb2312"
	pageEncoding="gb2312"%>
<%
	request.setCharacterEncoding("gb2312");
%>
<%@page import="connDB.*"%>
<% 
   int enID = Integer.parseInt(request.getParameter("enID"));
 boolean successed = DeleteInfo.deleteEnStu(enID);
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<meta http-equiv="refresh" content="3;url=viewStu.jsp"/>
<title>ɾ��ѡ��ѧ��</title>
</head>
<body>
<center> 
  <h1>ɾ���ɹ�</h1>
  <h4>�����Ӻ��Զ���ת����ѡ��ѧ����ҳ�棡<a href="viewStu.jsp">��������!</a></h4>
</center>

</body>
</html>
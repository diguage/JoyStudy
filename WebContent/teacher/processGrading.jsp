<%@ page language="java" contentType="text/html; charset=gb2312"
	pageEncoding="gb2312"%>
<%
	request.setCharacterEncoding("gb2312");
%>
<%@page import="java.sql.*"%>
<%@page import="connDB.*"%>
<%
  int enID = (Integer)session.getAttribute("enID");
  session.removeAttribute("enID");
  int enGrade = Integer.parseInt(request.getParameter("enGrade"));
  
  boolean successed = UpdateInfo.upEnGrade(enID,enGrade);
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<meta http-equiv="refresh" content="3;url=viewStu.jsp"/>
<title>��ֳɹ�</title>
</head>
<body>
<center> 
  <h1>��ֳɹ�</h1>
  <h4>�����Ӻ��Զ���ת����ѡ��ѧ����ҳ�棡<a href="viewStu.jsp">��������!</a></h4>
</center>

</body>
</html>
<%@ page language="java" contentType="text/html; charset=gb2312"
	pageEncoding="gb2312"%>
<%
	request.setCharacterEncoding("gb2312");
%>
<%@page import="connDB.*"%>

<%
    int enID = Integer.parseInt(request.getParameter("enID"));
    boolean successed = DeleteInfo.deleteEnroll(enID);
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<meta http-equiv="refresh" content="3;url=myCourse.jsp"/>
<title>�γ�ɾ���ɹ�</title>
</head>
<body>
<center>
<h1>�γ�ɾ���ɹ�</h1>
<h4>�����Ӻ��Զ����ص�����ѡ�γ̡�ҳ�� <a href="myCourse.jsp">��������</a> </h4>
</center>

</body>
</html>
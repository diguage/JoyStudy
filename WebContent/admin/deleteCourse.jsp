<%@ page language="java" contentType="text/html; charset=gb2312"
	pageEncoding="gb2312"%>
<%
	request.setCharacterEncoding("gb2312");
%>
<%@page import="connDB.*"%>

<%
    int csID = Integer.parseInt(request.getParameter("csID"));
    boolean successed = DeleteInfo.deleteCourse(csID);
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<meta http-equiv="refresh" content="3;url=courseInfo.jsp"/>
<title>�γ�ɾ���ɹ�</title>
</head>
<body>
<center>
<h1>�γ�ɾ���ɹ�</h1>
<h4>�����Ӻ��Զ����ص����γ���Ϣ��ҳ�� <a href="courseInfo.jsp">��������</a> </h4>
</center>

</body>
</html>
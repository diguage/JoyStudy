<%@ page language="java" contentType="text/html; charset=gb2312"
	pageEncoding="gb2312"%>
<%
	request.setCharacterEncoding("gb2312");
%>
<%@page import="connDB.*"%>

<%
    int mgID = Integer.parseInt(request.getParameter("mgID"));
    boolean successed = DeleteInfo.deleteMessage(mgID);
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=">
<meta http-equiv="refresh" content="3;url=message.jsp"/>
<title>����ɾ���ɹ�</title>
</head>
<body>
<center>
<h1>����ɾ���ɹ�</h1>
<h4>�����Ӻ��Զ����ص���������Ϣ��ҳ�� <a href="message.jsp">��������</a> </h4>
</center>

</body>
</html>


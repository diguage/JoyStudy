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
    boolean successed = DeleteInfo.deleteMe(uID);
    if(successed)
    	session.invalidate();
%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta http-equiv="refresh" content="3;url=index.jsp"/>
<title>ע���Լ�</title>
</head>
<body>
  <center>
  <p>&nbsp;</p> <p>&nbsp;</p><p>&nbsp;</p> <p>&nbsp;</p>
    <h1>���Ѿ��ɹ�ע�����Լ����˺ţ����Ժ�����ע���˺ţ�</h1>
    <h3>�����Ӻ��Զ���ת������¼�����棡<a href="index.jsp">��������</a> </h3>

  </center>

</body>
</html>
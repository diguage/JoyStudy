<%@ page language="java" contentType="text/html; charset=gb2312"
	pageEncoding="gb2312"%>
<%
	request.setCharacterEncoding("gb2312");
%>
<%@page import="connDB.*"%>
<%
  int csID = (Integer)session.getAttribute("csID");
  String csName = request.getParameter("csName");
  boolean successed = UpdateInfo.upCouseInfo(csID, csName);
%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<meta http-equiv="refresh" content="3;url=viewCourse.jsp"/>
<title>�޸Ŀγ���Ϣ</title>
</head>
<body>
<center> 
  <h1>�޸Ŀγ���Ϣ�ɹ�</h1>
  <h4>�����Ӻ��Զ���ת�����鿴�γ���Ϣ��ҳ�棡<a href="viewCourse.jsp">��������!</a></h4>
</center>

</body>
</html>
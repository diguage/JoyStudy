<%@ page language="java" contentType="text/html; charset=gb2312"
	pageEncoding="gb2312"%>
<%
	request.setCharacterEncoding("gb2312");
%>
<%@page import="connDB.*"%>
<%@page import="model.*"%>
<%
   User changingUser = (User)session.getAttribute("changingUser");
   int cUID  = changingUser.getUID();
   
   session.removeAttribute("changingUser");
   
   String userName = request.getParameter("userName");
   String realName = request.getParameter("realName");
   String email = request.getParameter("email");
   String sex = request.getParameter("sex");
   
   ChangeMyInfo.changeMyInfo(cUID, userName, realName, email, sex);
   
%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<meta http-equiv="refresh" content="3;url=userInfo.jsp"/>
<title>Insert title here</title>
</head>
<body>
<center>
<h1>�޸ĳɹ�</h1>
      <h4>�����Ӻ��Զ���ת�����û���Ϣ��ҳ�棡<a href="userInfo.jsp">��������!</a></h4>    
</center>

</body>
</html>
<%@ page language="java" contentType="text/html; charset=gb2312"
	pageEncoding="gb2312"%>
<%
	request.setCharacterEncoding("gb2312");
%>
<%@page import="java.sql.*"%>
<%@page import="connDB.*"%>
<%@page import="model.*"%>
<%
   boolean successed = false;

   User user = (User)session.getAttribute("user");
   
   int uID = user.getUID();
   
   String oldPwd = request.getParameter("oldPwd");
   String newPwd = request.getParameter("newPwd");
   String ensurePwd = request.getParameter("ensurePwd");
   successed = ChangePwd.changePwd(uID, oldPwd, newPwd, ensurePwd);
 
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<%
   out.println("<meta http-equiv=\"refresh\" content=\"3;url=myInfo.jsp\"/>");
%>
<title>Insert title here</title>
</head>
<body>
<center>
      <h1>�޸ĳɹ�</h1>
      <h4>�����Ӻ��Զ���ת��������Ϣҳ�棡<a href="myInfo.jsp">��������!</a></h4>    
</center>

</body>
</html>
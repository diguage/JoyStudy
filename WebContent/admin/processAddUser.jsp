<%@ page language="java" contentType="text/html; charset=gb2312"
	pageEncoding="gb2312"%>
<%
	request.setCharacterEncoding("gb2312");
%>
<%@page import="connDB.*"%>

<%
   //User addingUser = null;
   String userName = request.getParameter("userName");
   String password = request.getParameter("password");
   String realName = request.getParameter("realName");
   String email = request.getParameter("email");
   String sex = request.getParameter("sex");
   int type = 3;
   type = Integer.parseInt(request.getParameter("type"));
   
   
   
   boolean addSuccessed = AddUser.addUser(userName, password, realName, email, sex, type);
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<%
   out.println("<meta http-equiv=\"refresh\" content=\"3;url=userInfo.jsp\"/>");
%>
<meta http-equiv="refresh" content="3;url=userInfo.jsp"/>
<title>�������û�</title>
</head>
<body>

<center>
  
      <h1><%="�����ɹ�"%></h1>
      <h4>�����Ӻ��Զ���ת���û���Ϣҳ�棡<a href="userInfo.jsp">��������!</a></h4>
    
   </center>

</body>
</html>
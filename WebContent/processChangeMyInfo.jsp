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
   
   String userName = request.getParameter("userName");
   String realName = request.getParameter("realName");
   String email = request.getParameter("email");
   String sex = request.getParameter("sex");
   
   ChangeMyInfo.changeMyInfo(uID, userName, realName, email, sex);
   
   user.setUserName(userName);
   user.setRealName(realName);
   user.setEmail(email);
   user.setSex(sex);
 
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<meta http-equiv="refresh" content="3;url=myInfo.jsp"/>
<title>Insert title here</title>
</head>
<body>


<center>
<table border="1">
<tr><td colspan="2" style="font-size: 150%; font-weight: bold;">�µĸ�����Ϣ</td></tr>
<tr>

<td>
�û���ţ�</td> <td><%=uID %> </td>
</tr>
<tr>
<td>
&nbsp;�û�����&nbsp; </td><td><%=userName %> </td>
</tr>
<tr>
<td>��ʵ������</td> <td><%=realName %></td>
</tr>
<tr>
<td>�������䣺</td> <td><%=email %> </td>
</tr>
<tr>
<td>&nbsp;��&nbsp;&nbsp;��&nbsp;</td> <td><%=sex %> </td>
</tr>

</table>
      <h1>�޸ĳɹ�</h1>
      <h4>�����Ӻ��Զ���ת��������Ϣҳ�棡<a href="myInfo.jsp">��������!</a></h4>    
</center>


</body>
</html>
<%@ page language="java" contentType="text/html; charset=gb2312"
	pageEncoding="gb2312"%>
<%
	request.setCharacterEncoding("gb2312");
%>
<%@page import="java.sql.*"%>
<%@page import="connDB.*"%>
<%@page import="model.*"%>
<%
   int csID = Integer.parseInt(request.getParameter("csID"));

   ResultSet csMgRs = GetInfo.getCourseMessage(csID);
   String csName = request.getParameter("csName");
   String userName = null;
   String realName = null;
   String email = null;
   String sex = null;
   int type = 3;
   String mgTitle = null;
   String mgContent = null;
%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1 align="center">针对“<%=csName %>”课程的留言</h1>

<%
while(csMgRs.next())
{
	   realName = csMgRs.getString("realName");
	   mgTitle = csMgRs.getString("mgTitle");
	   mgContent = csMgRs.getString("mgContent");
		userName = csMgRs.getString("userName");
		realName = csMgRs.getString("realName");
		email = csMgRs.getString("email");
		sex = csMgRs.getString("sex");
		type = csMgRs.getInt("type");
		%>
		<hr style="color: red;">
<table width="95%" border="1" align="center">
  
  <tr>
    <td width="70">用户名：</td>
    <td ><%=userName %></td>
    <td width="80">留言标题：</td>
    <td  colspan="5"><%=mgTitle%></td>
  </tr>
  <tr>
    <td width="80">真实姓名：</td>
    <td width="90"><%=realName %></td>
    <td colspan="6" >留言内容：</td>
  </tr>
  <tr>
    <td colspan="2">E-mail:</td>
    <td colspan="6" rowspan="4" valign="top"><%=mgContent%></td>
  </tr>
  <tr>
    <td colspan="2"><%=email%></td>
  </tr>
  <tr>
    <td>性别：</td>
    <td><%=sex%></td>
  </tr>
  <tr>
    <td>身份：</td>
    <td>
    					<%switch (type) {
						case 1:
							out.print("管理员");
							break;
						case 2:
							out.print("老师");
							break;
						case 3:
							out.print("学生");
							break;
						}%>
</td>
  </tr>
  </table>
  <% } %>



</body>
</html>
<%@ page language="java" contentType="text/html; charset=gb2312"
	pageEncoding="gb2312"%>
<%
	request.setCharacterEncoding("gb2312");
%>
<%@page import="java.sql.*"%>
<%@page import="connDB.*"%>
<%@page import="model.*"%>

<%
  User user = (User)session.getAttribute("user");
  int uID = user.getUID();
  
  String csName = null;
  String tName = null;
  int csID = 0;
  int enID = 0;
  
  ResultSet rs = GetInfo.getMyCourse(uID);
%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>�鿴��ѡ�γ�</title>
</head>
<body>
<div align="center">
<h1>�鿴��ѡ�γ�</h1>
<table border="1">
<tr>
<td>�γ���</td><td>������ʦ</td><td>�鿴����</td><td>�������</td><td>ɾ���γ�</td>
</tr>
<%
  while(rs.next())
  {
	  csName = rs.getString("csName");
	  tName = rs.getString("tRealName");
	  csID = rs.getInt("csID");
	  enID = rs.getInt("enID");
	  
	  %>
	  <tr>
	   <td><%=csName %></td>
	   <td><%=tName %></td>
	 

				<td>
					<a href="../viewCourseMessage.jsp?csID=<%=csID %>&csName=<%=csName %>">�鿴����</a>

				</td>

				<td>
					<a href="../addMessage.jsp?csID=<%=csID %>">�������</a>

				</td>
				<td>
					<a href="deleteEnroll.jsp?enID=<%=enID %>">ɾ���ÿγ�</a>

				</td>
				
		</tr>
 <% } %>
				
 </table>
</div>

</body>
</html>
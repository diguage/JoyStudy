<%@ page language="java" contentType="text/html; charset=gb2312"
	pageEncoding="gb2312"%>
<%
	request.setCharacterEncoding("gb2312");
%>
<%@page import="java.sql.*"%>
<%@page import="connDB.*"%>
<%
  String csName = null;
  String realName = null;
  int csID = 0;
  ResultSet rs = GetInfo.getCourseInfo();
%>
  
	   
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>Insert title here</title>
</head>
<body>
<center>
 <h1>���еĿγ���Ϣ</h1>
 <table border="1">
   <tr>
      <td width="120">�γ���</td>
      <td width="100">������ʦ</td>
      <td>�鿴����</td>
    <td>�������</td>
      <td width="50">ɾ��</td>
   </tr>
    <%
   while(rs.next())
   {
	   csName = rs.getString("csName");
	   realName = rs.getString("realName");
	   csID = rs.getInt("csID");
	   %>
	   <tr>
	   <td><%=csName %></td>
	   <td><%=realName %></td>
	   
	   				<td>
					<a href="../viewCourseMessage.jsp?csID=<%=csID %>&csName=<%=csName %>">�鿴����</a>

				</td>
				<td>
					<a href="../addMessage.jsp?csID=<%=csID %>">�������</a>

				</td>
	   
	   <td> <a href="deleteCourse.jsp?csID=<%=csID %>">ɾ��</a> </td>
	   
	   </tr>
	   <% } %>
 </table>
</center>

</body>
</html>
<%@ page language="java" contentType="text/html; charset=gb2312"
	pageEncoding="gb2312"%>
<%
	request.setCharacterEncoding("gb2312");
%>
<%@page import="connDB.*"%>
<%@page import="model.*"%>
<%@page import="java.sql.* "%>

<%

   User user = (User)session.getAttribute("user");
   
   
   int uID = user.getUID();
   
   int csID = 0;
   String  csName = null;
   int csTeacher = 0;
   
   String sql = "select * from coursetb where csTeacher="+ uID;
   Connection conn = ConnectDB.getConnection();
   Statement stmt = ConnectDB.createStatement(conn);
   ResultSet rs = ConnectDB.executeQuery(stmt, sql);
   
   
%>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>�鿴�γ�</title>
</head>

<body>
<center>
<h1>�����ڵ����пγ�</h1>
<table width="400" border="1" align="center">
  <tr>
    <td>�γ���</td>
    <td>�鿴����</td>
    <td>�������</td>
    <td>�޸�</td>
    <td>ɾ��</td>
  </tr>
  <%
			try
			{
				while(rs.next())
				{
					csID = rs.getInt("csID");
					csName = rs.getString("csName");
						%>
			<tr>
				<td><%=csName %>

				</td>
				<td>
					<a href="../viewCourseMessage.jsp?csID=<%=csID %>&csName=<%=csName %>">�鿴����</a>

				</td>
				<td>
					<a href="../addMessage.jsp?csID=<%=csID %>">�������</a>

				</td>			
				
				<td>
					<a href="changeCourseInfo.jsp?csID=<%=csID %>">�޸�</a>

				</td>
				<td>
					<a href="deleteCourse.jsp?csID=<%=csID %>">ɾ��</a>

				</td>
			</tr>

			<%}
			}
			catch(SQLException e)
			{
				e.printStackTrace();
			}
			%>
</table>
</center>
</body>
</html>

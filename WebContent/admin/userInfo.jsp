<%@ page language="java" contentType="text/html; charset=gb2312"
	pageEncoding="gb2312"%>
<%
	request.setCharacterEncoding("gb2312");
%>
<%@page import="java.sql.*"%>
<%@page import="connDB.*"%>

<%
int uID = 0;
String userName = null;
String realName = null;
String email = null;
String sex = null;
int type = 3;



String sql = "select * from usertb";
Connection conn = ConnectDB.getConnection();
Statement stmt = ConnectDB.createStatement(conn);
ResultSet rs = ConnectDB.executeQuery(stmt, sql);

%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
		<title>Insert title here</title>
	</head>
	<body>
	<h1 align="center">�û���Ϣ</h1>
	
		<table width="700" border="1" align="center">
			<tr>
				<th scope="col">
					&nbsp;�û���&nbsp;
				</th>
				<th scope="col">
					��ʵ����
				</th>
				<th scope="col">
					&nbsp;E��mail&nbsp;
				</th>
				<th scope="col">
					&nbsp;��&nbsp;��&nbsp;
				</th>
				<th scope="col">
					�û�����
				</th>
				<th scope="col">
					&nbsp;��&nbsp;��&nbsp;
				</th>
				<th scope="col">
					&nbsp;ɾ&nbsp;��&nbsp;
				</th>
			</tr>
			<%
			try
			{
				while(rs.next())
				{
					uID = rs.getInt("uID");
					userName = rs.getString("userName");
					realName = rs.getString("realName");
					email = rs.getString("email");
					sex = rs.getString("sex");
					type = rs.getInt("type");	%>
			<tr>
				<td><%=userName %>

				</td>
				<td><%=realName %>

				</td>
				<td><%=email %>

				</td>
				<td><%=sex %>

				</td>
				<td>
					<%switch (type) {
						case 1:
							out.print("����Ա");
							break;
						case 2:
							out.print("��ʦ");
							break;
						case 3:
							out.print("ѧ��");
							break;
						}%>
				</td>
				<td>
					<a href="changeUserInfo.jsp?uID=<%=uID %>">�޸�</a>

				</td>
				<td>
					<a href="deleteUser.jsp?uID=<%=uID %>">ɾ��</a>

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
	</body>
</html>
<%@ page language="java" contentType="text/html; charset=gb2312"
	pageEncoding="gb2312"%>
<%
	request.setCharacterEncoding("gb2312");
%>
<%@page import="model.*"%>

<%
	User user = (User) session.getAttribute("user");
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
		<title>�û���Ϣ</title>
	</head>
	<body>
	  <center>
	  <h1>������Ϣ</h1>
		<table width="300" border="1">
			<tr>
				<td width="91">
					�û�����
				</td>
				<td width="193"><%=user.getUserName()%></td>
			</tr>
			<tr>
				<td>
					��ʵ������
				</td>
				<td><%=user.getRealName()%>
				</td>
			</tr>
			<tr>
				<td>
					E��mail
				</td>
				<td><%=user.getEmail()%>
				</td>
			</tr>
			<tr>
				<td>
					�Ա�
				</td>
				<td><%=user.getSex()%>
				</td>
			</tr>
			<tr>
				<td>
					�û����ͣ�
				</td>
				<td>
					<%
						int type = user.getType();
						switch (type) {
						case 1:
							out.print("����Ա");
							break;
						case 2:
							out.print("��ʦ");
							break;
						case 3:
							out.print("ѧ��");
							break;
						}
					%>&nbsp;
				</td>
			</tr>
			<tr>
				<td colspan="2">
					<div align="center">
						<a href="changeMyInfo.jsp?uID=<%=user.getUID()%>">�޸ĸ�����Ϣ</a>
					</div>
				</td>
			</tr>
		</table>
		</center>

	</body>
</html>
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
		<title></title>
		<style type="text/css">
<!--
.STYLE2 {
	font-size: 18px;
	font-weight: bold;
}
-->
</style>
	</head>

	<body>
		<table width="130" border="1" align="center">
		  <tr>
				<td height="30" align="center" valign="middle">
					��ӭ����<%=user.getRealName() %>
				</td>
			</tr>
			<tr>
				<td height="30" align="center" valign="middle">
					<div align="center" class="STYLE2">
						<a href="../myInfo.jsp" target="admMainFrame">������Ϣ</a>
					</div>
				</td>
			</tr>
			<tr>
				<td height="30" align="center" valign="middle">
					<div align="center" class="STYLE2">
						<a href="../changeMyInfo.jsp" target="admMainFrame">�޸ĸ�����Ϣ</a>
					</div>
				</td>
			</tr>
			<tr>
				<td height="30" align="center" valign="middle">
					<div align="center" class="STYLE2">
						<a href="../changePwd.jsp" target="admMainFrame">�޸�����</a>
					</div>
				</td>
			</tr>
			<tr>
				<td height="30" align="center" valign="middle">
					<div align="center" class="STYLE2">
						<a href="userInfo.jsp" target="admMainFrame">�û���Ϣ</a>
					</div>
				</td>
			</tr>
			<tr>
				<td height="30" align="center" valign="middle">
					<div align="center" class="STYLE2">
						<a href="courseInfo.jsp" target="admMainFrame">�γ���Ϣ</a>
					</div>
				</td>
			</tr>
			<tr>
				<td height="30" align="center" valign="middle">
					<div align="center" class="STYLE2">
						<a href="message.jsp" target="admMainFrame">������Ϣ</a>					</div>
			  </td>
			</tr>
			<tr>
				<td height="30" align="center" valign="middle">
					<div align="center" class="STYLE2">
						<a href="addUser.jsp" target="admMainFrame">�����û�</a>
					</div>
				</td>
			</tr>
						<tr>
				<td height="30" align="center" valign="middle">
					<div align="center" class="STYLE2">
						<a href="../deleteMe.jsp" target="_top">ע���Լ�</a>
					</div>
				</td>
			</tr>
			
		</table>
	</body>
</html>

<%@ page language="java" contentType="text/html; charset=gb2312"
	pageEncoding="gb2312"%>
<%
	request.setCharacterEncoding("gb2312");
%>

<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
		<title>�����û�</title>
				<script type="text/javascript">
function check(){
	if(addUserForm.userName.value==""){
		alert("�������û���");
		form.userName.focus();
		return false;
	}
	if(addUserForm.password.value==""){
		alert("����������");
		form.password.focus();
		return false;
	}

}
</script>
	</head>
	<body>
	  <div align="center">
	  
	  <h1>�����û�</h1>
	  
		<form action="processAddUser.jsp" method="post" name="addUserForm" onSubmit="return check();">
		<table border="1">
		<tr>
		<td>
			&nbsp;�û���&nbsp;��			</td><td>
			<input name="userName" type="text" size="20" maxlength="32" />
			</td>
			</tr>
			<tr>
			<td>
			&nbsp;��&nbsp;&nbsp;�룺&nbsp;</td><td>
            <input name="password" type="password" size="21" maxlength="32" /></td>
            </tr>
            <tr>
            <td>
			��ʵ������</td><td>
			<input name="realName" type="text" size="20" maxlength="32" />
			</td>
			</tr><tr>
			<td colspan="2">
			&nbsp;��&nbsp;&nbsp;��&nbsp;
			<input name="sex" type="radio" value="��" checked="checked" />
			��
			<input name="sex" type="radio" value="Ů" />
			Ů			</td>
			</tr>
			<tr>
			<td>
			&nbsp;E-mail:&nbsp;&nbsp;			</td><td>
			<input name="email" type="text" size="20" maxlength="50" />
			</td>
			</tr><tr>
			<td>
			�û����ͣ�</td><td>
			<select name="type">
				<option value="3" selected="selected">
					ѧ��				</option>
				<option value="2">
					��ʦ				</option>
				<option>
					������				</option>
				<option value="1">
					����Ա				</option>
			</select>
            &nbsp;
            </td>
            </tr><tr>
            <td colspan="2" align="center">
            <input name="submit" type="submit" value="�ύ" />
            &nbsp;&nbsp;&nbsp;
            <input name="reset" type="reset" value="����" />            </td>
            </tr>
            </table>

		</form>
	  </div>

	</body>
</html>
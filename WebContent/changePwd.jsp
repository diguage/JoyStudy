<%@ page language="java" contentType="text/html; charset=gb2312"
	pageEncoding="gb2312"%>
<%
	request.setCharacterEncoding("gb2312");
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
		<title>�޸�����</title>
		<script type="text/javascript">
function check(){
	if(changepwd.oldPwd.value==""){
		alert("�����ԭ����");
		form.oldPwd.focus();
		return false;
	}
	if(changepwd.newPwd.value==""){
		alert("�����������");
		form.newPwd.focus();
		return false;
	}
	if(changepwd.ensurePwd.value==""){
		alert("��ȷ��������");
		form.ensurePwd.focus();
		return false;
	}
	if(changepwd.newPwd.value!=changepwd.ensurePwd.value){
		alert("��������������벻ͬ����������");
		form.newPwd.value="";
		form.ensurePwd.value="";
		form.newPasswd.focus();
		return false;
	}
}
</script>
	</head>
	<body>
		
		<form action="processChangePassword.jsp" method="post" name="changepwd" onsubmit="return check();">
			<div align="center">
				<h1>
					�޸�����
				</h1>
				<table border="1">
				<tr>
				<td>
				&nbsp;&nbsp;ԭ���룺</td><td>
				<input name="oldPwd" type="password" size="20" maxlength="32" />
				</td>
				</tr><tr>
				<td>
				&nbsp;&nbsp;�����룺</td><td>
				<input name="newPwd" type="password" size="20" maxlength="32" />
				</tr><tr><td>
				ȷ�����룺</td><td>
				<input name="ensurePwd" type="password" size="20" maxlength="32" /></td>
				</tr><tr><td colspan="2">
				<input name="" type="submit" value="�ύ" />
				&nbsp;&nbsp;&nbsp;&nbsp;
				<input name="" type="reset" value="����" /></td>
				</tr>
				</table>
			</div>
		</form>
	</body>
</html>

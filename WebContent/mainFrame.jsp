<%@ page language="java" contentType="text/html; charset=gb2312"
	pageEncoding="gb2312"%>
<%@ include file="header.jspf" %>
<html>
	<head>
		<title>��ʼҳ��</title>
						<script type="text/javascript">
function check(){
	if(login.userName.value==""){
		alert("�������û���");
		form.userName.focus();
		return false;
	}
	if(login.password.value==""){
		alert("����������");
		form.password.focus();
		return false;
	}

}
</script>
	</head>
	<body>
    <div align="center">
		<form action="login.jsp" method="post" name="login" onsubmit="return check();">
			�û�����
			<input name="userName" type="text" size="20" maxlength="32" />
			<br />
			&nbsp;���룺&nbsp;
			<input name="password" type="password" size="21" maxlength="32" />
			<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<input name="submit" type="submit" value="�ύ" />
			&nbsp;&nbsp;
			<input name="reset" type="reset" value="����" />
		</form>

		</div>
		
		<br/>
				
		<table border="1" align="center" bordercolor="">
		<tr>
		<td colspan="4" style="font-size: 150%; color: navy; font-weight: bold;" align="center">���ڲ���ϵͳ�ĵ����û�</td>
		</tr>
		<tr align="center">
		<td width="100">�û���</td><td width="50">����</td><td width="100">���</td><td width="250">������Ŀ</td>
		</tr>
		<tr>
		<td>adai</td><td align="center">123</td><td>����Ա</td><td>����ԱȨ��(����ע���Լ�)</td>
		</tr>
		<tr>
		<td>teacher</td><td align="center">123</td><td>��ʦ</td><td>��ʦȨ��(����ע���Լ�)</td>
		</tr>
		<tr>
		<td>student</td><td align="center">123</td><td>ѧ��</td><td>ѧ��Ȩ��(����ע���Լ�)</td>
		</tr>
		<tr>
		<td>testAdmin</td><td align="center">123</td><td>����Ա</td><td style="color: blue;">����ԱȨ�� & <span style="color: red;"> ע���Լ� </span></td>
		</tr>
		<tr>
		<td>testTeacher</td><td align="center">123</td><td>��ʦ</td><td style="color: blue;" >��ʦȨ�� & <span style="color: red;"> ע���Լ� </span></td>
		</tr>
		<tr>
		<td>testStudent</td><td align="center">123</td><td>ѧ��</td><td style="color: blue;" >ѧ��Ȩ�� & <span style="color: red;"> ע���Լ� </span></td>
		</tr>
		</table>
		
		</body>
</html>
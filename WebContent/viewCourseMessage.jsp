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
<h1 align="center">��ԡ�<%=csName %>���γ̵�����</h1>

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
    <td width="70">�û�����</td>
    <td ><%=userName %></td>
    <td width="80">���Ա��⣺</td>
    <td  colspan="5"><%=mgTitle%></td>
  </tr>
  <tr>
    <td width="80">��ʵ������</td>
    <td width="90"><%=realName %></td>
    <td colspan="6" >�������ݣ�</td>
  </tr>
  <tr>
    <td colspan="2">E-mail:</td>
    <td colspan="6" rowspan="4" valign="top"><%=mgContent%></td>
  </tr>
  <tr>
    <td colspan="2"><%=email%></td>
  </tr>
  <tr>
    <td>�Ա�</td>
    <td><%=sex%></td>
  </tr>
  <tr>
    <td>��ݣ�</td>
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
  </tr>
  </table>
  <% } %>



</body>
</html>
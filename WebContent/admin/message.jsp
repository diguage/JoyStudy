<%@ page language="java" contentType="text/html; charset=gb2312"
	pageEncoding="gb2312"%>
<%
	request.setCharacterEncoding("gb2312");
%>
<%@page import="java.sql.*"%>
<%@page import="connDB.*"%>


<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>�鿴������Ϣ</title>
</head>
<body>
<div align="center">
<h1>����������Ϣ</h1>
<table border="1" width="98%" >
<tr> 
  <td width="70">��Կγ�</td>
  <td width="50">������</td>
  <td width="80">���Ա���</td>
  <td>��������</td>
  <td width="33">ɾ��</td>
</tr>
<%
  String csName = null;
  String userName = null;
  String mgTitle = null;
  String mgContent = null;
  int mgID = 0;
   ResultSet rs = GetInfo.getAllMessage();
   while(rs.next())
   {
	   csName = rs.getString("csName");
	   userName = rs.getString("userName");
	   mgTitle = rs.getString("mgTitle");
	   mgContent = rs.getString("mgContent");
	   mgID = rs.getInt("mgID");
	   %>
	   <tr>
	      <td> <%=csName %>  </td>
	      <td> <%=userName %> </td>
	      <td> <%=mgTitle %> </td>
	      <td> <%=mgContent %> </td>
	      <td> <a href="deleteMessage.jsp?mgID=<%=mgID %>"> ɾ�� </a> </td>
	   </tr>
<%	   	   
 }
%>
</table>
</div>

</body>
</html>
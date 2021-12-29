<%@page import="model.ResDAO"%>
<%@page import="model.ResDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
</head>
<body>
<%
	request.setCharacterEncoding("UTF-8");

	String Name = request.getParameter("Name");
	ResDAO rdao = new ResDAO();
	ResDTO rdto = rdao.selectName(Name);
%>
	<table border="1">
	<tr height="50">
		<td align="center" width="120">식당이름 </td>
		<td align="center" width="200"><%=rdto.getName()%></td>
	</tr>
	<tr height="50">
		<td align="center" width="120">전화번호 </td>
		<td align="center" width="200"><%=rdto.getPhone()%></td>
	</tr>
	<tr height="50">
		<td align="center" width="120">위치 </td>
		<td align="center" width="200"><%=rdto.getLoc()%></td>
	</tr>
	<tr height="50">
		<td align="center" width="120">여는시간 </td>
		<td align="center" width="200"><%=rdto.getOpenTime()%></td>
	</tr>
	<tr height="50">
		<td align="center" width="120">닫는시간 </td>
		<td align="center" width="200"><%=rdto.getCloseTime()%></td>
	</tr>
	
	<tr height="50">
	<td align="center" colspan="2">
	<button onclick="location.href='listUpdate.jsp?Name=<%=rdto.getName()%>'">수정하기</button>
	<button onclick="location.href='listDeleteProc.jsp?Name=<%=rdto.getName()%>'">삭제하기</button>
</td>
</tr>
</table>

</body>
</html>
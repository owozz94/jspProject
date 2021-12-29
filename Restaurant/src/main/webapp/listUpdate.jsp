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
	//이전에 만들어놓은 메소드를 이용해 데이터를 뿌려줌
	ResDTO rdto = rdao.selectName(Name);
%>
<form action="listUpdateProc.jsp" method="post">
	<table border="1">
	<tr height="50">
		<td align="center" width="120">식당이름 </td>
		<td align="center" width="200">
		<input type="hidden" name="Name" value="<%=rdto.getName() %>">
		<%=rdto.getName()%></td>
	</tr>
	<tr height="50">
		<td align="center" width="120">전화번호 </td>
		<td align="center" width="200"><input type="text" name="Phone" size="40"
		value="<%=rdto.getPhone()%>"></td>
	</tr>
	<tr height="50">
		<td align="center" width="120">위치 </td>
		<td align="center" width="200"><input type="text" name="Loc" size="40"
		value="<%=rdto.getLoc()%>"></td>
	</tr>
	<tr height="50">
		<td align="center" width="120">여는시간 </td>
		<td align="center" width="200"><input type="text" name="OpenTime"size="40"
		value="<%=rdto.getOpenTime()%>"></td>
	</tr>
	<tr height="50">
		<td align="center" width="120">닫는시간 </td>
		<td align="center" width="200"><input type="text" name="CloseTime" size="40"
		value="<%=rdto.getCloseTime()%>"></td>
	</tr>
</table>
<input type="submit" value="확인">
<input type="button" value="취소" onclick="location.href='Main.jsp'">
</form>

</body>
</html>
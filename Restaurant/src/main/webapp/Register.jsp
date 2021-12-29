<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>맛집 등록</h2>
	<form action="RegisterProc.jsp" method="post">
	<table width="500" border="1">
	<tr height="50">
		<td align="center" width="120">식당이름 </td>
		<td align="center" width="200"><input type="text" name="Name" placeholder="식당이름을 입력하세요" size="40"></td>
	</tr>
	<tr height="50">
		<td align="center" width="120">전화번호 </td>
		<td align="center" width="200"><input type="text" name="Phone" placeholder="전화번호를 입력하세요" size="40"></td>
	</tr>
	<tr height="50">
		<td align="center" width="120">위치 </td>
		<td align="center" width="200"><input type="text" name="Loc" placeholder="위치를 입력하세요" size="40"></td>
	</tr>
	<tr height="50">
		<td align="center" width="120">여는시간 </td>
		<td align="center" width="200"><input type="text" name="OpenTime" placeholder="09:00" size="40"></td>
	</tr>
	<tr height="50">
		<td align="center" width="120">닫는시간 </td>
		<td align="center" width="200"><input type="text" name="CloseTime" placeholder="10:00" size="40"></td>
	</tr>
</table>
<input type="submit" value="등록하기">
</form>
</body>
</html>
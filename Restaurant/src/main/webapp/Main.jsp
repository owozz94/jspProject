<%@page import="model.ResDAO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.ResDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Restaurant List</title>
</head>
<body>
<%
	request.setCharacterEncoding("UTF-8");
	ResDAO rdao = new ResDAO();
	ArrayList<ResDTO> list = rdao.allRestaurant();
%>
<h2>식당 리스트</h2>
<button onclick="location.href='Register.jsp'">등록하기</button>
<table border="1">
	<tr height="50">
		<td align="center" width="200">이름</td>
		<td align="center" width="100">전화번호</td>
		<td align="center" width="250">위치</td>
		<td align="center" width="100">여는시간</td>
		<td align="center" width="100">닫는시간</td>
	</tr>
	<%
	for(int i=0;i<list.size();i++){
		ResDTO rdto = list.get(i);
	%>
	
	<tr height="50">
		<td align="center" width="200">
		<a href="listInfo.jsp?Name=<%=rdto.getName() %>">
		<%=rdto.getName() %>
		</a></td>
		
		<td align="center" width="100"><%=rdto.getPhone() %></td>
		<td align="center" width="250"><%=rdto.getLoc() %></td>
		<td align="center" width="100"><%=rdto.getOpenTime() %></td>
		<td align="center" width="100"><%=rdto.getCloseTime() %></td>

	</tr>
	<%
	}
	%>	
</table>
</body>
</html>
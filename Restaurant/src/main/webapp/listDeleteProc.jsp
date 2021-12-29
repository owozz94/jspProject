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
	System.out.println("request="+Name);
	ResDTO data = new ResDTO();
	data.setName(Name);
	
	ResDAO rdao = new ResDAO();
	rdao.deleteInfo(Name);
	
	response.sendRedirect("Main.jsp");
%>
</body>
</html>
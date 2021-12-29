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
	String Phone = request.getParameter("Phone");
	String Loc = request.getParameter("Loc");
	String OpenTime = request.getParameter("OpenTime");
	String CloseTime = request.getParameter("CloseTime");
	
	ResDTO data = new ResDTO();
	data.setName(Name);
	data.setPhone(Phone);
	data.setLoc(Loc);
	data.setOpenTime(OpenTime);
	data.setCloseTime(CloseTime);
	
	ResDAO rdao = new ResDAO();
	rdao.updateInfo(data); //data 자체에 수정할 내용이 그대로있어서
	response.sendRedirect("Main.jsp");
%>
</body>
</html>
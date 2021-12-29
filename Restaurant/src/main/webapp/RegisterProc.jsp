<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="model.ResDAO" %>
<%@ page import="model.ResDTO" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
</head>
<body>
<%
	request.setCharacterEncoding("UTF-8");
	//Register.jsp에서 넘어온 데이터를 각각 변수에 저장.
	String Name = request.getParameter("Name");
	String Phone = request.getParameter("Phone");
	String Loc = request.getParameter("Loc");
	String OpenTime = request.getParameter("OpenTime");
	String CloseTime = request.getParameter("CloseTime");
  
	//ResDTO 객체에 넘어온 데이터를 각각의 필드에 저장
	ResDTO data = new ResDTO();
	data.setName(Name);
	data.setPhone(Phone);
	data.setLoc(Loc);
	data.setOpenTime(OpenTime);
	data.setCloseTime(CloseTime);
  
	//ResDAO에 있는 InsertData() 호출 후 ResDTO 객체를 전달.
	ResDAO rdao = new ResDAO();
	rdao.InsertData(data);
  
	//실행 후 Main.jsp로 돌아감
	response.sendRedirect("Main.jsp");
%>
</body>
</html>
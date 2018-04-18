<%@page import="kr.co.jimmy.DAO.MemberDAO"%>
<%@page import="kr.co.jimmy.VO.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String email = request.getParameter("email");

	MemberVO vo = new MemberVO();
	vo.setId(id);
	vo.setPw(pw);
	vo.setEmail(email);

	MemberDAO dao = new MemberDAO();
	dao.MemberInsert(vo);

	response.sendRedirect("list.jsp");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>
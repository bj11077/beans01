<%@page import="members.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>loginChk.jsp<br>
<%
	String id = request.getParameter("id");
	String pwd = request.getParameter("pwd");
	MemberDTO m = new MemberDTO();
	m.setId("1234"); m.setPwd("1234");
	if(id.equals(m.getId()) && pwd.equals(m.getPwd()) ){
		out.print(m.getId() +"님 반갑습니다");
	}else{
		out.print("회원 정보가 존재하지 않습니다");
	}
%><hr>
<a href="javascript:history.back()">이전</a>
</body>
</html>
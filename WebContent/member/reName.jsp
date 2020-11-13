<%@page import="members.MemberDTO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="dao"  class="members.MemberDAO"></jsp:useBean>
<%ArrayList<MemberDTO> list = dao.memberSearch((String)session.getAttribute("id")); %>
<form action="reNameChk.jsp">
이름 <input type="text" value="<%=list.get(0).getName()%>" name="name"><br>
주소 <input type="text" value="<%=list.get(0).getAddr()%>" name="addr"><br>
전화번호 <input type="text" value="<%=list.get(0).getTel()%>" name="tel"><br>
<input type="submit" value="완료">&nbsp;&nbsp; <input type="button" value="취소">
</form>
</body>
</html>
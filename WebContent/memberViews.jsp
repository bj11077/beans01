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
<body>memberViews.jsp<br>
	<jsp:useBean id="dao" class="members.MemberDAO" />
	
	<%
		ArrayList<MemberDTO> list = dao.memberList();
		for(MemberDTO d : list){%>
		id : <%=d.getId() %><br>
		pwd : <%=d.getPwd() %><br>
		name : <%=d.getName() %><br>
		addr : <%=d.getAddr() %><br>
		tel : <%=d.getTel() %><br>	
	<% 	}
	%>
	
</body>
</html>
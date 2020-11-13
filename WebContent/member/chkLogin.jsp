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
<jsp:useBean id="dao" class="members.MemberDAO"/>
<%
ArrayList<MemberDTO> list = dao.memberSearch(request.getParameter("id"));


if(list.isEmpty()){%>
	<script type="text/javascript">
	alert("등록되지 않은 아이디 입니다.")
	location.href="login.jsp"
	</script>	
<% 
//아이디없음
}else{%>
<%
if(list.get(0).getPwd().equals(request.getParameter("pwd"))){
	session.setAttribute("user", list.get(0).getName());
	
%>	
<script type="text/javascript">
	location.href="successLogin.jsp"
</script>
<% }else{%>
	<script type="text/javascript">
	alert("비밀번호가 일치하지 않습니다.")
	location.href="login.jsp"
	
	</script>
	
	
<% }


%>	
	
<% }



%>

</body>
</html>
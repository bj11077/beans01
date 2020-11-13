<%@page import="members.MemberDTO"%>
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
<%  MemberDTO dto = new MemberDTO(); 
dto.setId((String)session.getAttribute("id"));
dto.setName(request.getParameter("name"));
dto.setAddr(request.getParameter("addr"));
dto.setTel(request.getParameter("tel"));
dao.reName(dto);
%>





<script type="text/javascript">
alert("변경 되었습니다.")
location.href="memberOneInfo.jsp"
</script>



</body>
</html>
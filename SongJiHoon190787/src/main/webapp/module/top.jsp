<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="../template.css">
</head>
<body>
<%
	String logincheck =(String)session.getAttribute("memberId");
	String loginid =(String)session.getAttribute("idAtt");
	String loginpw =(String)session.getAttribute("pwAtt");
	String chk =(String)session.getAttribute("shAtt");
	if(logincheck == null&chk == null){
%>	
		<form action="<%= request.getContextPath() %>/module/loginProcess.jsp" method="post" id="top">
			아이디 : <input type="text" name="id" placeholder="dong">
			비밀번호 : <input type="password" name="pw" placeholder="123">
			<input type="submit" value="로그인"> <br>
			<div id="top"><input type="checkbox" name="favo" value="save" id="checkbox"/> 아이디/비번 저장</div>
		</form>
<%
	}
%>
<% 
	if(logincheck != null&chk != null){
%>
	<b id="welcome"><%= loginid %> 님, 환영합니다!</b><br>
	<form action="<%= request.getContextPath() %>/module/logoutProcess.jsp" method="post" id="top"><br>
		<div id="topOut"><input type="submit" value="로그아웃" /></div>
	</form>
<%
	}
%>
<%
	if(logincheck == null&chk != null ){
%>
	<form action="<%= request.getContextPath() %>/module/loginProcess.jsp" method="post" id="top">
			아이디 : <input type="text" name="id" value="<%= loginid %>">
			비밀번호 : <input type="password" name="pw" value="<%= loginpw %>">
			<input type="submit" value="로그인"> <br>
			<div id="top"><input type="checkbox" name="favo" value="save" id="checkbox" checked="checked" /> 아이디/비번 저장</div>
	</form>
<%
	}
%>
<% 
	if(logincheck != null&chk == null){
%>
	<b id="welcome"><%= loginid %> 님, 환영합니다!</b><br>
	<form action="<%= request.getContextPath() %>/module/logoutProcess.jsp" method="post" id="top"><br>
		<input type="submit" value="로그아웃" />
	</form>
<%
	}
%>
</body>
</html>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="template.css">
<%
	String CONTENTPAGE = request.getParameter("CONTENTPAGE");
	if(CONTENTPAGE == null){
		CONTENTPAGE = "content.jsp";

	}
%>
</head>
<body>
<header>
<jsp:include page="module/top.jsp" flush="false"/>
</header>
<nav id="areasub">
<jsp:include page="module/left.jsp" flush="false"/>
</nav>
<div id="content">
<article id="areaMain">
<jsp:include page='<%="module/"+CONTENTPAGE %>' flush="false"/>
</article>	
</div>
<footer>
<jsp:include page="module/bottom.jsp" flush="false"/>
</footer>
</body>
</html>

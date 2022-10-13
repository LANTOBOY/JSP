<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String i=request.getParameter("id");
	String p=request.getParameter("pw");
	String favo = request.getParameter("favo");
	if( i.equals("dong")&& p.equals("123")){
		session.setAttribute("memberId", "ok");
		session.setAttribute("idAtt", i);
		session.setAttribute("pwAtt", p);
		session.setAttribute("shAtt", favo);
		response.sendRedirect("../template.jsp?CONTENTPAGE=content.jsp");
	}else{
		response.sendRedirect("../template.jsp?CONTENTPAGE=content.jsp");
    }
%>
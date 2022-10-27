<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Date, java.sql.*, java.text.*" %>
<%
	request.setCharacterEncoding("UTF-8");
	response.setCharacterEncoding("UTF-8");
	response.setContentType("text/html; charset=UTF-8");	// 캐릭터셋 설정	
	
	String title = request.getParameter("title");
	String content = request.getParameter("content");
	String author = request.getParameter("author");			// 받아올 데이터
	int cnt = 0;
%>	

<%@ include file="connectionPool.conf" %>

<% 
	
		sql = "insert into faqa values (fseq.nextval, ?, ?, 'admin', sysdate, ?, ?)";	// sql 구문
		pstmt = con.prepareStatement(sql);
		pstmt.setString(1, title);
		pstmt.setString(2, content);
		pstmt.setString(3, author);
		cnt = pstmt.executeUpdate();			//insert=> executeUpdate 사용
		if(cnt>0){
			response.sendRedirect("faq.jsp");
		} else {
			response.sendRedirect("faqWrite.jsp");
		}
		
%>		
											// 글쓰기 작업이 한번 이상 이루어지면 (cnt>0) boardList로 이동, 아니면 boardWrite로 이동
<%@ include file="connectionClose.conf" %>
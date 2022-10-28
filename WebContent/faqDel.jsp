<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Date, java.sql.*, java.text.*" %>
<%
	request.setCharacterEncoding("UTF-8");
	response.setCharacterEncoding("UTF-8");
	response.setContentType("text/html; charset=UTF-8");
	int no = Integer.parseInt(request.getParameter("no"));
	int cnt = 0;
%>

<%@ include file="connectionPool2.conf" %>	

<%	
		sql = "delete from faqa where no=?";
		pstmt = con.prepareStatement(sql);
		pstmt.setInt(1, no);
		cnt = pstmt.executeUpdate();
		if(cnt>0){
			response.sendRedirect("faq.jsp");
		} else {
			response.sendRedirect("faqDetail.jsp?no="+no);
		}
%>
<%@ include file="connectionClose2.conf" %>		
	
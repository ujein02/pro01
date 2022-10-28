<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Date, java.sql.*, java.text.*" %>
<%
	request.setCharacterEncoding("UTF-8");
	response.setCharacterEncoding("UTF-8");
	response.setContentType("text/html; charset=UTF-8");	// 캐릭터셋 설정	
	
	String title = request.getParameter("title");
	String title2 = "답변 : "+title;
	String content = request.getParameter("content");
	String content2 = request.getParameter("content2");
	String author = request.getParameter("author");
	int cnt1 = 0;
	int cnt2 = 0;
	int parno = 0;
	int prevno = 0;											// 받아올 데이터
	
%>	

<%@ include file="connectionPool.conf" %>

<% 
	
		sql = "insert into faqa values (fseq.nextval, ?, ?, 'admin', sysdate, 0, fseq.currval)";	// sql 구문
		pstmt = con.prepareStatement(sql);
		pstmt.setString(1, title);
		pstmt.setString(2, content);
		pstmt.setString(3, author);
		cnt1 = pstmt.executeUpdate();			//insert=> executeUpdate 사용
				
		pstmt.close();
		con.close();
		
		con = null; 
		pstmt = null;
		con = DriverManager.getConnection(url, dbid, dbpw);	
		sql = "select no from (select * from faqa order by rownum desc) where rownum=1";
		pstmt = con.prepareStatement(sql);
		rs = pstmt.executeQuery();
		if(rs.next()){
				prevno = rs.getInt("no");
				System.out.println(prevno);
		}
		con.close();
		
		con = null; 
		pstmt = null;
		
		con = DriverManager.getConnection(url, dbid, dbpw);		
		sql = "insert into faqa values (fseq.nextval, ?, ?, 'admin', sysdate, 1, ?)";
		pstmt = con.prepareStatement(sql);
		pstmt.setString(1, title2);
		pstmt.setString(2, content2);
		pstmt.setInt(3, prevno);
		cnt2 = pstmt.executeUpdate();
		
		if(cnt1>=1 && cnt2>=1){
			response.sendRedirect("faq.jsp");
		} else {
			response.sendRedirect("faqWrite.jsp");
		}
		
%>		
											
<%@ include file="connectionClose.conf" %>
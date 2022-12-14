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
	
	Connection con = null;
	PreparedStatement pstmt = null;
	
	String url = "jdbc:oracle:thin:@localhost:1521:xe";
	String dbid = "system";
	String dbpw = "1234";
	String sql = "";
	int cnt = 0;
	
	try {
		Class.forName("oracle.jdbc.OracleDriver");
		con = DriverManager.getConnection(url, dbid, dbpw);
		sql = "insert into board1 values (bseq1.nextval, ?, ?, ?, sysdate)";	// sql 구문
		pstmt = con.prepareStatement(sql);
		pstmt.setString(1, title);
		pstmt.setString(2, content);
		pstmt.setString(3, author);
		cnt = pstmt.executeUpdate();			//insert=> executeUpdate 사용
		if(cnt>0){
			response.sendRedirect("boardList.jsp");
		} else {
			response.sendRedirect("boardWrite.jsp");
		}										// 글쓰기 작업이 한번 이상 이루어지면 (cnt>0) boardList로 이동, 아니면 boardWrite로 이동
	} catch(Exception e){
		e.printStackTrace();
	} finally {
		pstmt.close();
		con.close();
	}
%>
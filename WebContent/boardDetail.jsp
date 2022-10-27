<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*, java.sql.*" %>
<%
	request.setCharacterEncoding("UTF-8");
	response.setCharacterEncoding("UTF-8");
	response.setContentType("text/html; charset=UTF-8");
	
	String sid = (String) session.getAttribute("id");
	
	int no = Integer.parseInt(request.getParameter("no"));
	String title = "";
	String content = "";
	String uname = "";
	String resdate = "";
	String author = "";
	
	Connection con = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	String url = "jdbc:oracle:thin:@localhost:1521:xe";
	String dbid = "system";
	String dbpw = "1234";
	String sql = "";
	
	try {
		Class.forName("oracle.jdbc.OracleDriver");
		con = DriverManager.getConnection(url, dbid, dbpw);
		sql = "select a.no no, a.title title, a.content content, ";
		sql = sql + "b.name name, a.resdate resdate, a.author author ";
		sql = sql + "from board1 a inner join member1 b ";
		sql = sql + "on a.author=b.id where a.no=?";
		pstmt = con.prepareStatement(sql);
		pstmt.setInt(1, no);
		rs = pstmt.executeQuery();
		
		if(rs.next()){
			title = rs.getString("title");
			content = rs.getString("content");
			uname = rs.getString("name");
			resdate = rs.getString("resdate");
			author = rs.getString("author");
		}
	} catch(Exception e){
		e.printStackTrace();
	} finally {
		rs.close();
		pstmt.close();
		con.close();
	}
		
%>
<!DOCTYPE html>
<html>
<head>
	<%@ include file="head.jsp" %>
	<link rel="stylesheet" href="./css/reset2.css">
    <link rel="stylesheet" href="header.css">
    <style>
    /* header.css */
    .hd { position:fixed; }
    /* content */
    .vs { clear:both; width: 100%; height:300px; overflow: hidden; }
    .vs img { display:block; width: 100%; height:auto; }
    .bread { clear:both; width: 100%; line-height: 60px; border-bottom:3px solid #eee; }
    .bread_fr { width: 1200px; margin: 0 auto; }
    .page { clear:both; width: 100%; min-height:100vh;}
    .page:after { content:""; display:block; clear:both; }
    .page_wrap { width: 1200px; margin: 0 auto; }
    .page_title { padding-top: 1em; text-align: center; }
    .home { color:#333; }
    
    .frm { border:2px solid #333; padding: 24px; width: 1000px; margin:50px auto; }
    .tb { display:table; margin:40px auto; margin-top:60px; width:1000px; border-collapse:collapse; }
    .tb tr { display:table-row; }
    .tb td, .tb th { display:table-cell; }
    .tb th { width:200px; height: 48px; border:1px solid #333; 
    color:#fff; background-color:rgb(198, 180, 142) }
    .tb td { height: 48px; border : 1px solid #333; text-align:center; }
    .btn_group .btn.primary { background-color:#333; color:#fff; min-width:120px; height: 32px; line-height: 32px; border-radius:10px; float:right; margin-top:40px; margin-right:30px; cursor:pointer; text-align:center; }
	.btn_group .btn.primary:hover { background-color:rgb(198, 180, 142); color:#fff; }
	
    </style>
    <link rel="stylesheet" href="footer.css">
</head>
<body>
<div class="wrap">
    <header class="hd">
		<%@ include file="nav.jsp" %>
    </header>
    <div class="content">
        <figure class="vs">
            <img src="./img/main.jpg" alt="비주얼">
        </figure>
        <div class="bread">
            <div class="bread_fr">
                <a href="index.jsp" class="home">HOME</a> &gt;
                <span class="sel">글 상세보기</span>
            </div>
        </div>
        <section class="page">
            <div class="page_wrap">
                <h2 class="page_title">글 상세보기</h2>
  				<div class="tb_fr">
  					<table class="tb">
  						<tbody>             
							<tr>
								<th>글 번호</th>
								<td><%=no %></td>
							</tr>
							<tr>
								<th>제목</th>
								<td><%=title %></td>
							</tr>
							<tr>
								<th>내용</th>
								<td><%=content %></td>
							</tr>
							<tr>
								<th>작성자</th>
								<td><%=uname %></td>
							</tr>
							<tr>
								<th>작성일</th>
								<td><%=resdate %></td>
							</tr>
						</tbody> 
					</table>
					<div class="btn_group">
						<a href="boardList.jsp" class="btn primary">게시판 목록</a>
						<%
							if(sid.equals("admin") || sid.equals(author)) {
						%>
						<a href='boardModify.jsp?no=<%=no %>' class="btn primary">글 수정</a>
						<a href='boardDel.jsp?no=<%=no %>' class="btn primary">글 삭제</a>
						<% } %>
					</div>
				</div>
			</div>
        </section>
    </div>
    <footer class="ft">
		<%@ include file="footer.jsp" %>
    </footer>
</div>
</body>
</html>
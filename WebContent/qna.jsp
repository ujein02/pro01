<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*, java.sql.*,  java.text.*" %>
<%
	request.setCharacterEncoding("UTF-8");
	response.setCharacterEncoding("UTF-8");
	response.setContentType("text/html; charset=UTF-8");
	
	int cnt = 0;
	String sid = (String) session.getAttribute("id");
	if(sid==null){
		sid="guest";
	}
	
	
	
%>  
<%@ include file="connectionPool.conf" %>  
<%
	sql = "select * from qnaa order by parno desc, lev asc ";
	pstmt = con.prepareStatement(sql);
	rs = pstmt.executeQuery();
%>
<!DOCTYPE html>
<html>
<head>
	<%@ include file="head.jsp" %>
    <link rel="stylesheet" href="./css/reset2.css">
    <link rel="stylesheet" href="header.css">
    <link rel="stylesheet" href="datatables.min.css">
    <script src="datatables.min.js"></script>
    <script>
	
	</script>
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
    .tb { display:table; margin:40px auto; width:1000px; border-collapse:collapse; }
    .tb tr { display:table-row; }
    .tb td, .tb th { display:table-cell; }
    .tb th { height: 48px; border-bottom:2px solid #333; border-top:2px solid #333; 
    color:#fff; background-color:rgb(198, 180, 142); font-size:18px; text-align:center; }
    .tb td { height: 48px; border-bottom:1px solid #333; text-align:center; }
	.tb tr th:first-child { width:80px; text-align:center; }
	.tb tr th:nth-child(2) { width:500px; text-align:center; }
	.tb tr th:nth-child(3) { width:300px; text-align:center; }
	.tb tr th:nth-child(4) { width:200px; text-align:center; }
	.tb tr th:last-child { text-align:center; }
	
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
                <span class="sel">질문 및 답변 목록</span>
            </div>
        </div>
        <section class="page">
            <div class="page_wrap">
                <h2 class="page_title">질문 및 답변 목록</h2>
  				<div class="tb_fr">
  					<table class="tb" id="myTable">
  						<thead>
  							<tr>
  								<th>연번</th>
  								<th>제목</th>
  								<th>작성자</th>
  								<th>작성일</th>
  							</tr>
  						</thead>
  						<tbody>             
<%
		
		while(rs.next()){
			SimpleDateFormat yymmdd = new SimpleDateFormat("yyyy-MM-dd");
			String date = yymmdd.format(rs.getDate("resdate"));
%>
			<tr>
					
					<td>
					<% if(rs.getInt("lev")==0) { 
						cnt++;
						out.println("<span>"+cnt+"</span>");
						}
					
					%>
					</td>
					<td>
					<% 
						if(rs.getInt("lev")==0) {
							if(rs.getString("sec").equals("Y")) {
								if(sid.equals(rs.getString("author")) || sid.equals("admin")){
					%>
									<a href='qnaDetail.jsp?no=<%=rs.getInt("no") %>' class="sec1"><%=rs.getString("title") %></a>
					<%
								} else {
					%>	
									<span class="sec1"><%=rs.getString("title") %></span>
					<%
								}
							} else if(rs.getString("sec").equals("N") && sid!="guest"){
					%>	
									<a href='qnaDetail.jsp?no=<%=rs.getInt("no") %>'><%=rs.getString("title") %></a>
					<%
							} else {
					%>	
									<span><%=rs.getString("title") %></span>
					<%
							}
					%>
					<% 
						} else {
							if(rs.getString("sec").equals("Y")) {
								if(sid.equals(rs.getString("author")) || sid.equals("admin")){
					%>
									<a href='qnaDetail.jsp?no=<%=rs.getInt("no") %>' style="padding-left:60px;" class="sec2"><%=rs.getString("title") %></a>
					<%
								} else {
					%>
									<span style="padding-left:60px;" class="sec2"><%=rs.getString("title") %></span>				
					<%
								}		
							} else if(rs.getString("sec").equals("N") && sid!="guest"){
					%>
								<a href='qnaDetail.jsp?no=<%=rs.getInt("no") %>' style="padding-left:60px;"><%=rs.getString("title") %></a>						
					<%
							} else {
					%>
						 		<span style="padding-left:60px;"><%=rs.getString("title") %></span>
					<%
							}
						} 
					%>
					</td>
					<td><%=rs.getString("author") %></td>
					<td><%=date %></td>
			</tr>
			<% 
			}
			%>
			
<%@ include file="connectionClose.conf" %>				

						</tbody> 
					</table>
					<div class="btn_group">
						<% if(sid!="guest") { %>
						<a href="qnaWrite.jsp" class="btn primary">질문 하기</a>
						<% } else { %>
						<p style="clear:both;">회원가입 후 로그인 하셔야 질문 및 답변을 보실 수 있습니다.</p>
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
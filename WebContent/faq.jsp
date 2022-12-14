<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*, java.sql.*" %>
<%
	request.setCharacterEncoding("UTF-8");
	response.setCharacterEncoding("UTF-8");
	response.setContentType("text/html; charset=UTF-8");
	
	int cnt = 0;
	String sid = (String) session.getAttribute("id");
	if(sid==null){
		sid="guset";
	}
	
%>  
<%@ include file="connectionPool.conf" %>  
<%
	sql = "select * from faqa order by parno asc, gubun asc ";
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
	$(document).ready( function () {
	    $('#myTable').DataTable();
	} );
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
            <img src="./img/main.jpg" alt="?????????">
        </figure>
        <div class="bread">
            <div class="bread_fr">
                <a href="index.jsp" class="home">HOME</a> &gt;
                <span class="sel">???????????? ?????? ??? ??????</span>
            </div>
        </div>
        <section class="page">
            <div class="page_wrap">
                <h2 class="page_title">???????????? ?????? ??? ??????</h2>
  				<div class="tb_fr">
  					<table class="tb" id="myTable">
  						<thead>
  							<tr>
  								<th>??????</th>
  								<th>??????</th>
  								<th>?????????</th>
  								<th>?????????</th>
  							</tr>
  						</thead>
  						<tbody>             
<%
		
		while(rs.next()){
			cnt+=1;
			SimpleDateFormat yymmdd = new SimpleDateFormat("yyyy-MM-dd");
			String date = yymmdd.format(rs.getDate("resdate"));
%>
			<tr>
					<td><%=cnt %></td>
					<td>
					<% if(rs.getInt("gubun")==0) { %>
						<a href='faqDetail.jsp?no=<%=rs.getInt("no") %>'><%=rs.getString("title") %></a>
					<% } else { %>
						<a href='faqDetail.jsp?no=<%=rs.getInt("no") %>' style="padding-left:36px;"><%=rs.getString("title") %></a>
					<% } %>
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
					<% 
						if(sid.equals("admin")) { 
					%>
						<a href="faqWrite.jsp" class="btn primary">??? ??????</a>
					<% 
						} 
					%>
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
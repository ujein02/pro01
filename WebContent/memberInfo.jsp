<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*, java.util.* " %>
<%
	request.setCharacterEncoding("UTF-8");
	response.setCharacterEncoding("UTF-8");
	response.setContentType("text/html; charset=UTF-8");
	
	String uid = request.getParameter("id");
	String upw = "";
	String uname = "";
	String uemail = "";
	String utel = "";
	String uregdate = "";
	
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
		sql = "select * from member1 where id=?";
		pstmt = con.prepareStatement(sql);
		pstmt.setString(1, uid);
		
		rs = pstmt.executeQuery();
		
		
		if(rs.next()){
			upw = rs.getString("pw");
			uname = rs.getString("name");
			uemail = rs.getString("email");
			utel = rs.getString("tel");
			uregdate = rs.getString("regdate");
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
    
    .frm { border:1px solid #333; padding: 24px; width: 1000px; margin:50px auto; }
    .tb { display:table; margin:40px auto; width:1000px; border-collapse:collapse; }
    .tb tr { display:table-row; }
    .tb td, .tb th { display:table-cell; }
    .tb th { height: 48px; border:1px solid #333;  
    color:#fff; background-color:rgb(198, 180, 142); font-size:18px; text-align:center; }
    .tb td { height: 48px; border:1px solid #333; text-align:center; }
	.tb tr th:first-child { width:200px; text-align:center; }
	.tb tr th:nth-child(2) { width:700px; text-align:center; }
	
	
	.btn_group .btn.primary { background-color:#333; color:#fff; min-width:120px; height: 32px; line-height: 32px; border-radius:10px; float:right; margin-top:40px; margin-right:30px; cursor:pointer; text-align:center; padding-left:10px; padding-right:10px;}
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
                <span class="sel">회원정보</span>
            </div>
        </div>
        <section class="page">
            <div class="page_wrap">
                <h2 class="page_title">회원정보</h2>
  				<div class="tb_fr">
  					<table class="tb">
  						<tbody>             
							<tr>
								<th>아이디</th>
								<td><%=uid %></td>
							</tr>
							<tr>
								<th>비밀번호</th>
								<td><%=upw %></td>
							</tr>
							<tr>
								<th>이름</th>
								<td><%=uname %></td>
							</tr>
							<tr>
								<th>이메일</th>
								<td><%=uemail %></td>
							</tr>
							<tr>
								<th>전화번호</th>
								<td><%=utel %></td>
							</tr>
							<tr>
								<th>가입일</th>
								<td><%=uregdate %></td>
							</tr>
						</tbody> 
					</table>
					<div class="btn_group">
						<a href="memList.jsp" class="btn primary">회원 목록</a>
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
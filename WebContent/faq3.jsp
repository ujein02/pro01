<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*, java.sql.*" %>
<%
	request.setCharacterEncoding("UTF-8");
	response.setCharacterEncoding("UTF-8");
	response.setContentType("text/html; charset=UTF-8");
	
	int cnt = 0;
	String sid = (String) session.getAttribute("id");
	
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
	
</head>
<body>
<div class="wrap">
    <header class="hd">
		
    </header>
    <div class="content">
        <section class="page">
            <div class="page_wrap">
                <h2 class="page_title">자주하는 질문 및 답변</h2>
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
			cnt+=1;
			SimpleDateFormat yymmdd = new SimpleDateFormat("yyyy-MM-dd");
			String date = yymmdd.format(rs.getDate("resdate"));
%>
			<tr>
					<td><%=cnt %></td>
					<% 
					if(sid!=null) { 
					%>
						<td><a href='faqDetail.jsp?no=<%=rs.getInt("no") %>'><%=rs.getString("title") %></a></td>
					<%
					} else {
					%> 
						<td><%=rs.getString("title") %></td>
					<%
					}
					%>
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
						<a href="faqWrite.jsp" class="btn primary">글 쓰기</a>
					<% 
						} 
					%>
					</div>
				</div>
			</div>
        </section>
    </div>
    <footer class="ft">
		
    </footer>
</div>
</body>
</html>
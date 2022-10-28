<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*, java.sql.*" %>
<%
	request.setCharacterEncoding("UTF-8");
	response.setCharacterEncoding("UTF-8");
	response.setContentType("text/html; charset=UTF-8");
	
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	
	Connection con = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	String url = "jdbc:oracle:thin:@localhost:1521:xe";
	String dbid = "system";
	String dbpw = "1234";
	String sql = "";
	
	try{
		Class.forName("oracle.jdbc.OracleDriver");
		con = DriverManager.getConnection(url, dbid, dbpw);
		sql = "select * from member1 where id=? and pw=?";
		pstmt = con.prepareStatement(sql);
		pstmt.setString(1, id);
		pstmt.setString(2, pw);
		//select된 데이터가 없으면, rs=null이 됨
		rs = pstmt.executeQuery();	//update, insert, delete는  int cnt = pstmt.excuteUpdate();
									// 별도로 rs 선언 없이 건수만 int로 받으면 됨
		if(rs.next()){
			session.setAttribute("id", rs.getString("id"));
			session.setAttribute("pw", rs.getString("pw"));
			session.setAttribute("name", rs.getString("name"));
			session.setAttribute("tel", rs.getString("tel"));
			session.setAttribute("email", rs.getString("email"));
			response.sendRedirect("index.jsp");
		} else {
			response.sendRedirect("login.jsp?msg=로그인 실패");
		}
		
	} catch (Exception e){
		e.printStackTrace();
	} finally {
		rs.close();
		pstmt.close();
		con.close();
	}
%>
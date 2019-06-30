<%@ page contentType = "text/html; charset=utf-8" %>
<%@ page import = "java.sql.DriverManager" %>
<%@ page import = "java.sql.Connection" %>
<%@ page import = "java.sql.PreparedStatement" %>
<%@ page import = "java.sql.SQLException" %>
<html>
<head>
<%
    request.setCharacterEncoding("utf-8");
    
    String user_id = request.getParameter("user_id");
    String password= request.getParameter("password");
    String user_name = request.getParameter("user_name");
    String mobile_number = request.getParameter("mobile_number");
    String email = request.getParameter("email"); 
    String address = request.getParameter("address");
    
    // 1. JDBC 드라이버 로딩
    Class.forName("com.mysql.cj.jdbc.Driver");
    Connection conn = null;
    PreparedStatement pstmt = null;

    try {
    	
		String jdbcDriver = "jdbc:mysql://localhost:3306/bigissue_db?serverTimezone=UTC&" +
   				"useUnicode=true&characterEncoding=euc-kr";
		String dbUser = "root";
		String dbPass = "admin";			
        conn = DriverManager.getConnection(jdbcDriver, dbUser, dbPass);
        pstmt = conn.prepareStatement("INSERT INTO users(user_id, password, user_name, mobile_number, email, address) VALUES (?, ?, ?, ?, ?, ?)");
        pstmt.setString(1, user_id);
        pstmt.setString(2, password);
        pstmt.setString(3, user_name);
        pstmt.setString(4, mobile_number);
        pstmt.setString(5, email);
        pstmt.setString(6, address);
        pstmt.executeUpdate();
    } catch(SQLException ex) {
        throw new Exception("사원 등록 오류", ex);        
    } finally {
        if (pstmt != null) try { pstmt.close(); } catch(SQLException ex) {}
        if (conn != null) try { conn.close(); } catch(SQLException ex) {}
    }
    session.setAttribute("ID", user_id);
%>
	<script language="JavaScript">
		location.href="<%=request.getContextPath() %>/main.jsp";
	</script>
</head>
<body>
</body>
</html>


<%@ page contentType="text/html; charset=utf-8" %>
<%@ page session = "true" %>
<%@ page import = "java.sql.DriverManager" %>
<%@ page import = "java.sql.Connection" %>
<%@ page import = "java.sql.SQLException" %>
<%@ page import = "java.sql.Statement" %>
<%@ page import = "java.sql.ResultSet" %>


<html>
<head>
<% 
	request.setCharacterEncoding("utf-8");
    String user_id = request.getParameter("user_id");
    String password = request.getParameter("password");

    // 로그인 성공이면 1
    int result = -1;
    
    // 1. JDBC 드라이버 로딩
    Class.forName("com.mysql.cj.jdbc.Driver");
    Connection conn = null;
    Statement stmt = null;
    ResultSet rs = null;
    try {
 		String jdbcDriver = "jdbc:mysql://localhost:3306/bigissue_db?serverTimezone=UTC&" +
    				"useUnicode=true&characterEncoding=euc-kr";
 		String dbUser = "root";
 		String dbPass = "admin";
 		String query = "select password from users where user_id='"+user_id+"'";
        // 2. 데이터베이스 커넥션 생성
        conn = DriverManager.getConnection(jdbcDriver, dbUser, dbPass);
        // 3. Statement 생성
        stmt = conn.createStatement();
        // 4. 쿼리 실행
        rs = stmt.executeQuery(query);  
        if (rs.next()) {
            String dbPassword = rs.getString("password"); 
            // if (dbPassword.compareTo(password) == 0) {
            if (dbPassword.equals(password)) {	
                result = 1;			// 암호가 같으면 1을 리턴
            } else {
                result = 0;			// 암호가 다르면 0을 리턴
            }
        } else {
            result = -1;			// 아이디 존재하지 않음 -1
        }
    } catch(SQLException ex) {
        throw new Exception("login check error", ex);    
    } finally {
        if (stmt != null) try { stmt.close(); } catch(SQLException ex) {}
        if (conn != null) try { conn.close(); } catch(SQLException ex) {}
    }
    if (result==1){		// result = 1이면 로그인 성공이므로 세션 생성
    	session.setAttribute("LOGINRESULT", new Integer(result));
    	session.setAttribute("ID", user_id);
 %>
<script language="JavaScript">
	location.href="<%=request.getContextPath() %>/main.jsp";
</script>   	
 <%   	
    }
%>
<script language="JavaScript">
	location.href="<%=request.getContextPath() %>/index.jsp";
</script>





</head>
<body>
</body>
</html>



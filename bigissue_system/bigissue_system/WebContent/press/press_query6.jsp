<%@ page contentType = "text/html; charset=euc-kr" %>
<%@ page import = "java.sql.DriverManager" %>
<%@ page import = "java.sql.Connection" %>
<%@ page import = "java.sql.Statement" %>
<%@ page import = "java.sql.ResultSet" %>
<%@ page import = "java.sql.SQLException" %>
<%@ page session = "true" %>
<html>
<%
	String appRoot = request.getContextPath();
%>
<head>
	<title>빅이슈 판매관리 시스템</title>
	<link rel="stylesheet" type="text/css" href="<%=appRoot%>/css/common.css">
</head>

<div style='background-color:FFE4E1;  border-style: outset; border:1px solid black;  color:black; font-size: 30px, font-family: Arial;  line-height:10px;padding:25px;'>
 <table width="100%" type="type11">
    <thead>
    <tr>
        <td scope="cols">ROI ( 투자자본 수익률 ) </th>
    </tr>
    </thead>
    <tbody>
  </div>



<%
    String user_id ="";
	boolean login;
	if(session.getAttribute("ID")==null){
		login=false;
%>
		<script language="JavaScript">
			location.href="<%=request.getContextPath() %>/index.jsp";
		</script>
<%		
	}else{
		login=true;
		user_id = session.getAttribute("ID").toString();
	}

	String var10 = request.getParameter("var10");
	 

	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection conn = null;
	Statement stmt = null;
	ResultSet rs = null;
	try {
		String jdbcDriver = "jdbc:mysql://localhost:3306/bigissue_db?serverTimezone=UTC&" +
		"useUnicode=true&characterEncoding=euc-kr";
		String dbUser = "root";
		String dbPass = "admin";
    	/* String jdbcDriver = "jdbc:mysql://localhost:3306/db?serverTimezone=UTC&useUnicode=true&characterEncoding=euc-kr";
		String dbUser = "user1";
		String dbPass = "User1234!"; */
		String query = "select  sum(판매부수*5000/(제작비용*출판부수)*100) as ROI from bigissue_db.bigissue where substr(발행일, 3, 2)= '" + var10+ "'";
		conn = DriverManager.getConnection(jdbcDriver, dbUser, dbPass);
		stmt = conn.createStatement();
		rs = stmt.executeQuery(query);
		while(rs.next()) {
%>						


<tr>
        <td><%= rs.getString("ROI") %></th>
    </tr>
    </tbody>
</table>	
</div>

<%
		}
	} catch(SQLException ex) {
	} finally {
	if (rs != null) try { rs.close(); } catch(SQLException ex) {}
	if (stmt != null) try { stmt.close(); } catch(SQLException ex) {}
	if (conn != null) try { conn.close(); } catch(SQLException ex) {}
}
%>	
<body>
</body>
</html>
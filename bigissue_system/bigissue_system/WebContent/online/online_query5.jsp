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
        <td scope="cols">채널이름</th>
        <td scope="cols">호수</th>
           <td scope="cols">연월</th>
        <td scope="cols">오프라인판매량</th>        

    </tr>
    </thead>
    <tbody>


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

	String var11 = request.getParameter("var11");
	String var12 = request.getParameter("var12"); 

	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection conn = null;
	Statement stmt = null;
	ResultSet rs = null;
	try {
		String jdbcDriver = "jdbc:mysql://localhost:3306/bigissue_db?serverTimezone=UTC&" +
		"useUnicode=true&characterEncoding=euc-kr";
		String dbUser = "root";
		String dbPass = "admin";
		String query = "SELECT * FROM bigissue_db.onlinesales where 채널이름 = '" + var11 + "' and 호수 = '" + var12 + "'";
		conn = DriverManager.getConnection(jdbcDriver, dbUser, dbPass);
		stmt = conn.createStatement();
		rs = stmt.executeQuery(query);
		while(rs.next()) {
%>						
<%-- 	<ul>
	<li><%= rs.getString("채널이름") %></li>
	<li><%= rs.getString("연월") %></li>
	<li><%= rs.getString("호수") %></li>
	<li><%= rs.getString("판매량") %></li>
	</ul> --%>

<tr>
        <td><%= rs.getString("채널이름") %></th>
                        <td><%= rs.getString("호수") %></th>
                                        <td><%= rs.getString("연월") %></th>
                                <td><%= rs.getString("판매량") %></th>
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
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
	<title>���̽� �ǸŰ��� �ý���</title>
	<link rel="stylesheet" type="text/css" href="<%=appRoot%>/css/common.css">
</head>

<div style='background-color:FFE4E1;  border-style: outset; border:1px solid black;  color:black; font-size: 30px, font-family: Arial;  line-height:10px;padding:25px;'>
 <table width="100%" type="type11">
    <thead>
    <tr>
        <td scope="cols">����</th>
        <td scope="cols">����</th>
           <td scope="cols">��ġ�� ����</th>
        <td scope="cols">��ġ�� ��</th>
        <td scope="cols">���������Ǹŷ�</th>        

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

	String var1 = request.getParameter("var1");
	String var2 = request.getParameter("var2"); 

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
		String query = "SELECT ����, ����, ����, ��, ���������Ǹŷ�, ȣ�� FROM bigissue_db.offlinesales where ���� = '" + var1 + "' and ���� = '" + var2 + "'";
		conn = DriverManager.getConnection(jdbcDriver, dbUser, dbPass);
		stmt = conn.createStatement();
		rs = stmt.executeQuery(query);
		while(rs.next()) {
%>	

<tr>
        <td><%= rs.getString("����") %></th>
        <td><%= rs.getString("����") %></th>
        <td><%= rs.getString("����") %></th>
          <td><%= rs.getString("��") %></th>
        <td><%= rs.getString("���������Ǹŷ�") %></th>

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
<%@ page contentType = "text/html; charset=utf-8" %>
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
%>
	
<body>
 <form action="" name="main">
<!-- 	 <table width="100%"> -->
		<tr>
			<td width="100%">
				<table width="100%">
					<tr bgcolor="#FF8E99">
						<td align="left" height="80">
							<h1 style="color:#000000;font-size:30px;font-weight:bold">&nbsp;빅이슈 판매관리 시스템</h1>
						</td>
						<td rowspan="2" align="right"><%=user_id %>&nbsp;님&nbsp;&nbsp;<a href="logout.jsp">로그아웃</a></td>
					</tr>
					<tr bgcolor="#FF8E99">
						<td align="left">
						<div style="width:100%; height: 40px; border-bottom:1px solid black; margin-top: 24px; padding-left: 50px;">
            <input type="button" value="출판 현황" style="color:#000000; font-weight: bold;" onclick = "location='press/press_search.jsp'"></input> 
            <span style=" padding-left: 50px;"></span>
            <input type="button" value="오프라인 판매 현황" style="color:#000000; font-weight: bold;" onclick = "location='offline/offline_page.jsp'"></input> 
            <span style=" padding-left: 50px;"></span>
            <input type="button" value="온라인 판매 현황" style="color:#000000; font-weight: bold;" onclick = "location='online/online_page.jsp.jsp'"></input> 
        </div>
<%-- 							<font style="color:#000000;font-size:20px;font-weight:bold">출판 현황</a>&nbsp;&nbsp;&nbsp;&nbsp;</font>
							<font style="color:#000000;font-size:15px;">&nbsp;<a href="<%=appRoot%>/user/userList.jsp">오프라인 판매현황</a>&nbsp;&nbsp;&nbsp;&nbsp;</font>
							<font style="color:#000000;font-size:15px;"><a href="<%=appRoot%>/product/productList.jsp">온라인 판매현황</a>&nbsp;&nbsp;&nbsp;&nbsp;</font>
	 --%>	
						</td>
					</tr>
				</table>
			</td>
		</tr>		
		
<!-- 		<tr height="20">
			<td></td>
		</tr> -->

		
		<div style="width:100%; height: 50px; border-bottom:0px solid black; ">

		<table width="100%">
		<tr>
			<td class="table_header" align="center">
			<font style="font-family:돋움;color:#000000;font-size:30px;font-weight:bold">&nbsp;BIGISSUE 신간호</font></td>
        </tr>
        <tr>
			<td align="center"height="300" >
			<img src="images/new.png" alt="빅이슈 신간호" width="500px">
			</td>
		</tr>
        </table>
</div>
		
		
		
		
	</table>	  
 </form>
 </body>
</html>

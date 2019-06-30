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
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
 <form action="" name="main">
	 <table width="100%">
		<tr>
			<td width="100%">
				<table width="100%">
					<tr bgcolor="#FF8E99">
						<td align="left" height="80">
							<h1 style="color:#000000;font-size:30px;font-weight:bold">&nbsp;빅이슈 판매관리 시스템</h1>
						</td>
						<td rowspan="2" align="right"><%=user_id %>&nbsp;님&nbsp;&nbsp;<a href="../logout.jsp">로그아웃</a></td>
					</tr>
					<tr bgcolor="#FF8E99">
						<td align="left">
						
						
						<div style="width:100%; height: 40px; border-bottom:1px solid black; margin-top: 24px; padding-left: 50px;">
            <input type="button" value="출판 현황" style="color:#000000; font-weight: bold;" onclick = "location='../press/press_search.jsp'"></input> 
            <span style=" padding-left: 50px;"></span>
            <input type="button" value="오프라인 판매 현황" style="color:#000000; font-weight: bold;" onclick = "location='../offline/offline_page.jsp'" ></input> 
            <span style=" padding-left: 50px;"></span>
            <input type="button" value="온라인 판매 현황" style="color:#000000; font-weight: bold;" ></input> 
        </div>
						</td>
					</tr>
				</table>
			</td>
		</tr>		
		<tr height="20">
			<td></td>
		</tr>
		<tr>
			<td align="center">
				<table width="90%">
					<tr>
						<td align="left" >
							<font style="color:#000000;font-size:20px;font-weight:bold">&nbsp;온라인 판매 현황</a></font>
						</td>
					</tr>
				</table>
			</td>	
		</tr>
		<tr height="20">
			<td></td>
		</tr>
		
		
		<tr>
 			 <td  align="center">
                   채널: <INPUT type="text" id="var11" maxlength="15" size="12">
                   호수 : <INPUT type="text" id="var12" maxlength="12" size="12">
                <INPUT type="button" id="search11" value="검색">
       		  </td>
       		  
       		  <tr height="20">
			<td></td>
		    </tr>
       </tr>
	</table>	  
 </form>
 
 
 <script type="text/javascript">
 $(function(){
	 $("#search11").click(function(){
		 var var11 = $("#var11").val();
		 var var12 = $("#var12").val();
		 console.log(var11);
		 console.log(var12);
		var url = "/bigissue_project/online/online_query5.jsp"
		+ "?var11="+ var11 + "&"+"var12=" + var12;
		window.open(url,'','width=510, height=620, scrollbars=yes');
	 })
 })
 </script>
 </body>
</html>

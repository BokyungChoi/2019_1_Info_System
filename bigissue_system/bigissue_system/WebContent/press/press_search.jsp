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
			<td width="100%">
				<table width="100%">
					<tr bgcolor="#FF8E99">
						<td align="left" height="80">
							<h1 style="color:#000000;font-size:30px;font-weight:bold">&nbsp;���̽� �ǸŰ��� �ý���</h1>
						</td>
						<td rowspan="2" align="right"><%=user_id %>&nbsp;��&nbsp;&nbsp;<a href="../logout.jsp">�α׾ƿ�</a></td>
					</tr>
					<tr bgcolor="#FF8E99">
						<td align="left">
						
						
						<div style="width:100%; height: 40px; border-bottom:1px solid black; margin-top: 24px; padding-left: 50px;">
            <input type="button" value="���� ��Ȳ" style="color:#000000; font-weight: bold;" ></input> 
            <span style=" padding-left: 50px;"></span>
            <input type="button" value="�������� �Ǹ� ��Ȳ" style="color:#000000; font-weight: bold;"onclick= "location='../offline/offline_page.jsp'" ></input> 
            <span style=" padding-left: 50px;"></span>
            <input type="button" value="�¶��� �Ǹ� ��Ȳ" style="color:#000000; font-weight: bold;" onclick ="location='../online/online_page.jsp'"></input> 
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
							<font style="color:#000000;font-size:20px;font-weight:bold">&nbsp;���� ��Ȳ</a></font>
						</td>
					</tr>
				</table>
			</td>	
		</tr>
		<tr height="20">
			<td></td>
		</tr>
		
		
		<td>
			<table border="1" cellpadding="5" align="center" border-spacing= 3px>
		<tr>
			<td  align="center">
                  2019�⵵ ���� ROI (�����ں� ��� ���ͷ�) : <INPUT type="text" id="var10" maxlength="15" size="12"><p></p>
                 <INPUT type="button" id="search10" value="�˻�">
         </td>
         </tr>
	</table>	  
 </form>
 
<!--���ǰ� ��ġ ���� ����  -->
 <script type="text/javascript">
 $(function(){
	 $("#search10").click(function(){
		 var var10 = $("#var10").val();;
		 console.log(var10);
		var url = "/bigissue_project/press/press_query6.jsp"
		+ "?var10="+ var10;
		window.open(url,'','width=300, height=400, scrollbars=yes');
	 })
 })
 </script>
  
 </body>
</html>

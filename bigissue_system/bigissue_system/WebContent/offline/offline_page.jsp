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
	 <table   width="100%">
			<td  width="100%">
				<table  width="100%">
					<tr bgcolor="#FF8E99">
						<td align="left" height="80">
							<h1  style="color:#000000;font-size:30px;font-weight:bold">&nbsp;���̽� �ǸŰ��� �ý���</h1>
						</td>
						<td rowspan="2" align="right"><%=user_id %>&nbsp;��&nbsp;&nbsp;<a href="../logout.jsp">�α׾ƿ�</a></td>
					</tr>
					<tr bgcolor="#FF8E99">
						<td align="left">
						
						
						<div style="width:100%; height: 40px; border-bottom:1px solid black; margin-top: 24px; padding-left: 50px;">
            <input  type="button" value="���� ��Ȳ" style="color:#000000; font-weight: bold;" onclick = "location='../press/press_search.jsp'"></input> 
            <span style=" padding-left: 50px;"></span>
            <input type="button" value="�������� �Ǹ� ��Ȳ" style="color:#000000; font-weight: bold;" ></input> 
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
							<font style="color:#000000;font-size:20px;font-weight:bold">&nbsp;�������� �Ǹ� ��Ȳ</a></font>
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
			<th width="200" class="table_header">�Ǹſ� ��ġ </th>
			<th width="100" class="table_header"> ����� ��ġ </th>
			<th width="100" class="table_header"> �Ǹſ� ������ </th>
			<th width="100" class="table_header"> �� ��� �Ǹŷ� </th>
		</tr>			
		
			<td  class="table_data" align="center">
                   ���� �̸�: <INPUT type="text" id="var1" maxlength="15" size="12"><p></p>
                   ��ġ ���� : <INPUT type="text" id="var2" maxlength="12" size="12"><p></p>
                <INPUT type="button" id="search1" value="�˻�">
         </td>
       
  
         <td class="table_data" align="center">
                 �� �̸�: <INPUT type="text" id="var3" maxlength="15" size="12"><p></p>
                 ��ġ ���� : <INPUT type="text" id="var4" maxlength="12" size="12"><p></p>
                <INPUT type="button" id="search2" value="�˻�">
         </td>
         <td class="table_data"  align="left">
                  	 ���� �̸�: <INPUT type="text" id="var5" maxlength="15" size="12"><p></p>
                     MONTH: <INPUT type="text" id="var6" maxlength="15" size="12"><p></p>
                   <INPUT type="button" id="search3" value="�˻�">
         </td>
        <td class="table_data" align="left">
        			���� �̸�: <INPUT type="text" id="var7" maxlength="15" size="12"><p></p>
                    MONTH: <INPUT type="text" id="var8" maxlength="15" size="12"><p></p>
                <INPUT type="button" id="search4" value="�˻�">
         </td>
		</tr>

	</table>	  
 </form>
 
<!--���ǰ� ��ġ ���� ����  -->
 <script type="text/javascript">
 $(function(){
	 $("#search1").click(function(){
		 var var1 = $("#var1").val();
		 var var2 = $("#var2").val();
		 console.log(var1);
		 console.log(var2);
		var url = "/bigissue_project/offline/offline_query2.jsp"
		+ "?var1="+ var1 + "&"+"var2=" + var2;
		window.open(url,'','width=500, height=600, scrollbars=yes');
	 })
 })
 </script>
 
 <!--�򵼰� ��ġ ���� ����  -->
 <script type="text/javascript">
 $(function(){
	 $("#search2").click(function(){
		 var var3 = $("#var3").val();
		 var var4 = $("#var4").val();
		 console.log(var3);
		 console.log(var4);
		var url = "/bigissue_project/offline/offline_query4.jsp"
		+ "?var3="+ var3 + "&"+"var4=" + var4;
		window.open(url,'','width=500, height=600, scrollbars=yes');
	 })
 })
 </script>
 
  <!--�Ǹſ� ������ �ľ� ����  -->
 <script type="text/javascript">
 $(function(){
	 $("#search3").click(function(){
		 var var5 = $("#var5").val();
		 var var6 = $("#var6").val();
		 console.log(var5);
		 console.log(var6);
		var url = "/bigissue_project/offline/offline_query3.jsp"
		+ "?var5="+ var5 + "&"+"var6=" + var6;
		window.open(url,'','width=500, height=600, scrollbars=yes');
	 })
 })
 </script>
 
   <!--���� �Ǹŷ� �ľ� ����  -->
 <script type="text/javascript">
 $(function(){
	 $("#search4").click(function(){
		 var var7= $("#var7").val();
		 var var8 = $("#var8").val();
		 console.log(var7);
		 console.log(var8);
		var url = "/bigissue_project/offline/offline_query1.jsp"
		+ "?var7="+ var7 + "&"+"var8=" + var8;
		window.open(url,'','width=500, height=600, scrollbars=yes');
	 })
 })
 </script>
 
 
 
 
 
 </body>
</html>

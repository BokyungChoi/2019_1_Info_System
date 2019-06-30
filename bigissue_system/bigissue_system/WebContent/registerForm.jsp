<%@ page contentType = "text/html; charset=utf-8" %>
<%@ page session = "true" %>
<html>
<head>
	<title>회원가입</title>
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/common.css">
</head>
 <body>
	<form action="register.jsp" method="post">
		<table width="100%">
			<tr>
				<td width="100%">
					<table width="100%">
						<tr bgcolor="#FF8E99">
							<td align="left" height="80" width="100%">
								<h1 style="font-family:돋움;color:#000000;font-size:30px;font-weight:bold">&nbsp;빅이슈 판매관리 시스템</h1>
							</td>
						</tr>
						<tr bgcolor="#FF8E99">
							<td align="left" >
								<font style="font-family:돋움;color:#000000;font-size:20px;font-weight:bold">&nbsp;사원등록</a></font>
							</td>
						</tr>
						<tr height="20">
							<td></td>
						</tr>
						<tr>
							<td>
								<table border="1" cellpadding="5" align="center">
									<tr>
										<td class="table_header">
										<font style="font-family:돋움;color:#4C4C4C; font-size:15px;font-size:15px;font-weight:bold">&nbsp;아이디</font></td>
										<td class="table_data"><input type="text" name="user_id" size="50"></td>
									</tr>
									<tr>
										<td class="table_header">
										<font style="font-family:돋움;color:#4C4C4C; font-size:15px;font-size:15px;font-weight:bold">&nbsp;암호</font></td>
										<td class="table_data"><input type="password" name="password" size="50"></td>
									</tr>
									<tr>
										<td class="table_header">
										<font style="font-family:돋움;color:#4C4C4C; font-size:15px;font-size:15px;font-weight:bold">&nbsp;이름</font></td>
										<td class="table_data"><input type="text" name="user_name" size="50"></td>
									</tr>
									<tr>
										<td class="table_header">
										<font style="font-family:돋움;color:#4C4C4C; font-size:15px;font-size:15px;font-weight:bold">&nbsp;휴대전화번호</font></td>
										<td class="table_data"><input type="text" name="mobile_number" size="50"></td>
									</tr>
									<tr>
										<td class="table_header">
										<font style="font-family:돋움;color:#4C4C4C; font-size:15px;font-size:15px;font-weight:bold">&nbsp;이메일</font></td>
										<td class="table_data"><input type="text" name="email" size="50"></td>
									</tr>
									<tr>
										<td class="table_header">
										<font style="font-family:돋움;color:#4C4C4C; font-size:15px;font-size:15px;font-weight:bold">&nbsp;주소</font></td>
										<td class="table_data"><input type="text" name="address" size="50"></td>
									</tr>
									<tr>
										<td colspan="2" align="center" class="table_data">
											<input type="submit" value="등록" style="cursor:pointer;font-size:14pt">
										</td>
									</tr>
								</table>
							</td>
						</tr>
					</table>
				</td>
			</tr>
		</table>
	</form>
 </body>
</html>

<%@ page contentType="text/html; charset=utf-8" %>
<%@ page session = "true" %>
<html>
 <head>

  <title>빅이슈 판매관리 시스템</title>
	<style>
		body {
		  font-family: 돋움, Arial, Helvetica, sans-serif;
		}
		table, th, td {
		  border: 0px solid black;  /* 초기 화면 디자인 시 1px로 하여 레이아웃 확인 */
		  border-collapse: collapse;
		}
	</style>
 </head>
 <body bgcolor="#FFFFFF">
 <form action="loginCheck.jsp" method="post">
	 <table width="100%">
		<tr>
			<td align="center" height="250">
				<img src="images/emblem_01.gif" alt="빅이슈 판매관리 시스템" width="350px">
			</td>
		</tr>
		<tr>
			<td align="center"><h1 style="color:#000000;font-size:38px;font-weight:bold">&nbsp;&nbsp;&nbsp;빅이슈 판매관리 시스템</h1></td>
		</tr>
		<tr>
			<td align="center">
				<table>
					<tr>
						<td height="30" width="120" style="color:#000000;font-size:20px;font-weight:bold">아이디</td>
						<td width="200"><input type="text" name="user_id"></td>
						<td rowspan="2" width="80" align="center">
							<input type="submit" value="로그인" style="color:#000000;font-size:20px;font-weight:bold;cursor:pointer;">
						</td>
					</tr>
					<tr>
						<td height="30" width="120" style="color:#000000;font-size:20px;font-weight:bold">비밀번호</td>
						<td width="200"><input type="password" name="password"></td>
					</tr>
				</table>
			</td>
		</tr>
		<tr>
			<td align="center" height="30">
				<a href="registerForm.jsp">회원가입</a>
				<!-- <td><input type="submit" value="회원가입"></td> -->
			</td>
		</tr>
	</table>	  
 </form>
 </body>
</html>
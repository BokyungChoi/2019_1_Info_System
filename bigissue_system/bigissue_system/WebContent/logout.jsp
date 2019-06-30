<%@ page contentType="text/html; charset=utf-8" %>
<%@ page session = "true" %>
<% 
    session.invalidate();
%>
<html>
<head>
<script language="JavaScript">
	location.href="<%=request.getContextPath() %>/index.jsp";
</script>
</head>
<body>
</body>
</html>






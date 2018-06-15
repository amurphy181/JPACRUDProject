<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:forEach items="${jobApp }" var="jobApp">
		<p>Company name:
		<a href="getJobApp.do?fid=${jobApp.id }">${jobApp.company }</a> <br>
		Details: ${jobApp.jobTitle }, ${jobApp.city }, ${jobApp.state }, ${jobApp.salary }
			<br> </p>
	</c:forEach>
</body>
</html>
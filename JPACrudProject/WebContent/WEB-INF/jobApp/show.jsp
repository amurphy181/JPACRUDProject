<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>Information on the job</h2>
	<div>
		<h5>${jobApp.company}
			<p>${jobApp.city}</p>
			<h5>
				<p>${jobApp.jobTitle}</p>
	</div>
	<form:form action="deleteJobApp.do" method="POST" modelAttribute="jobApp">
		<input type="submit" value="Delete Job App" />
		<form:hidden path="id"/>
	</form:form>
	<a href="index.do">Take me to the main page!</a>
</body>
</html>




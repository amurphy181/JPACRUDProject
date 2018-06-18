<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous">
  <link rel="stylesheet" href="../css/myStyles.css">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Comprehensive List of Job Applications</title>
</head>
<body>
	<c:forEach items="${jobApp }" var="jobApp">
		<p>Company name:
		<a href="getJobApp.do?fid=${jobApp.id }">${jobApp.company }</a> <br>
		Details: Title: ${jobApp.jobTitle }<br> 
		City: ${jobApp.city } <br>
		State: ${jobApp.state } <br>
		Salary: ${jobApp.salary } <br>
			<br> </p>
	</c:forEach>
</body>
</html>
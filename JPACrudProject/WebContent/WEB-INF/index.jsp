<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="getJobApp.do" method="GET">
		<input type="text" name="fid" /> <input type="submit"
			value="Find Application" />
	</form>
	<form action="jobs.do" method="GET">
		<input type="submit" value="List all applications" />
	</form>
	<form action="addJob.do" method="GET">
		<input type="submit" value="Add a new application record" />
	</form>

</body>
</html>
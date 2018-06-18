<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"
	integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB"
	crossorigin="anonymous">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Job Application Tracker</title>
</head>

<body style="background-color:#0099ff; color:beige">
<div class="container"><h2>Ye Olde Job App Tracker</h2><br><br></div>
	<div class="container">
		<form action="getJobApp.do" method="GET">
			<input type="submit" value="Find Application" /> <input type="text"
				name="fid" />
		</form><br>
		<form action="jobs.do" method="GET">
			<input type="submit" value="List all applications" />
		</form><br>
		<form action="addJob.do" method="GET">
			<input type="submit" value="Add a new application record" />
		</form>
	</div>

</body>
</html>
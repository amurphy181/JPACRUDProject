<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"
	integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB"
	crossorigin="anonymous"><title>Add a freshly-applied job!</title>
</head>
<body style="background-color: #0099ff; color: beige">
<div class="container">
		<h2>Add a New Job Application</h2>
		<p>Congrats: the hard part is over.</p>
	</div>
	<div class="container">
	<form:form action="jobAppAdded.do" method="POST"
		modelAttribute="jobApp">

		<form:label path="company">Company:</form:label>
		<form:input path="company" />
		<br />
		<form:label path="jobTitle">Job Title:</form:label>
		<form:input path="jobTitle" />
		<br />
		<form:label path="city">City:</form:label>
		<form:input path="city" />
		<br />
		<form:label path="state">State:</form:label>
		<form:input path="state" />
		<br />
		<form:label path="salary">Salary:</form:label>
		<form:input path="salary" />
		<br />
		<form:label path="dateApplied">Date Applied:</form:label>
		<form:input path="dateApplied" />
		<br />
		<form:label path="companyContact">Company Contact:</form:label>
		<form:input path="companyContact" />
		<br />
		<form:label path="postingLink">Posting Link:</form:label>
		<form:input path="postingLink" />
		<br />
		<form:label path="comments">Comments:</form:label>
		<form:input path="comments" />
		<br />
		<form:label path="appStatus">Application Status:</form:label>
			<form:select path="appStatus" >
			<form:options item="${applicationStatus }"></form:options>
			</form:select>
		<br />

		<input type="submit" value="Submit" />
	</form:form></div>
	<br>
	<div class="container">
		<a href="index.do" style="color: white">Changed my mind. Back to
			the main page.</a>
	</div>
</body>
</html>
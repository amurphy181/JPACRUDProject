<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Add a freshly-applied job!</title>
</head>
<body>

<form:form action="jobAppAdded.do" method="POST" modelAttribute="jobApp">
		
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
		<form:label path="appStatus">Application Status:</form:label>
		<form:input path="appStatus" />
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
		
		<input type="submit" value="Submit" />
	</form:form>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"                                                    "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>Show Table</title>
</head>
<body>


	<table border = "1">
		<thead>
			<tr>
				<th>ID</th>
				<th>Name</th>
				<th>Email</th>
				<th>Phone_Number</th>
				<th>Arrival</th>
				<th>VisitType</th>
				<th>EnrollmentTime</th>
				<th>EnrollmentStatus</th>
				<th>Carrer_Counseling</th>
				<th>Job_Searching</th>
				<th>Resume</th>
				<th>Cover_Letter</th>
				<th>Mock_Interview</th>
				<th>Internship_Information</th>
				<th>Transition_To_Kean</th>
				<th>Sophomore_Seminar</th>
				<th>Junior_Seminar</th>
				<th>Senior_Seminar</th>
				<th>Career</th>
				<th>Cops_Test</th>
				<th>Myers_Briggs</th>
				<th>Semester</th>
				<th>Comment</th>
		       
			</tr>
		</thead>
		<tbody>
			<c:forEach var="list"  items="${list}">
				<tr>
					<td><c:out value="${list.ID}"/></td>
					<td><c:out value="${list.name}"/></td>
					<td><c:out value="${list.email}"/></td>
					<td><c:out value="${list.phone_Number}"/></td>
					<td><c:out value="${list.arrival}"/></td>
					<td><c:out value="${list.visitType}"/></td>
					<td><c:out value="${list.enrollmentTime}"/></td>
					<td><c:out value="${list.enrollmentStatus}"/></td>
					<td><c:out value="${list.carrer_Counseling}"/></td>
					<td><c:out value="${list.job_Searching}"/></td>
					<td><c:out value="${list.resume}"/></td>
					<td><c:out value="${list.cover_Letter}"/></td>
					<td><c:out value="${list.mock_Interview}"/></td>
					<td><c:out value="${list.internship_Information}"/></td>
					<td><c:out value="${list.transition_To_Kean}"/></td>
					<td><c:out value="${list.sophomore_Seminar}"/></td>
					<td><c:out value="${list.junior_Seminar}"/></td>
					<td><c:out value="${list.senior_Seminar}"/></td>
					<td><c:out value="${list.career}"/></td>
					<td><c:out value="${list.cops_Test}"/></td>
					<td><c:out value="${list.myers_Briggs}"/></td>
					<td><c:out value="${list.semester}"/></td>
					<td><c:out value="${list.comment}"/></td>
					
				</tr>
			</c:forEach>
		</tbody>
	</table>
</body>
</html> 
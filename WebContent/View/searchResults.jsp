<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
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
				<th>Approve</th>
				<th>Update</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="results" items="${results}">
				<tr>
					<td><c:out value="${results.ID}"/></td>
					<td><c:out value="${results.name}"/></td>
					<td><c:out value="${results.email}"/></td>
					<td><c:out value="${results.phone_Number}"/></td>
					<td><c:out value="${results.arrival}"/></td>
					<td><c:out value="${results.visitType}"/></td>
					<td><c:out value="${results.enrollmentTime}"/></td>
					<td><c:out value="${results.enrollmentStatus}"/></td>
					<td><c:out value="${results.carrer_Counseling}"/></td>
					<td><c:out value="${results.job_Searching}"/></td>
					<td><c:out value="${results.resume}"/></td>
					<td><c:out value="${results.cover_Letter}"/></td>
					<td><c:out value="${results.mock_Interview}"/></td>
					<td><c:out value="${results.internship_Information}"/></td>
					<td><c:out value="${results.transition_To_Kean}"/></td>
					<td><c:out value="${results.sophomore_Seminar}"/></td>
					<td><c:out value="${results.junior_Seminar}"/></td>
					<td><c:out value="${results.senior_Seminar}"/></td>
					<td><c:out value="${results.career}"/></td>
					<td><c:out value="${results.cops_Test}"/></td>
					<td><c:out value="${results.myers_Briggs}"/></td>
					<td>
						<form action="FormCorrection" method="Post">
							<input type="hidden" name="itemToCorrect" value="${results.dbId}"/>
							<input type="hidden" name="UorA" value="Approve"/>
							<input type="submit" value="Approve"/>
						</form>
					</td>
					<td>
						<form action="FormCorrection" method="Post">
							<input type="hidden" name="itemToCorrect" value="${results.dbId}"/>
							<input type="hidden" name="UorA" value="Update"/>
							<input type="submit" value="Update"/>
						</form>
					</td>
 				</tr>
			</c:forEach>
		</tbody>
	</table>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<a href="Login" class="buttonLogout">Log out</a>
<BR>
    <center>
		<h1>Welcome to Career Services</h1>
	</center>
	<!-- took out the logout (Kelsey 10/13/16)-->
<form action = "Success" method = "post" name="studentSignIn" onSubmit="validate();">
	<input type ="radio" name = "visitType" value ="Walk In">Walk-in
	<input type ="radio" name = "visitType" value ="Class">Class
	<input type ="radio" name = "visitType"  value ="Appointment">Appointment
	<input type ="radio" name = "visitType" value ="Workshop">Workshop
	<center>
		<br>
			<input type = "text" name = "name" placeholder="Name">
		<br>
		<br>
			<input type = "text" name = "id" placeholder="ID" font-size="90%">
		<br>
		<br>
			<input type = "text" name = "email" placeholder="Kean E-mail" >
		<br>
		<br>
			<input type = "text" name = "phoneNumber" placeholder="Phone Number" >
		<br>
		<br>
			<input type ="text" name ="arrival" placeholder="Arrival Time">
		<br>
	</center>
	<h2> Section A </h2>
  	<center>
	<h3><b><i>Enrollment Status</i></b></h3>
  		<br>
			<input type ="radio" name = "enTime" value ="Full Time"> Full-time
			<input type ="radio" name = "enTime" value ="Part Time"> Part-time
	</center>
	<br>
	<h2>Section B </h2>
  	<center>
		<input type ="radio" name = "enStat" value ="Freshmen"> Freshman<br>
		<input type ="radio" name = "enStat" value ="Sophomore"> Sophomore<br>
		<input type ="radio" name = "enStat" value ="Junior"> Junior<br>
		<input type ="radio" name = "enStat" value ="Senior"> Senior<br>
		<input type ="radio" name = "enStat" value ="Graduate"> Graduate Student<br>
		<input type ="radio" name = "enStat" value ="Alumni"> Alumni<br>
		<input type ="radio" name = "enStat" value ="Potential Student"> Potential Student<br>
	</center>
	<br>
	<center>
	    <h3><i>Please check the boxes that apply to your visit</i></h3>
		<br>
		Career Counseling <input type ="checkbox" name = "careerCounseling" value ="Career Counseling"><br>
		Job Searching <input type ="checkbox" name = "jobSearching" value ="Job Searching"><br>
		Resume <input type ="checkbox" name = "resume" value ="Resume"><br>
		Cover Letter <input type ="checkbox" name = "coverLetter" value ="Cover Letter"><br>
		Mock Interview <input type ="checkbox" name = "mockInterview" value ="Mock Interview"><br>
		Internship Information <input type ="checkbox" name = "internshipInformation" value ="Internship Information"><br>
		Transition to Kean <input type ="checkbox" name = "transitionToKean" value ="Transition To Kean"><br>
		Sophomore Seminar <input type ="checkbox" name = "sophomoreSeminar" value ="Sophomore Seminar"><br>
		Junior Seminar <input type ="checkbox" name = "juniorSeminar" value ="Junior Seminar"><br>
		Senior Seminar <input type ="checkbox" name = "seniorSeminar" value ="Senior Seminar"><br>
		Career <input type ="checkbox" name = "career" value ="Career"><br>
		Cops Test <input type ="checkbox" name = "copsTest" value ="Cops Test"><br>
		Myers Briggs <input type ="checkbox" name = "myersBriggs" value ="Myers Briggs"><br>
	</center>
<br>
<button type = "submit">Submit</button>
</form>
</body>
</html>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<BR>
Welcome to Career Services
<!--  -->
<style type="text/css">
    .container {
        width: 500px;
        clear: both;
    }
    .container input {
        width: 100%;
        clear: both;
    }
</style>
<a href="Login">Log out</a>
<input type ="checkbox" name = "activity" value ="walk_in"> Walk-in
<input type ="checkbox" name = "activity" value ="class"> Class
<input type ="checkbox" name = "activity" value ="walk_in"> Appointment
<input type ="checkbox" name = "activity" value ="walk_in"> Workshop


<body>
	<div class = "container">
		<form action = "Success" method = "post">
			Name : <input type = "text" name = "name">
			<br>
			ID     : <input type = "text" name = "id" >
			<br>
			Phone Number : <input type = "text" name = "phone_number" >
			<br>
			Appointment Time : <input type ="text" name ="phone_number">
			<br>
	</div>
<center>
	<font size = "3"> Enrollment Status</font>
	<br>
		Section A
	<br>
		<input type ="checkbox" name = "en_time" value ="full_time"> Full-time
		<input type ="checkbox" name = "en_time" value ="part_time"> Part-time
	<br>
		Section B 
	<br>
	<input type ="checkbox" name = "en_stat" value ="fresh"> Freshman
	<input type ="checkbox" name = "en_stat" value ="soph"> Sophmore
	<input type ="checkbox" name = "en_stat" value ="juni"> Junior
	<input type ="checkbox" name = "en_stat" value ="fresh"> Senior
	<input type ="checkbox" name = "en_stat" value ="grad"> Graduate Student
	<input type ="checkbox" name = "en_stat" value ="alum"> Alumni
	<input type ="checkbox" name = "en_stat" value ="poten"> Potential Student
</center>
<br>
<center>	
	Please check the boxes that apply to your visit
	<br>
	Career Counseling <input type ="checkbox" name = "cc" value ="cc"><br>
	Job Searching <input type ="checkbox" name = "js" value ="js"><br>
	Resume <input type ="checkbox" name = "resume" value ="resume"><br>
	Cover Letter <input type ="checkbox" name = "cov" value ="cov"><br>
	Mock Interview <input type ="checkbox" name = "moc" value ="moc"><br>
	Internship Information <input type ="checkbox" name = "ii" value ="ii"><br>
	Transition to Kean <input type ="checkbox" name = "t2k" value ="t2k"><br>
	Sophmore Seminar <input type ="checkbox" name = "ss" value ="ss"><br>
	Junior Seminar <input type ="checkbox" name = "js" value ="js"><br>
	Senior Seminar <input type ="checkbox" name = "sen_s" value ="sen_s"><br>
	Career <input type ="checkbox" name = "car" value ="car"><br>
	Cops Test <input type ="checkbox" name = "cops" value ="cops"><br>
	Myers Briggs <input type ="checkbox" name = "mb" value ="mb"><br>

</center>
<br>
<input type = "submit">
</form>

</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <style>form {
    border: 0px solid #f1f1f1;
}

input[type=text], input[type=password] {
    width: 25%;
    padding: 8px 2px;
    margin: 5px 0;
    display: inline-block;
    border: 4px solid #ccc;
    border-radius:10px;
    box-sizing: border-box;
}
.imgcontainer {
    text-align: center;
    margin: 1px 0 1px 0;
}

img.avatar {
    width: 10%;
    border-radius: 50%;
}

.container {
    padding: 10px;
}

button {
    background-color: #4CAF50;
    color: White;
    padding: 14px 20px;
    margin: 3px 0;
    border: none;
    border-radius:20px;
    cursor: pointer;
    width: 20%;
    }
    
    </style>
<body>
    <form action="action_page.php">
  <div class="imgcontainer">
    <img src="https://upload.wikimedia.org/wikipedia/en/thumb/b/b6/Kean_University_Logo.svg/1034px-Kean_University_Logo.svg.png" alt="Avatar" class="avatar">
  </div>


<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>


<BR>
    <center>
<h1>Welcome to Career Services</h1>
</center>
<!--  -->
<a href="Login">Log out</a>
<input type ="checkbox" name = "activity" value ="walk_in"> Walk-in
<input type ="checkbox" name = "activity" value ="class"> Class
<input type ="checkbox" name = "activity" value ="walk_in"> Appointment
<input type ="checkbox" name = "activity" value ="walk_in"> Workshop

<form action = "Success" method = "post">
	<div class = "container">
		
			Name : 
			<br>
			<input type = "text" name = "name">
			<br>
			ID     : 
			<br>
			<input type = "text" name = "id" >
			<br>
			Kean E-mail :
			<br>
			<input type = "text" name = "id" >
			<br>
			Phone Number : 
			<br>
			<input type = "text" name = "phone_number" >
			<br>
			Arrival Time : 
			<br>
			<input type ="text" name ="phone_number">
			<br>
	</div>
	
<center>

		<h4> Section A </h4>
	<i>	Enrollment Status</i><br>
		<input type ="checkbox" name = "en_time" value ="full_time"> Full-time
		<input type ="checkbox" name = "en_time" value ="part_time"> Part-time

		<h4>Section B </h4>
	<input type ="checkbox" name = "en_stat" value ="fresh"> Freshman
	<input type ="checkbox" name = "en_stat" value ="soph"> Sophmore
	<input type ="checkbox" name = "en_stat" value ="juni"> Junior
	<input type ="checkbox" name = "en_stat" value ="fresh"> Senior
	<input type ="checkbox" name = "en_stat" value ="grad"> Graduate Student
	<input type ="checkbox" name = "en_stat" value ="alum"> Alumni
	<input type ="checkbox" name = "en_stat" value ="poten"> Potential Student
</center>

<center>
    <h4>	
	Please check the boxes that apply to your visit
	</h4>
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
<button type = "submit">Submit</button>

</form>
</body>
</html>

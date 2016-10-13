<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<style>
#main{
  position: relative;
}
div#first{
  background-image: url(https://upload.wikimedia.org/wikipedia/en/thumb/b/b6/Kean_University_Logo.svg/1034px-Kean_University_Logo.svg.png);
  opacity: 0.15;
  width:  100%;
  height: 100%;
  background-size: 75%;
  background-position: center;
  background-repeat: no-repeat;
  background-attachment: fixed;
}
div#second{
  width:100%;
  height: 100%;
  position: absolute;
  top: 0 ;
  left:0;
}
h2 {
    background-color: #FF9B05;
    color: White;
    padding: 10px 10px;
    margin: 10px 0;
    border: 1px;
    border-radius:20px;
    width: 15%;
    font-size: 117%;
    text-align: center;

}
h1{
  background-color: #FF0569;
  color: White;
  padding: 10px 10px;
  margin: 10px 0;
  border: 1px;
  border-radius:20px;
  width: 40%;
  font-size: 117%;
  text-align: center;
}
h3 {
    background-color: #02e802;
    color: White;
    padding: 10px 10px;
    margin: 10px 0;
    border: 1px;
    border-radius:20px;
    width: 30%;
    font-size: 117%;
    text-align: center;

}
form {
    border: 0px solid #f1f1f1;

}
body{
  background-color: #CCFFFF;
  font-size: 110%;

}
input[type=text], input[type=password] {
    width: 25%;
    padding: 8px 2px;
    margin: 5px 0;
    display: inline-block;
    border: 4px solid #ccc;
    border-radius:10px;
    box-sizing: border-box;
    font-size: 100%;
    text-align: center;
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
    font-size: 117%;
    }
    </style>
<body>
  <div id="main">
  <div id="first">
  </div>
  <div id="second">
    <form action="action_page.php">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>


<BR>
    <center>
<h1>Welcome to Career Services</h1>
</center>
<!-- took out the logout (Kelsey 10/13/16)-->
<input type ="checkbox" name = "activity" value ="walk_in">Walk-in
<input type ="checkbox" name = "activity" value ="class">Class
<input type ="checkbox" name = "activity"  value ="appointment">Appointment
<input type ="checkbox" name = "activity" value ="workshop">Workshop
<center>
<form action = "Success" method = "post">

			<br>
			<input type = "text" name = "name" placeholder="Name">
			<br>
			<br>
			<input type = "text" name = "id" placeholder="ID" font-size="90%">
			<br>
			<br>
			<input type = "text" name = "id" placeholder="Kean E-mail" >
			<br>
			<br>
			<input type = "text" name = "phone_number" placeholder="Phone Number" >
			<br>
			<br>
			<input type ="text" name ="phone_number" placeholder="Arrival Time">
			<br>
  </center>

		<h2> Section A </h2>
  <Center>
	<b><i><h3>	Enrollment Status</h3></i></b>
  <br>
		<input type ="radio" name = "en_time" value ="full_time"> Full-time
		<input type ="radio" name = "en_time" value ="part_time"> Part-time
</center>
<br>
		<h2>Section B </h2>
  <center>

	<input type ="radio" name = "en_stat" value ="fresh"> Freshman<br>
	<input type ="radio" name = "en_stat" value ="soph"> Sophmore<br>
	<input type ="radio" name = "en_stat" value ="juni"> Junior<br>
	<input type ="radio" name = "en_stat" value ="fresh"> Senior<br>
	<input type ="radio" name = "en_stat" value ="grad"> Graduate Student<br>
	<input type ="radio" name = "en_stat" value ="alum"> Alumni<br>
	<input type ="radio" name = "en_stat" value ="poten"> Potential Student<br>
</center>
<br>
<center>
    <i><h3>
	Please check the boxes that apply to your visit
</h3></i>
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
</div>
</form>
</body>
</html>

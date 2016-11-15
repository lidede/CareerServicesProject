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

body{
  background-color: #CCFFFF;
}
.buttonView {
    background-color: #FF0569;
    color: White;
    padding: 14px 20px;
    margin: 10px 0;
    border: none;
    border-radius:20px;
    cursor: pointer;
    width: 25%;
    font-size: 117%;
    top: 50%;
    left: 44%;
    margin-top: -50px;
    margin-left: -50px;
    text-align: center;
}
.buttonVisits {
    background-color: #0DFF05;
    color: White;
    padding: 14px 20px;
    margin: 10px 0;
    border: none;
    border-radius:20px;
    cursor: pointer;
    width: 25%;
    font-size: 110%;
    top: 40%;
    left: 44%;
    margin-top: -50px;
    margin-left: -50px;
    text-align: center;
}
.buttonLogout {
    background-color: #FF9B05;
    color: White;
    padding: 14px 20px;
    margin: 10px 0;
    border: none;
    border-radius:20px;
    cursor: pointer;
    width: 25%;
    font-size: 117%;
    top: 60%;
    left: 44%;
    margin-top: -50px;
    margin-left: -50px;
    text-align: center;
}
.container {
    padding: 10px;
}
h5{
  text-shadow: 1px 1px black;
}


</style>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<br>
<center>
    <a href="View/semesterSearch.jsp" class ="buttonView">Search as a Table</a> 
    <br><br><br><br><br>
	<a href="View/Search.jsp" class="buttonView">Search for Students and Approve/Update Appointments</a>
	<br><br><br><br><br>
	<a href="AllAppointments" class="buttonVisits">View All Appointments(offline)</a>
	<br><br><br><br><br>
	<a href="VisitStats" class="buttonView">View Visit Statistics(offline)</a>
	<br><br><br><br><br>
	<a href="Login" class="buttonLogout">Log out</a>
</center>
</body>
</html>

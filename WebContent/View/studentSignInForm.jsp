<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
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
  text-align: center;

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
    <script type="text/javascript">
    function validate()
    {
       if( document.studentSignIn.visitType.value == "" || document.studentSignIn.visitType.value == null)
       {
          alert( "Please select what type of visit this is" );
          document.studentSignIn.visitType.focus() ;
          return false;
       }
       if( document.studentSignIn.name.value == "" || document.studentSignIn.name.value == null)
       {
          alert( "Please provide your name" );
          document.myForm.name.focus() ;
          return false;
       }
       if( document.studentSignIn.id.value == "" || document.studentSignIn.id.value == null)
       {
          alert( "Please provide your id" );
          document.studentSignIn.id.focus() ;
          return false;
       }
       if( document.studentSignIn.email.value == "" || document.studentSignIn.email.value == null)
       {
          alert( "Please provide your email" );
          document.studentSignIn.email.focus() ;
          return false;
       }
       if( document.studentSignIn.phoneNumber.value == "" || document.studentSignIn.phoneNumber.value == null)
       {
          alert( "Please provide your phoneNumber" );
          document.studentSignIn.phoneNumber.focus() ;
          return false;
       }
     //  if( document.studentSignIn.arrive.value == "" || document.studentSignIn.arrive.value == null)
     //  {
     //     alert( "Please provide your arrive" );
      //    document.studentSignIn.arrive.focus() ;
     //     return false;
       }
       if( document.studentSignIn.enTime.value == "" || document.studentSignIn.enTime.value == null)
       {
          alert( "Please provide your enTime" );
          document.studentSignIn.enTime.focus() ;
          return false;
       }
       if( document.studentSignIn.enStat.value == "" || document.studentSignIn.enStat.value == null)
       {
          alert( "Please provide your enStat" );
          document.studentSignIn.enStat.focus() ;
          return false;
       }
       
    	return true;
    
    
    
    </script>
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

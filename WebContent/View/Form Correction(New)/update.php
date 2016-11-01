<?php
$con = mysql_connect("localhost","root","");
if (!$con)
  {
  die('Could not connect: ' . mysql_error());
  }
mysql_select_db("test", $con);


$sql= "UPDATE student_form SET Name='$_POST[name]', Career_Counseling='$_POST[careerCounseling]', Job_Searching='$_POST[jobSearching]', Resume='$_POST[resume]', Cover_Letter='$_POST[coverLetter]', Mock_Interview='$_POST[mockInterview]', Internship_Information='$_POST[internshipInformation]', Transition_to_Kean='$_POST[transitionToKean]', Sophmore_Seminar='$_POST[sophomoreSeminar]', Junior_Seminar='$_POST[juniorSeminar]', Senior_Seminar='$_POST[seniorSeminar]', Career='$_POST[career]', Cops_Test='$_POST[copsTest]', Myers_Briggs='$_POST[myersBriggs]'
WHERE ID = '$_POST[id]'";





if (!mysql_query($sql,$con))
  {
  die('Error: ' . mysql_error());
  }
echo "1 record changed";

mysql_close($con);

?>
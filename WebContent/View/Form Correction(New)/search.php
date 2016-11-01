<?php
$con = mysql_connect("localhost","root","");
if (!$con)
  {
  die('Could not connect: ' . mysql_error());
  }
mysql_select_db("test", $con);



$query = "SELECT * FROM student_form where $_POST[select]='$_POST[typing]'";

$result = mysql_query($query);


echo "<table border='1'>
<tr>
<th>ID</th>
<th>Name</th>
<th>Email</th>
<th>Phone_Number</th>
<th>Arrival</th>
<th>VisitType</th>
<th>EnrollmentTime</th>
<th>EnrollmentStatus</th>
<th>Career_Counseling</th>
<th>Job_Searching</th>
<th>Resume</th>
<th>Cover_Letter</th>
<th>Mock_Interview</th>
<th>Internship_Information</th>
<th>Transition_to_Kean</th>
<th>Sophmore_Seminar</th>
<th>Junior_Seminar</th>
<th>Senior_Seminar</th>
<th>Career</th>
<th>Cops_Test</th>
<th>Myers_Briggs</th>
<th>Approved</th>
</tr>";

while($row = mysql_fetch_array($result))
  {
  echo "<tr>";
  echo "<td>" . $row['ID'] . "</td>";
  echo "<td>" . $row['Name'] . "</td>";
  echo "<td>" . $row['Email'] . "</td>";
  echo "<td>" . $row['Phone_Number'] . "</td>";
  echo "<td>" . $row['Arrival'] . "</td>";
  echo "<td>" . $row['VisitType'] . "</td>";
  echo "<td>" . $row['EnrollmentTime'] . "</td>";
  echo "<td>" . $row['EnrollmentStatus'] . "</td>";
  echo "<td>" . $row['Career_Counseling'] . "</td>";
  echo "<td>" . $row['Job_Searching'] . "</td>";
  echo "<td>" . $row['Resume'] . "</td>";
  echo "<td>" . $row['Cover_Letter'] . "</td>";
  echo "<td>" . $row['Mock_Interview'] . "</td>";
  echo "<td>" . $row['Internship_Information'] . "</td>";
  echo "<td>" . $row['Transition_to_Kean'] . "</td>";
  echo "<td>" . $row['Sophmore_Seminar'] . "</td>";
  echo "<td>" . $row['Junior_Seminar'] . "</td>";
  echo "<td>" . $row['Senior_Seminar'] . "</td>";
  echo "<td>" . $row['Career'] . "</td>";
  echo "<td>" . $row['Cops_Test'] . "</td>";
  echo "<td>" . $row['Myers_Briggs'] . "</td>";
  echo "<td>" . $row['Approved'] . "</td>";
  echo "</tr>";
  }
echo "</table>";




mysql_close($con);
?>


<html>

<br><br>
<input type="button" onclick="window.open('Update.html')" value="Update" />
<input type="button" onclick="window.open('Search.html')" value="Back" />

</html>
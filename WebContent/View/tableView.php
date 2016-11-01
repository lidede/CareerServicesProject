
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
h2 {
  background-color: #FF9B05;
  color: White;
  padding: 10px 10px;
  margin: 10px 0;
  border: 1px;
  border-radius:20px;
  width: 25%;
  font-size: 117%;
  text-align: center;
}
.buttonReturn {
  background-color: #02e802;
  color: White;
  padding: 14px 20px;
  margin: 10px 0;
  border: none;
  border-radius:20px;
  cursor: pointer;
  width: 25%;
  font-size: 117%;
}
</style>
    <head>
        <meta charset="UTF-8">
        <title></title>
    </head>
    <body>
      <div id="main">
      <div id="first">
      </div>
      <div id="second">
      <h2>results</h2>
        <?php
          //echo "Hello ";
        //  echo "<break>";

          //establish db connection
          $host = "sql9.freemysqlhosting.net";
          $user = "sql9142409";
          $password = "vjUyLx6eNN";
          $dbname = "sql9142409";

          //creating actual connection
          $con =  mysqli_connect($host,$user,$password,$dbname);
          if($con->connect_errno > 0){
            die('Unable to connect to database [' . $db->connect_error . ']');
          }

          $sql = <<<SQL

 select * from student_form
SQL;
          $result1 = mysqli_query($con,"select * from student_form");

if(!$result = $con->query($sql)){
    die('There was an error running the query [' . $con->error . ']');
    }


    echo "<table border =1 > \n"; // start a table tag in the HTML
  echo "<tr> <td>ID</td>  <td>Name</td> <td>Email</td> <td>Phone_Number</td>  <td>Arrival</td> <td>VisitType</td> <td>EnrollmentTime</td> <td> EnrollmentStatus </td> <td>Career Counseling</td> <td>Job Searching</td> <td>Resume</td> <td>Cover Letter</td> <td>Mock Interview</td> <td>Internship Information</td> <td>Transition to Kean</td> <td> Sophmore Seminar</td> <td>Junior Seminar</td> <td>Senior Seminar</td> <td> Career </td> <td> Cops Test</td> <td> Myers Briggs</td> <td> Approved</td>   </tr>";
  while($row = mysqli_fetch_array($result1)){   //Creates a loop to loop through results

  //display table of results
  echo "<tr> <td>" .$row['ID']. " </td>  <td>" . $row['Name'] . "</td> <td>" . $row['Email'] . "</td>  <td>" .$row['Phone_Number']. "</td> <td>" .$row['Arrival']."</td>  <td>" .$row['VisitType']."</td>  <td> ".$row['EnrollmentTime']." </td> <td> ".$row['EnrollmentStatus']." </td>  <td> ".$row['Career_Counseling']." </td> <td> ".$row['Job_Searching']." </td>  <td> ".$row['Resume']." </td>  <td> ".$row['Cover_Letter']." </td> <td> ".$row['Mock_Interview']." </td> <td> ".$row['Internship_Information']." </td> <td> ".$row['Transition_to_Kean']." </td> <td> ".$row['Sophmore_Seminar']." </td>  <td> ".$row['Junior_Seminar']." </td>  <td> ".$row['Senior_Seminar']." </td> <td> ".$row['Career']." </td> <td> ".$row['Cops_Test']." </td> <td> ".$row['Myers_Briggs']." </td> <td> ".$row['Approved']." </td>    </tr>";  //$row['index'] the index here is a field name
}
  echo "</table>";



          mysqli_close($con);
          //echo " \n Connection is done";
        ?>
        </div>
    </body>
</html>

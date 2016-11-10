
<html>
    <head>
        <meta charset="UTF-8">
        <title></title>
    </head>
    <body>
        <?php
          echo "Hello ";
          echo "<break>";
          
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
    
    
    echo "<table border =1 > \n>"; // start a table tag in the HTML
  echo "<tr> <td>ID</td>  <td>Name</td> <td>Email</td> <td>Phone_Number</td>  <td>Arrival</td> <td>VisitType</td> <td>EnrollmentTime</td> <td> EnrollmentStatus </td> <td>Career Counseling</td> <td>Job Searching</td> <td>Resume</td> <td>Cover Letter</td> <td>Mock Interview</td> <td>Internship Information</td> <td>Transition to Kean</td> <td> Sophmore Seminar</td> <td>Junior Seminar</td> <td>Senior Seminar</td> <td> Career </td> <td> Cops Test</td> <td> Myers Briggs</td> <td> Approved</td>   </tr>";
  while($row = mysqli_fetch_array($result1)){   //Creates a loop to loop through results
 
  //display table of results
  echo "<tr> <td>" .$row['ID']. " </td>  <td>" . $row['Name'] . "</td> <td>" . $row['Email'] . "</td>  <td>" .$row['Phone_Number']. "</td> <td>" .$row['Arrival']."</td>  <td>" .$row['VisitType']."</td>  <td> ".$row['EnrollmentTime']." </td> <td> ".$row['EnrollmentStatus']." </td>  <td> ".$row['Career_Counseling']." </td> <td> ".$row['Job_Searching']." </td>  <td> ".$row['Resume']." </td>  <td> ".$row['Cover_Letter']." </td> <td> ".$row['Mock_Interview']." </td> <td> ".$row['Internship_Information']." </td> <td> ".$row['Transition_to_Kean']." </td> <td> ".$row['Sophmore_Seminar']." </td>  <td> ".$row['Junior_Seminar']." </td>  <td> ".$row['Senior_Seminar']." </td> <td> ".$row['Career']." </td> <td> ".$row['Cops_Test']." </td> <td> ".$row['Myers_Briggs']." </td> <td> ".$row['Approved']." </td>    </tr>";  //$row['index'] the index here is a field name
}
  echo "</table>";



          mysqli_close($con);
          echo " \n Connection is done";

        ?>
    </body>
</html>

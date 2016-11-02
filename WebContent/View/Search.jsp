<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Search</title>
</head>
	<body>
	<h1 style="font-size:50px;">Student Search</h1> 
		<form action="../../CareerServicesProject/Search" method="post">
			<select name="select" id="select_k1" class="xla_k" style="width:200px;height:50px;font-size:25px;">
		    	<option value="Select">Select</option>
		    	<option value="ID">Student ID</option>
		    	<option value="Name">Student Name</option>
		    </select>
			<input type="text" name="typing" placeholder="Search for the Key Words" value="" style="width:350px;height:50px;font-size:25px;">
		    <input type="submit" value="Search" style="width:150px;height:50px;font-size:25px;">
		</form>
	</body>
</html>
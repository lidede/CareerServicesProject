<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<style>
form {
    border: 10px solid #f1f1f1;
}

input[type=text], input[type=password] {
    width: 100%;
    padding: 12px 20px;
    margin: 10px 0;
    display: inline-block;
    border: 4px solid #ccc;
    border-radius:20px;
    box-sizing: border-box;
}

button {
    background-color: #4CAF50;
    color: White;
    padding: 14px 20px;
    margin: 10px 0;
    border: none;
    border-radius:20px;
    cursor: pointer;
    width: 100%;
}

.cancelbtn {
    width: auto;
    padding: 10px 18px;
    background-color: #f44336;
}

.imgcontainer {
    text-align: center;
    margin: 24px 0 12px 0;
}

img.avatar {
    width: 40%;
    border-radius: 50%;
}

.container {
    padding: 16px;
}

span.psw {
    float: right;
    padding-top: 16px;
}
</style>
<body>
    
<center>
<h2>Admin Log in</h2>
</center>

<form action="action_page.php">
  <div class="imgcontainer">
    <img src="https://upload.wikimedia.org/wikipedia/en/thumb/b/b6/Kean_University_Logo.svg/1034px-Kean_University_Logo.svg.png" alt="Avatar" class="avatar">
  </div>

  <div class="container">
    <label><b>Kean E-Mail</b></label>
    <input type="text" placeholder="Enter E-mail Address" name="username" required>

<label><b>Password</b></label>
    <input type="password" placeholder="Enter Password" name="psw" required>
        
    <button type="submit">LET ME IN !</button>
    <input type="checkbox" checked="checked"> Remember me
  </div>

  <div class="container" style="background-color:#f1f1f1">
    <button type="button" class="cancelbtn">Cancel</button>
    <span class="psw">Forgot <a href="#">password?</a></span>
  </div>
</form>

</body>
</html>

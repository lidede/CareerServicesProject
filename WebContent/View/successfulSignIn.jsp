<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<style>
body{
    background-color: #CCFFFF;
}
@keyframes fadein {
    0%{
      opacity: 0.5;
    }
    20%{
      opacity: 0.20;
    }
    40%{
        opacity: .4;
    }
    60%{
      opacity: .6;
    }
    80%{
        opacity: .8;
    }
    100%{
      opacity: 1;
    }


}
#main{
  position: relative;
}
div#first{
  background-image: url(https://upload.wikimedia.org/wikipedia/en/thumb/b/b6/Kean_University_Logo.svg/1034px-Kean_University_Logo.svg.png);
  width:  100%;
  height: 100%;
  background-size: 75%;
  background-position: center;
  background-repeat: no-repeat;
  background-attachment: fixed;
  animation-name: fadein;
  animation-duration: 5s;

}
div#second{
  width:100%;
  height: 100%;
  position: absolute;
  top: 0 ;
  left:0;
}
h1{
  font-weight: bold;
  padding: 1.5%;
  position: fixed;
  animation-name: fadein;
  animation-duration: 5s;

}
</style>

<head>
<title></title>
</head>
<body>
  <div id="main">
  <div id="first">
  </div>
  <div id="second">
<h1>Sign in Successful</h1>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta HTTP-EQUIV="REFRESH" content="5; url=http://localhost:8080/CareerServicesProject/StudentSignIn">
</div>
</body>
</html>

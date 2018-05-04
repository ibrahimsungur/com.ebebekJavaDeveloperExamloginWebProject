<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<META http-equiv="Content-Type" content="text/html; charset=UTF-8">
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<title>Username</title>
</head>
<body>

<script  type="text/javascript">
function checkForm(form)
{


  if(form.username.value == "") {
	
    alert("Error: Username cannot be blank!");
    form.username.focus();
    return false;
  }
 re=/[0-9]/;
 if(re.test(form.username.value)){
 alert("Username must contain only letters!");
  form.username.focus();
    return false;
 }
 
  re = /^\w+$/;
  if(!re.test(form.username.value)) {
    alert("Error: Username must contain only letters!");
    form.username.focus();
    return false;
  }
 
	if(form.username.value.length<3){
	alert("Username must contain at least three letters!");
	  form.username.focus();
    return false;
	}
	 
 re= /^([A-Za-z0-9_\-\.])+\@([A-Za-z0-9_\-\.])+\.([A-Za-z]{2,4})$/; 
	  if(!re.test(form.email.value)){
	  alert("eposta geçersiz");
	  form.email.focus();
	  return false;
	  }
 
  if(form.password.value != "" && form.password.value == form.pwd2.value) {
    if(form.password.value.length < 7) {
      alert("Error: Password must contain at least seven characters!");
      form.password.focus();
      return false;
    }
    if(form.password.value == form.username.value) {
      alert("Error: Password must be different from Username!");
      form.password.focus();
      return false;
    }
	  
	  
	 
    re = /[0-9]/;
    if(!re.test(form.password.value)) {
      alert("Error: password must contain at least one number (0-9)!");
      form.password.focus();
      return false;
    }
    re = /[a-z]/;
    if(!re.test(form.password.value)) {
      alert("Error: password must contain at least one lowercase letter (a-z)!");
      form.password.focus();
      return false;
    }
    re = /[A-Z]/;
    if(!re.test(form.password.value)) {
      alert("Error: password must contain at least one uppercase letter (A-Z)!");
      form.password.focus();
      return false;
    }
  } else {
    alert("Error: Please check that you've entered and confirmed your password!");
    form.password.focus();
    return false;
  }

  alert("Your account has been successfully created");
  return true;
}
</script>

	<div class="container">
<h2>Account Information</h2>
<form method="POST" action="/addUsername" onsubmit="return checkForm(this);">

 <div class="form-group">
      <label for="usr">Username:</label>
      <input type="text" class="form-control" id="usr" name="username" placeholder="Enter Username">
    </div>
	
	 <div class="form-group">
      <label for="email">Email:</label>
      <input type="email" class="form-control" id="email" placeholder="Enter email" name="email">
    </div>
	
	  <div class="form-group">
      <label for="password">Password:</label>
      <input type="password" class="form-control" id="password" placeholder="Enter password" name="password" required>
    </div>
    
    
      <div class="form-group">
      <label for="confirm-password">Confirm Password:</label>
      <input type="password" class="form-control" id="confirm-password" placeholder="Enter Confirm password" name="pwd2" required>
    </div>
	

 <button type="submit" class="btn btn-default">Create User</button>
</form>

</div>


</body>
</html>

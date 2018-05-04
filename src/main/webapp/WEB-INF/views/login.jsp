<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>welcom login</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  
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
	 
 
 
  if(form.password.value != "" ) {
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
</head>
<body>

<div class="container">
  <h2>welcome login</h2>
  <form class="form-horizontal" action="/login" method="GET">
    <div class="form-group">
      <label class="control-label col-sm-2" for="username">Username:</label>
      <div class="col-sm-10">
        <input type="email" class="form-control" id="username" placeholder="Enter username" name="username">
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="password">Password:</label>
      <div class="col-sm-10">          
        <input type="password" class="form-control" id="password" placeholder="Enter password" name="password">
      </div>
    </div>
    
   
    <div class="form-group">        
      <div class="col-sm-offset-2 col-sm-10">
        <button type="submit" class="btn btn-default">Login</button>
      </div>
    </div>
  </form>
</div>

</body>
</html>
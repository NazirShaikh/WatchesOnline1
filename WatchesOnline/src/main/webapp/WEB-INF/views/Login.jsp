
	<jsp:include page="customHeader.jsp" />

<%--<form:input path="username" placeholder="Enter Your EmailId" class="form-control"/>
	
	<br>
	<form:input class="form-control" type="password" path="password" placeholder="Enter Your Password" />
	<br> --%>

 	<form  action="perform_login" method="POST">
	<input type="text" name="username" placeholder="Enter Your EmailId"/>
	<input type="password" name="password" placeholder="Enter Your Password"/>
	
	<input type="submit" value="Signin" />
	<input type="reset" value="Reset" />
	</form>
	
	<%-- <div class="container">
    <div class="row">
		<div class="span4 offset4 well">
			<legend>Please Sign In</legend>
          	<div class="alert alert-error">
                <a class="close" data-dismiss="alert" href="#">x</a>Incorrect Username or Password!
            </div>
			<form method="POST" action="" accept-charset="UTF-8">
			<input type="text" id="username" class="span4" name="username" placeholder="Username">
			<input type="password" id="password" class="span4" name="password" placeholder="Password">
            <label class="checkbox">
            	<input type="checkbox" name="remember" value="1"> Remember Me
            </label>
			<button type="submit" name="submit" class="btn btn-info btn-block">Sign in</button>
			</form>    
		</div>
	</div>
</div> --%>
	
	
	

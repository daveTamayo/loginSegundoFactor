<?php 
	
	session_start();

	$user = isset($_SESSION['user']) ? $_SESSION['user'] : null;

 ?>

<!DOCTYPE html>
<html>
<head>
	<title></title>
	<!-- Latest compiled and minified CSS -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

	<script type="text/javascript" src="https://code.jquery.com/jquery-3.1.1.min.js"></script>

	<!-- Latest compiled and minified JavaScript -->
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
</head>
<body>

	<nav class="navbar navbar-default">
	  <div class="container-fluid">
	    <!-- Brand and toggle get grouped for better mobile display -->
	    <div class="navbar-header">
	      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
	        <span class="sr-only">Toggle navigation</span>
	        <span class="icon-bar"></span>
	        <span class="icon-bar"></span>
	        <span class="icon-bar"></span>
	      </button>
	      <a class="navbar-brand" href="#">Login Segundo Factor</a>
	    </div>

	   
	      <ul class="nav navbar-nav navbar-right">
	      	<?php if($user['check_token'] == 0): ?>
	        <li><a href="index.php">Iniciar Sesion</a></li>
	        <li><a href="registro.php">Registrarme</a></li>
	    	<?php else: ?>
	        <li class="dropdown">
	          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><?php echo $user['name']; ?> <span class="caret"></span></a>
	          <ul class="dropdown-menu">
	          
	            <li><a href="app/Controllers/logout.php">Cerrar sesion</a></li>
	          </ul>
	        </li>
	    	<?php endif; ?>
	      </ul>
	    </div><!-- /.navbar-collapse -->
	  </div><!-- /.container-fluid -->
	</nav>

	<div class="row">
		<div class="container">

			<?php if($user['check_token'] == 0): ?>
			<div class="col-sm-6">
				<h3>Iniciar Sesion</h3><hr>


				<form method="post" action="app/Controllers/login.php">

				  <div class="form-group">
				    <label for="exampleInputEmail1">Email address</label>
				    <input type="email" name="email" class="form-control" id="exampleInputEmail1" placeholder="Email">
				  </div>

				  <div class="form-group">
				    <label for="exampleInputPassword1">Password</label>
				    <input type="password" name="password" class="form-control" id="exampleInputPassword1" placeholder="Password">
				  </div>
				  
				  <button type="submit" class="btn btn-default">Iniciar Sesion</button>
				</form>

			</div>

			<?php endif; ?>

		</div>
	</div>	

</body>
</html>
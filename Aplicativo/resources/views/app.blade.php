<!DOCTYPE html>
<html lang="en">
<head>
	<link rel="stylesheet" href={{asset("css/estilo.css")}}>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Evaluacion</title>

	<link href="{{ asset('/css/app.css') }}" rel="stylesheet">
	<link href="{{ asset('/css/admin.css') }}" rel="stylesheet">

	<!-- Fonts -->
	

	<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
	<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
	<!--[if lt IE 9]>
		<script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
		<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
	<![endif]-->
</head>
<body>
	<header>
	<center>
        <img src={{asset("image/12_mercados.jpg")}} alt="centro" id="logoindex"> 
        </center>
    </header>
	<div class="navbar navbar-default">
		<center><a id="bienv" href="{{ url('/') }}">Evaluacion de instructores</a></center>
	</div>
	<img src={{asset("image/linea2.png")}} id="imglinea">
	<nav class="navbar navbar-default">
		<div class="container-fluid">
			<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
				<ul class="nav navbar-nav">
					<!--<li><a href="{{ url('regional') }}">Regional</a></li>-->
					<li><a href="{{ url('centro') }}">Centro</a></li>
					<li><a href="{{ url('coordinacion') }}">Coordinacion</a></li>
					<li><a href="{{ url('programa') }}">Programa</a></li>
					<li><a href="{{ url('ficha') }}">Ficha</a></li>
					<li><a href="{{ url('dficha') }}">D. Ficha</a></li>
					<li><a href="{{ url('instructor') }}">Instructor</a></li>
					<li><a href="{{ url('aprendiz') }}">Aprendiz</a></li>
					<li><a href="{{ url('instructorescoordinacion') }}">Instructor coordinacion</a></li>	
					<li><a href="{{ url('/coordinador') }}">Coordinador</a></li>
				</ul>

				<ul class="nav navbar-nav navbar-right">
					

				
				<ul class="nav navbar-nav navbar-right">
					
						<li class="dropdown">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">  <img src={{asset("image/user91.png")}} id="imgverde"><span class="caret"></span></a>
							<ul class="dropdown-menu" role="menu">
								<li><a href="{{ url('/auth/logout') }}">Salir</a></li>
							</ul>
						</li>
					
				</ul>
			</div>

			<div>

			</div>
		
	</nav>
	@yield('content')

	

	<!-- Scripts -->
	<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
	<script src="//cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.1/js/bootstrap.min.js"></script>
</body>
<footer>
  
    :: Servicio Nacional de Aprendizaje SENA – Dirección General Calle 57 No. 8-69, Bogotá D.C - PBX (57 1) 5461500 <br>
Línea gratuita de atención al ciudadano Bogotá 5925555 – Resto del país 018000 910270<br>
Horario de atención: lunes a viernes de 8:00 am a 5:30 pm<br>
Correo electrónico para notificaciones judiciales: notificacionesjudiciales@sena.edu.co<br>
Todos los derechos reservados © 2015 ::.
</footer>
</html>

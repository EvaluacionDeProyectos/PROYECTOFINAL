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
	<link href="{{ asset('/css/pure.css') }}" rel="stylesheet">
	<link href='//fonts.googleapis.com/css?family=Roboto:400,300' rel='stylesheet' type='text/css'>

</head>
<body>
	<header>
        <img src={{asset("image/12_mercados.jpg")}} alt="centro" id="logoindex"> 
    </header>
	<div class="navbar navbar-default">
		<center><a id="bienv" href="{{ url('/coordinador') }}">Coordinador</a></center>
	</div>
	<img src={{asset("image/linea2.png")}} id="imglinea">
	<center>


</center>

	<nav class="navbar navbar-default">
		<div class="container-fluid">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
					<span class="sr-only"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>
				
			</div>
			<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
				<ul class="nav navbar-nav">
					<!--<li><a href="{{ url('regional') }}">Regional</a></li>-->

					<li><a href="{{ url('pregunta') }}">Pregunta</a></li>
					<li><a href="{{ url('cuestionario') }}">Cuestionario</a></li>
					<li><a href="{{ url('dcuestionario') }}">D. Cuestionario</a></li>
					<li><a href="{{ url('detalle_pregunta') }}">Asignar preguntas</a></li>
					<li><a href="{{ url('respuesta') }}">Respuesta</a></li>
					
				</ul>

				<ul class="nav navbar-nav navbar-right">
					

				
			</div>

			<div>

			</div>
		
	</nav>
	@yield('content')
	
	<div>
    <style scoped>

        .button-success {
            color: white;
            border-radius: 4px;
            text-shadow: 0 1px 1px rgba(0, 0, 0, 0.2);
        }

        .button-success {
            background: rgb(35, 130, 118); /* this is a green */
        }

    </style>


</div>

	<!-- Scripts -->
	<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
	<script src="//cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.1/js/bootstrap.min.js"></script>
</body>
</html
<!DOCTYPE html>

<html>

	<head>

		<title>
			
			Testes

		</title>

		

	</head>

	<body>

		<h1 id = "h1_1" >
			
			Mylena

		</h1>

		<button onclick = "Change()" >
			
			Click

		</button>

		<script>
			
			var h1_1 = document.getElementById("h1_1");

			var Status = true;

			function Change(){

				if (Status == true) {

					h1_1.innerHTML = "Cecília";

					Status = false;

				}else{

					h1_1.innerHTML = "Mylena";

					Status = true;

				}

			}

		</script>

	</body>
</html>
<!DOCTYPE html>
<html>
	
	<head>
	
		<title>
	
			Requestion
	
		</title>

		<link rel = "icon" type = "img" href = "https://github.com/GuiSmith/Requestion_Images/blob/main/Icon.png?raw=true">

		<meta charset = "utf-8">
	
	</head>
	
	<body>

		<?php

			$page = "Home";

			if (isset($_GET["Page"])) {

				$page = $_GET["Page"];
			
			}

			switch ($page) {
				
				case "Cadastro":

					require "Cadastro/Index.html";

					break;

				case "Login":

					require "Login/Index.html";

					break;

				case "Direitos": 

					require "NavBar/Index.html";

					require "Direitos/Index.html";

					require "Footer/Index.html";

					break;
				
				default:

					require "NavBar/Index.html";

					require "Home/Index.html";

					require "Footer/Index.html";
					
			}

		
		?>

	</body>

</html>
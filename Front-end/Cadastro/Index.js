
	// Visualização da Senha

		function View_Password() {

			var password = form.password;

			var image = document.getElementById("viewpassword");

			if(password.type == "password") {

				image.style.display = "none";

				password.type = "text";

			} else {

				image.style.display = "inline";

				password.type = "password";
			}

		}

	//Fim
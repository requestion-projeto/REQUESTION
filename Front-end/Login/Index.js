
	// Visualização da Senha

		function viewPassword() {

			var password = form.Password;

			var image = document.getElementById("view");

			if(password.type == "password") {

				image.src = "https://github.com/requestion-projeto/REQUESTION-PLATAFORMA/blob/main/Front-end_imagens/Esqueceu_Senha/eye_black.png?raw=true";

				password.type = "text";

			} else {

				image.src = "https://github.com/requestion-projeto/REQUESTION-PLATAFORMA/blob/main/Front-end_imagens/Esqueceu_Senha/eye_white.png?raw=true";

				password.type = "password";
			}

		}

	//Fim
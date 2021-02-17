	//Senha

		var globalForce = "";

		//Funções de verificação

			//hasChars

				function hasChars(variable){

					if (variable.match(/[a-z]+/) && variable.length > 7) {

						return true;

					}else{

						return false;

					}

				}

			//hasSpecialChars

				function hasSpecialChars(variable){

					if (variable.match(/[@#$%&;*?!_+=-]/)) {

						return true;

					}else{

						return false;

					}

				}

			//hasNumbers

				function hasNumbers(variable){

					if (variable.match(/[0-9]/)) {

						return true;

					}else{

						return false;

					}

				}

		// Verificação da Força da senha

			function passwordForce() {

				var password = form.password.value;

				var force = "";

				//ifs
				
					if (hasChars(password) && hasSpecialChars(password)) {

						if (hasNumbers(password)) {

							force = "Forte";

						}else{

							force = "Média";

						}

					}else{

						force = "Fraca";

					}

				globalForce = force;

				//Console.log

					console.log("\nSenha: " + password);

					console.log("hasChars: " + hasChars(password));

					console.log("chars: " + password.length);

					console.log("hasSpecialChars: " + hasSpecialChars(password));

					console.log("globalForce: " + globalForce);

				showForce(force, password);
			}

		//Exibição da Mensagem de Força da Senha
			
			function showForce(force, password) {

				var showForce = document.getElementById("showForce");

				var content = document.getElementById("content");

				var passwordMessage = document.getElementById("passwordMessage");

				//Mensagem da Força da senha

					//if

						if (password != "") {

							showForce.style.display = "inline";

						}else{

							showForce.style.display = "none";

						}

					//switch

						switch(force){

							case "Fraca":

								content.innerHTML = "Fraca";

								content.style.color = "red";

								break;

							case "Média":

								content.innerHTML = "Média";

								content.style.color = "#FFA500";

								break;

							case "Forte":

								content.innerHTML = "Forte";

								content.style.color = "#15831A";

								break;

							default:

								content.innerHTML = "Erro";

								content.style.color = "Purple";

						}

				//Mensagem de senha

					if (force == "Fraca" && password != "") {

						passwordMessage.style.display = "inline";

					}else{

						passwordMessage.style.display = "none";

					}

			}

	//Confirmação de senha

		function passwordVerification(){

			var password = form.password.value;

			var password_C = form.password_C.value;

			var Password_C_Message = document.getElementById("Password_C_Message");

			if (password != password_C) {

				Password_C_Message.style.display = "inline";

			}else{

				Password_C_Message.style.display = "none";

			}

		}

	//Ver Senha

		function viewPassword(id,name){

			var image = document.getElementById(id);

			var password = (id == "view") ? form.password : form.password_C;

			if (password.type == "password") {

				image.src = "https://github.com/requestion-projeto/REQUESTION-PLATAFORMA/blob/main/Front-end_imagens/Esqueceu_Senha/eye_black.png?raw=true";

				password.type = "text";

			}else{

				image.src = "https://github.com/requestion-projeto/REQUESTION-PLATAFORMA/blob/main/Front-end_imagens/Esqueceu_Senha/eye_white.png?raw=true";

				password.type = "password";

			}

		}

	//Validação

		function Validate() {

			if (globalForce == "Fraca") {

				return false;

				document.getElementByName("password").focus();

			}

		}

	//Fim
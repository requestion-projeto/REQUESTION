	
	//Header Text

		var Header_Text = document.getElementById("Header_Text");

		var Header_Status = true;

		function Change(){


			Header_Text.innerHTML = "Ok";
		
			if (Header_Status == true) {

				Header_Text.innerHTML = "Desenvolva Provas em poucos passos, clicou, salvou, criou!";

				Header_Status = false;

			}else{

				Header_Text.innerHTML = "Classifique suas questões em temas e tipos, facilitando na busca por privacidade pública ou privada!";

				Header_Status = true;

			}

		}

	//Slides

		var Image_Status = 1;

		var Image = document.getElementById("Slide_Image");

		//Função de próxima imagem

			function Next_Img(){

				switch(Image_Status){

					case 1:

						Image.src =
						"https://raw.githubusercontent.com/requestion-projeto/REQUESTION-PLATAFORMA/main/Front-end_imagens/Home/Slides/Slide_2.png";

						Image_Status = 2;

						break;

					case 2:

						Image.src = "https://raw.githubusercontent.com/requestion-projeto/REQUESTION-PLATAFORMA/main/Front-end_imagens/Home/Slides/Slide_3.png";

						Image_Status = 3;

						break;

					case 3:

						Image.src = "https://raw.githubusercontent.com/requestion-projeto/REQUESTION-PLATAFORMA/main/Front-end_imagens/Home/Slides/Slide_4.png";

						Image_Status = 4;

						break;

					case 4:

						Image.src = "https://raw.githubusercontent.com/requestion-projeto/REQUESTION-PLATAFORMA/main/Front-end_imagens/Home/Slides/Slide_5.png";

						Image_Status = 5;

						break;

					case 5:

						Image.src = "https://raw.githubusercontent.com/requestion-projeto/REQUESTION-PLATAFORMA/main/Front-end_imagens/Home/Slides/Slide_1.png";

						Image_Status = 1;

						break;
				
				}

			}

		//Função de Imagem anterior

			function Previous_Img(){

				switch(Image_Status){

					case 1:

						Image.src = "https://raw.githubusercontent.com/requestion-projeto/REQUESTION-PLATAFORMA/main/Front-end_imagens/Home/Slides/Slide_5.png";

						Image_Status = 5;

						break;

					case 2:

						Image.src = "https://raw.githubusercontent.com/requestion-projeto/REQUESTION-PLATAFORMA/main/Front-end_imagens/Home/Slides/Slide_1.png";

						Image_Status = 1;

						break;

					case 3:

						Image.src = "https://raw.githubusercontent.com/requestion-projeto/REQUESTION-PLATAFORMA/main/Front-end_imagens/Home/Slides/Slide_2.png";

						Image_Status = 2;

						break;

					case 4:

						Image.src = "https://raw.githubusercontent.com/requestion-projeto/REQUESTION-PLATAFORMA/main/Front-end_imagens/Home/Slides/Slide_3.png";

						Image_Status = 3;

						break;

					case 5:

						Image.src = "https://raw.githubusercontent.com/requestion-projeto/REQUESTION-PLATAFORMA/main/Front-end_imagens/Home/Slides/Slide_4.png";

						Image_Status = 4;

						break;
					
				}

			}

	//Fim
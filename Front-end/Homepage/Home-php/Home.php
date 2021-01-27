<!DOCTYPE html>
<html>
	
	<head>
	
		<title>
	
			Requestion
	
		</title>

		<meta charset = "utf-8">

		<link rel = "stylesheet" type = "text/css" href = "Home.css">
	
	</head>
	
	<body>

		<!-- Barra de Navegação -->
			
			<nav id = "Nav_Bar" >
				
				<a href="#Header">
					
					<img id = "nav_bar_logo" src="https://github.com/GuiSmith/Requestion_Images/blob/main/Nav_Bar_Logo.png?raw=true">
				
				</a>
				
				<ul id = "Nav_Bar_Link_List" >
					
					<li class = "Nav_Bar_Link_Block" >
						
						<a class = "Nav_Bar_Link" href="#">
							
							ACESSE
						
						</a>
					
					</li>
					
					<li class = "Nav_Bar_Link_Block" >
						
						<a class = "Nav_Bar_Link" href="#">
							
							DIREITOS
						
						</a>

					</li>

					<li class = "Nav_Bar_Link_Block" >
						
						<a class = "Nav_Bar_Link" href="#">
						
							FAQ	
						
						</a>
					
					</li>
					
					<li class = "Nav_Bar_Link_Block" >
						
						<a class = "Nav_Bar_Link" href="#">
						
							LOGIN	
						
						</a>
					
					</li>
					
					<li class = "Nav_Bar_Link_Block" >
					
						<a class = "Nav_Bar_Link" href="#">
							
							CADASTRO	
							
						</a>

					</li>

					<li class = "Nav_Bar_Link_Block" >

						<a class = "Nav_Bar_Link" href="#About_Us">

							SOBRE NÓS	

						</a>

					</li>

					<li class = "Nav_Bar_Link_Block" >

						<a class = "Nav_Bar_Link" href="#Header">
						
							HOME

						</a>

					</li>

				</ul>

			</nav>

		<!-- Header -->

			<section id = "Header" >

				<img  id = "Header_Image" src="https://github.com/GuiSmith/Requestion_Images/blob/main/Header_Image.png?raw=true" >

				<div  id = "Header_Block" >

					<p id = "Header_Text_Title" >

						Requestion está a apenas um clique de você!

					</p>

					<p id = "Header_Text" onclick = "Change()" >

						Classifique suas questões em temas e tipos, facilitando na busca por privacidade pública ou privada

					</p>

					<p id = "Header_Welcome" data-hover = "Click Me">

						<span>

							SEJA BEM-VINDO!

						</span>

						<img id = "Header_Welcome_Arrow" src = "https://media.discordapp.net/attachments/785689738253172786/801022123145429002/Arrow.png?width=422&height=422">

					</p>

				</div>

			</section>

		<!-- Sobre nós -->

			<section id = "About_Us" >

				<div id = "About_Us_Block" >

					<h2 id = "About_Us_Text_Tittle" >

						SOBRE NÓS

					</h2>

					<p id = "About_Us_Text" >
						
						O Requestion nasceu a partir de uma tarefa acadêmica no Insituto Federal de Educação, Ciência e Tecnologia de São Paulo Câmpus São Paulo. Na turma 231 de 2020. O objetivo era um sistema simples de desenvolvimento e armazenamento de questões e provas, mas ao longo de seu desenvolvimento pensamos "e se?...". Resultando em um site onde professores podem se comunicar sem trocar uma palavra, e criar questões (ou provas) sem se preocupar com organização e perda de arquivos.

					</p>

				</div>

				<img id = "About_Us_Image" src = "https://github.com/GuiSmith/Requestion_Images/blob/main/About_Us_Image.png?raw=true">

			</section>

		<!-- Slides -->

			<section id = "Slide" >
			
				<img class = "Slide_Arrow" id = "Slide_Right_Arrow" src = "https://github.com/GuiSmith/Requestion_Images/blob/main/Slide_Right_Arrow.png?raw=true" onclick = "Next_Img()" >
				
				<img class = "Slide_Arrow" id = "Slide_Left_Arrow" src = "https://github.com/GuiSmith/Requestion_Images/blob/main/Slide_Left_Arrow.png?raw=true" onclick = "Previous_Img()" >
				
				<img id = "Slide_Image" src = "https://github.com/GuiSmith/Requestion_Images/blob/main/Slide_One.png?raw=true">

			</section>

		<!-- Video -->

			<section id = "Video" >
			
				<div id = "Video_Text_Block" >
			
					<h2 id = "Video_Text_Title" >
			
						CONHEÇA NOSSO SISTEMA
			
					</h2>
			
					<p id = "Video_Text" >
			
						NÃO PERCA MAIS TEMPO! CADASTRE-SE AGORA MESMO E CONHEÇA AS VANTAGENS DE UTILIZAR A PLATAFORMA REQUESTION, UM JEITO SIMPLES E DESCOMPLICADO DE CRIAR E ORGANIZAR SUAS QUESTÕES E PROVAS. ESPERAMOS POR VOCÊ.
			
					</p>
			
				</div>

				<div id = "Video_Frame_Block" >
					
					<img id = "Video_Image" src = "https://github.com/GuiSmith/Requestion_Images/blob/main/Video_Image.png?raw=true" >

					<iframe id = "Video_Frame" src = "https://www.youtube.com/embed/HcHQ-b3EAGQ"></iframe>

				</div>
			
			</section>

		<!-- Rodapé -->

			<footer id = "Footer" >
				
				<img id = "Footer_Logo" src = "https://github.com/GuiSmith/Requestion_Images/blob/main/Footer_Logo.png?raw=true">

				<p id = "Footer_Email" >
					
					<b>Fale conosco em.</b><br>contato@requestion.com

				</p>

				<div id = "Footer_Media" >
			
					<h2>
						
						CONTATO

					</h2>

					<img class = "footer_image" src = "https://github.com/GuiSmith/Requestion_Images/blob/main/Contact_Ytb_Image.png?raw=true">

					<img class = "footer_image" src = "https://github.com/GuiSmith/Requestion_Images/blob/main/Contact_Insta_Image.png?raw=true">

					<img class = "footer_image" src = "https://github.com/GuiSmith/Requestion_Images/blob/main/Contact_Face_Image.png?raw=true">

				</div>

			</footer>

		<!-- Script -->

			<script src = "Home.js" ></script>

	</body>

</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Smart-learn</title>
<style>
/* Styles for the button */
.button {
	display: inline-block;
	background-color: #4CAF50;
	border: none;
	color: white;
	padding: 10px 20px;
	text-align: center;
	text-decoration: none;
	display: inline-block;
	font-size: 16px;
	margin: 4px 2px;
	cursor: pointer;
	border-radius: 4px;
}
#dh1{
margin-left:470px;
background-color:orange;
color:black;
font-weight: bold;
}
#dh{
background-color:orange;
color:black;
font-weight: bold;
}
/* On mouse-over */
.button:hover {
	background-color: #45a049;
}


/* On click */
.button:active {
	background-color: #3e8e41;
}
</style>
</head>
<body>
	<%
	String uu = (String) session.getAttribute("user");
	if (uu == null)
		response.sendRedirect("Login.jsp");
	%>
	<div class="container">
		<h1>
			Login Successful,Welcome
			<%=uu%>
		</h1>
	</div>
	<!-- -----------------------------HEADER------------------------------------------------------------------------------------------------------------------------- -->
	<%@include file="Header.jsp"%>
	<div class="intro-section" id="home-section">
		<!-- -----------------------------BANNER------------------------------------------------------------------------------------------------------------------------- -->
		<div class="slide-1"
			style="background-image: url('images/hero_1.jpg');"
			data-stellar-background-ratio="0.5">
			<div class="container">
				<div class="row align-items-center">
					<div class="col-12">
						<div class="row align-items-center">
							<div class="col-lg-6 mb-4">
								<h1 data-aos="fade-up" data-aos-delay="100">Learn From The
									Expert</h1>
								<p class="mb-4" data-aos="fade-up" data-aos-delay="200">Many
									entrepreneurs fail due to the lack of guidance and absence of a
									strong education system. The 'Success Education' program helps
									you by providing a 'Virtual Tool Kit' containing all that you
									require to learn and building a solid career for yourself.</p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- -----------------------------COURSE------------------------------------------------------------------------------------------------------------------------- -->

	<div class="site-section courses-entry-wrap" data-aos="fade-up"
		data-aos-delay="100">
		<div class="container">
			<div class="row">
				<div class="owl-carousel col-12 nonloop-block-14">
					<!----------------- Course 1--------------------------------------------------------------- -->
					<div class="course bg-white h-100 align-self-stretch">
						<figure class="m-0">
							<a href="JavaV.jsp"><img src="images/img_1.jpg" alt="Image"
								class="img-fluid"></a>
						</figure>
						<div class="course-inner-text py-4 px-4">
							<span class="course-price"><p>
									Price: Rs <span class="productPrice">99</span>
								</p></span>
							<h2>
								<a href="JavaV.jsp"><span class="productName">Java</span></a>
							</h2>
							<p>Designed by: James Gosling</p>
							<button class="button addToCartButton"
								onclick="addToCart('Java', 99)">Add to Cart</button>
						</div>
						<div class="d-flex border-top stats">
							<div class="py-3 px-4"></div>
							<div class="py-3 px-4 w-25 ml-auto "></div>
						</div>
					</div>
					<!--------------------------- Course 2 ---------------------------------------->
					<div class="course bg-white h-100 align-self-stretch">
						<figure class="m-0">
							<a href="PythonV.jsp"><img src="images/img_2.jpg" alt="Image"
								class="img-fluid"> </a>
						</figure>
						<div class="course-inner-text py-4 px-4">
							<span class="course-price">
									Price: Rs <span id="productPrice">99</span>
								</span>
							<h2>
								<a href="PythonV.jsp"><span id="productName">Python </span></a>
							</h2>
							<p>Designed by: Guido van Rossum</p>
							<button class="button addToCartButton"
								onclick="addToCart('Python', 99)">Add to Cart</button>
						</div>
					
					<div class="d-flex border-top stats">
						<div class="py-3 px-4"></div>
						<div class="py-3 px-4 w-25 ml-auto "></div>
					</div>
					</div>
			
				<!-- -----------------------------JAVASCRIPT------------------------------------------------------------------------------------------------------------------------- -->
				<div class="course bg-white h-100 align-self-stretch">
					<figure class="m-0">
						<a href="JavaScriptV.jsp"><img src="images/img_3.jpg"
							alt="Image" class="img-fluid"></a>
					</figure>
					<div class="course-inner-text py-4 px-4">
						<span class="course-price">Price: $ <span id="productPrice">98</span></span>

						<h2>
							<a href="JavaScriptV.jsp"><span id="productName">JavaScript</span></a>
						</h2>
						<p>Designed by: Brendan Eich</p>
					</div>
					<button class="button addToCartButton"
						onclick="addToCart('JavaScript', 99)">Add to Cart</button>
					<div class="d-flex border-top stats">
						<div class="py-3 px-4"></div>
						<div class="py-3 px-4 w-25 ml-auto "></div>
					</div>
				</div>

				<!-- -----------------------------C++------------------------------------------------------------------------------------------------------------------------- -->

				<div class="course bg-white h-100 align-self-stretch">
					<figure class="m-0">
						<a href="C++V.jsp"><img src="images/img_4.jpg" alt="Image"
							class="img-fluid"></a>
					</figure>
					<div class="course-inner-text py-4 px-4">
						<span class="course-price">Price: $ <span id="productPrice">98</span></span>

						<h2>
							<a href="C++V.jsp"><span id="productName">C++</span></a>
						</h2>
						<p>Designed by: Bjarne Stroustrup</p>
					</div>
					<button class="button addToCartButton"
						onclick="addToCart('C++', 99)">Add to Cart</button>
					<div class="d-flex border-top stats">
						<div class="py-3 px-4"></div>
						<div class="py-3 px-4 w-25 ml-auto "></div>
					</div>
				</div>
				<!-- -----------------------------DEV-OPS------------------------------------------------------------------------------------------------------------------------- -->
				<div class="course bg-white h-100 align-self-stretch">
					<figure class="m-0">
						<a href="Dev-OpsV.jsp"><img src="images/devops.png"
							alt="Image" class="img-fluid"></a>
					</figure>
					<div class="course-inner-text py-4 px-4">
						<span class="course-price">Price: $ <span id="productPrice">98</span></span>

						<h2>
							<a href="Dev-OpsV.jsp"><span id="productName">Dev-Ops</span></a>
						</h2>
						<p>Designed by: Patrick Debois</p>
					</div>
					<button class="button addToCartButton"
						onclick="addToCart('Dev-Ops', 99)">Add to Cart</button>
					<div class="d-flex border-top stats">
						<div class="py-3 px-4"></div>
						<div class="py-3 px-4 w-25 ml-auto ">
						
						</div>
					</div>
				</div>
				<!-- -----------------------------NODEJS------------------------------------------------------------------------------------------------------------------------- -->
				<div class="course bg-white h-100 align-self-stretch">
					<figure class="m-0">
						<a href="Course_area.jsp"><img
							src="images/Node.js_logo.svg.png" alt="Image" class="img-fluid"></a>
					</figure>
					<div class="course-inner-text py-4 px-4">
						<span class="course-price">Price: $ <span id="productPrice">99</span></span>

						<h2>
							<a href="NoteJsV.jsp"><span id="productName">Node JS</span></a>
						</h2>
						<p>Designed by:Ryan Dahl</p>

					</div>
					<button class="button addToCartButton"
						onclick="addToCart('Node JS', 99)">Add to Cart</button>
					<div class="d-flex border-top stats">
						<div class="py-3 px-4"></div>
						<div class="py-3 px-4 w-25 ml-auto "></div>
					</div>
				</div>
				<!-- -----------------------------PHP------------------------------------------------------------------------------------------------------------------------- -->
				<div class="course bg-white h-100 align-self-stretch">
					<figure class="m-0">
						<a href="PhpV.jsp"><img src="images/PHP-logo.svg.png"
							alt="Image" class="img-fluid"></a>
					</figure>
					<div class="course-inner-text py-4 px-4">
						<span class="course-price">Price: $ <span id="productPrice">99</span></span>
						<h2>
							<a href="PhpV.jsp"><span id="productName">Php</span></a>
						</h2>
						<p>Designed by: Rasmus Lerdorf</p>
					</div>
					<button class="button addToCartButton"
						onclick="addToCart('Php', 99)">Add to Cart</button>
					<div class="d-flex border-top stats">
						<div class="py-3 px-4"></div>
						<div class="py-3 px-4 w-25 ml-auto "></div>
					</div>
				</div>

				<!-- -----------------------------FIGMA------------------------------------------------------------------------------------------------------------------------- -->

				<div class="course bg-white h-100 align-self-stretch">
					<figure class="m-0">
						<a href="FigmaV.jsp"><img src="images/figma.png" alt="Image"
							class="img-fluid"></a>
					</figure>
					<div class="course-inner-text py-4 px-4">
						<span class="course-price">Price: $ <span id="productPrice">99</span></span>

						<h2>
							<a href="FigmaV.jsp"><span id="productName">Logo
									Design Course</span></a>
						</h2>
						<p>Figma</p>
					</div>
					<button class="button addToCartButton"
						onclick="addToCart('Logo Design Course', 99)">Add to Cart</button>
					<div class="d-flex border-top stats">
						<div class="py-3 px-4"></div>
						<div class="py-3 px-4 w-25 ml-auto"></div>
					</div>
				</div>
				<!-- -----------------------------REACTJS------------------------------------------------------------------------------------------------------------------------- -->
				<div class="course bg-white h-100 align-self-stretch">
					<figure class="m-0">
						<a href="ReactV.jsp"><img src="images/img_6.jpg" alt="Image"
							class="img-fluid"></a>
					</figure>
					<div class="course-inner-text py-4 px-4">
						<span class="course-price">Price: $ <span id="productPrice">99</span></span>

						<h2>
							<a href="ReactV.jsp"><span id="productName">React</span></a>
						</h2>
						<p>Developer(s): Meta and community</p>
					</div>
					<button class="button addToCartButton"
						onclick="addToCart('React', 99)">Add to Cart</button>
					<div class="d-flex border-top stats">
						<div class="py-3 px-4"></div>
						<div class="py-3 px-4 w-25 ml-auto "></div>
					</div>
				</div>

				<!------------------------POETRY-------------------------------------------------------------------------------------------------------------------------------- -->
				<div class="course bg-white h-100 align-self-stretch">
					<figure class="m-0">
						<a href="Login.jsp"><img src="images/poetry.jpg" alt="Image"
							class="img-fluid"></a>
					</figure>
					<div class="course-inner-text py-4 px-4">
						<span class="course-price">Price: $ <span id="productPrice">40</span></span>

						<h2>
							<a href="PoetryV.jsp" style="text-decoration: none;"><span
								id="productName">Poetry Writing</span></a>
						</h2>
						<p>Best Creative Writing Course</p>
					</div>

					<button class="button addToCartButton"
						onclick="addToCart('Poetry Writing', 40)">Add to Cart</button>
					<div class="d-flex border-top stats">
						<div class="py-3 px-4"></div>
						<div class="py-3 px-4 w-25 ml-auto "></div>
					</div>
				</div>



				<!--------------------------POTTERY------------------------------------------------------------------------------------------------------------------------------ -->

				<div class="course bg-white h-100 align-self-stretch">
					<figure class="m-0">
						<a href="Login.jsp"><img src="images/Pottery.jpg" alt="Image"
							class="img-fluid"></a>
					</figure>
					<div class="course-inner-text py-4 px-4">
						<span class="course-price">Price: $ <span id="productPrice">40</span></span>

						<h2>
							<a href="PotteryV.jsp" style="text-decoration: none;"><span
								id="productName">Handmade Pottery Cup</span></a>
						</h2>
						<p>Best Creative Course</p>
					</div>

					<button class="button addToCartButton"
						onclick="addToCart('Handmade Pottery Cup', 40)">Add to
						Cart</button>
					<div class="d-flex border-top stats">
						<div class="py-3 px-4"></div>
						<div class="py-3 px-4 w-25 ml-auto "></div>
					</div>
				</div>

				<!--------------------Sewing------------------------------------------------------------------------------------------------------------------------------------ -->

				<div class="course bg-white h-100 align-self-stretch">
					<figure class="m-0">
						<a href="Login.jsp"><img src="images/Stitching.jpeg"
							alt="Image" class="img-fluid"></a>
					</figure>
					<div class="course-inner-text py-4 px-4">
						<span class="course-price">Price: $ <span id="productPrice">40</span></span>

						<h2>
							<a href="SewingV.jsp" style="text-decoration: none;"><span
								id="productName">Sewing Course </span></a>
						</h2>
						<p>Best Creative Course</p>
					</div>
					<button class="button addToCartButton"
						onclick="addToCart('Sewing Course', 40)">Add to Cart</button>
					<div class="d-flex border-top stats">
						<div class="py-3 px-4"></div>
						<div class="py-3 px-4 w-25 ml-auto "></div>
					</div>
				</div>


				<!---------------Video Editing----------------------------------------------------------------------------------------------------------------------------------------- -->

				<div class="course bg-white h-100 align-self-stretch">
					<figure class="m-0">
						<a href="EdittingV.jsp"><img src="images/Editing.jpeg"
							alt="Image" class="img-fluid"></a>
					</figure>
					<div class="course-inner-text py-4 px-4">
						<span class="course-price">Price: $ <span id="productPrice">40</span></span>

						<h2>
							<a href="EdittingV.jsp" style="text-decoration: none;"><span
								id="productName">Video editing course</span></a>
						</h2>
						<p>Best Creative Course</p>
					</div>
					<button class="button addToCartButton"
						onclick="addToCart('Video editing course', 40)">Add to
						Cart</button>
					<div class="d-flex border-top stats">
						<div class="py-3 px-4"></div>
						<div class="py-3 px-4 w-25 ml-auto "></div>
					</div>
				</div>
			</div>


			<!-------------------------------------------------------------------------------------------------------------------------------------------------------- -->


			<!-- -----------------------------BUTTON------------------------------------------------------------------------------------------------------------------------- -->
		</div>
		<div class="row justify-content-center">
			<div class="col-7 text-center">
				<button class="customPrevBtn btn btn-primary m-1">Prev</button>
				<button class="customNextBtn btn btn-primary m-1">Next</button>
			</div>
		</div>
	</div>
	</div>

	<!-- -----------------------------CART SECTION------------------------------------------------------------------------------------------------------------------------- -->
	<div class="site-section cart-section" id="cart-section">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<h2 class="section-title">Shopping Cart</h2>
					<table class="table table-striped">
						<thead>
							<tr>
								<th>Course</th>
								<th>Price</th>
								<th>Quantity</th>
								<th>Subtotal</th>
								<th>Action</th>
							</tr>
						</thead>
						<tbody id="cart-table-body">
							<!-- Cart items will be dynamically added here -->
						</tbody>
						<tfoot>
							<tr>
								<th colspan="3">Total</th>
								<th><span id="totalCost">0</span></th>
								<th></th>
							</tr>
						</tfoot>
					</table>
					
					<button class="button" id ="dh1" onclick="clearCart()">Clear Cart</button>
					<button class="button" id="dh" onclick="submitCart()">Submit</button>
					<!-- Add this submit button -->
				</div>
			</div>
		</div>
	</div>
	
	
	<!-- -----------------------------OUR PROGRAMS------------------------------------------------------------------------------------------------------------------------- -->
	<div class="site-section" id="programs-section">
		<div class="container">
			<div class="row mb-5 justify-content-center">
				<div class="col-lg-7 text-center" data-aos="fade-up"
					data-aos-delay="">
					<h2 class="section-title">Our Programs</h2>
					<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
						Magnam repellat aut neque! Doloribus sunt non aut reiciendis, vel
						recusandae obcaecati hic dicta repudiandae in quas quibusdam
						ullam, illum sed veniam!</p>
				</div>
			</div>
			<div class="row mb-5 align-items-center">
				<div class="col-lg-7 mb-5" data-aos="fade-up" data-aos-delay="100">
					<img src="images/undraw_youtube_tutorial.svg" alt="Image"
						class="img-fluid">
				</div>
				<div class="col-lg-4 ml-auto" data-aos="fade-up"
					data-aos-delay="200">
					<h2 class="text-black mb-4">We Are Excellent In Education</h2>
					<p class="mb-4">Lorem ipsum dolor sit amet consectetur
						adipisicing elit. Rem maxime nam porro possimus fugiat quo
						molestiae illo.</p>

					<div class="d-flex align-items-center custom-icon-wrap mb-3">
						<span class="custom-icon-inner mr-3"><span
							class="icon icon-graduation-cap"></span></span>
						<div>
							<h2 class="m-0">22,931 Yearly Graduates</h2>
						</div>
					</div>

					<div class="d-flex align-items-center custom-icon-wrap">
						<span class="custom-icon-inner mr-3"><span
							class="icon icon-university"></span></span>
						<div>
							<h2 class="m-0">150 Universities Worldwide</h2>
						</div>
					</div>

				</div>
			</div>
			<!-- -----------------------------ABOUT------------------------------------------------------------------------------------------------------------------------- -->
			<div class="row mb-5 align-items-center">
				<div class="col-lg-7 mb-5 order-1 order-lg-2" data-aos="fade-up"
					data-aos-delay="100">
					<img src="images/undraw_teaching.svg" alt="Image" class="img-fluid">
				</div>
				<div class="col-lg-4 mr-auto order-2 order-lg-1" data-aos="fade-up"
					data-aos-delay="200">
					<h2 class="text-black mb-4">Strive for Excellent</h2>
					<p class="mb-4">Lorem ipsum dolor sit amet consectetur
						adipisicing elit. Rem maxime nam porro possimus fugiat quo
						molestiae illo.</p>

					<div class="d-flex align-items-center custom-icon-wrap mb-3">
						<span class="custom-icon-inner mr-3"><span
							class="icon icon-graduation-cap"></span></span>
						<div>
							<h2 class="m-0">22,931 Yearly Graduates</h2>
						</div>
					</div>

					<div class="d-flex align-items-center custom-icon-wrap">
						<span class="custom-icon-inner mr-3"><span
							class="icon icon-university"></span></span>
						<div>
							<h2 class="m-0">150 Universities Worldwide</h2>
						</div>
					</div>

				</div>
			</div>

			<div class="row mb-5 align-items-center">
				<div class="col-lg-7 mb-5" data-aos="fade-up" data-aos-delay="100">
					<img src="images/undraw_teacher.svg" alt="Image" class="img-fluid">
				</div>
				<div class="col-lg-4 ml-auto" data-aos="fade-up"
					data-aos-delay="200">
					<h2 class="text-black mb-4">Education is life</h2>
					<p class="mb-4">Lorem ipsum dolor sit amet consectetur
						adipisicing elit. Rem maxime nam porro possimus fugiat quo
						molestiae illo.</p>

					<div class="d-flex align-items-center custom-icon-wrap mb-3">
						<span class="custom-icon-inner mr-3"><span
							class="icon icon-graduation-cap"></span></span>
						<div>
							<h2 class="m-0">22,931 Yearly Graduates</h2>
						</div>
					</div>

					<div class="d-flex align-items-center custom-icon-wrap">
						<span class="custom-icon-inner mr-3"><span
							class="icon icon-university"></span></span>
						<div>
							<h2 class="m-0">150 Universities Worldwide</h2>
						</div>
					</div>

				</div>
			</div>

		</div>
	</div>
	<!-- -----------------------------TEACHERS------------------------------------------------------------------------------------------------------------------------- -->
	<div class="site-section" id="teachers-section">
		<div class="container">

			<div class="row mb-5 justify-content-center">
				<div class="col-lg-7 mb-5 text-center" data-aos="fade-up"
					data-aos-delay="">
					<h2 class="section-title">Our Teachers</h2>
					<p class="mb-5">Lorem ipsum dolor sit amet, consectetur
						adipisicing elit. Magnam repellat aut neque! Doloribus sunt non
						aut reiciendis, vel recusandae obcaecati hic dicta repudiandae in
						quas quibusdam ullam, illum sed veniam!</p>
				</div>
			</div>

			<div class="row">

				<div class="col-md-6 col-lg-4 mb-4" data-aos="fade-up"
					data-aos-delay="100">
					<div class="teacher text-center">
						<img src="images/dhanesh.jpg" alt="Image"
							class="img-fluid w-50 rounded-circle mx-auto mb-4">
						<div class="py-2">
							<h2 class="text-black">Dhanesh</h2>
							<p class="position">React js Teacher</p>
							<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
								Porro eius suscipit delectus enim iusto tempora, adipisci at
								provident.</p>
						</div>
					</div>
				</div>

				<div class="col-md-6 col-lg-4 mb-4" data-aos="fade-up"
					data-aos-delay="200">
					<div class="teacher text-center">
						<img src="images/ashish.png" alt="Image"
							class="img-fluid w-50 rounded-circle mx-auto mb-4">
						<div class="py-2">
							<h2 class="text-black">Ashish</h2>
							<p class="position">Java Teacher</p>
							<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
								Porro eius suscipit delectus enim iusto tempora, adipisci at
								provident.</p>
						</div>
					</div>
				</div>

				<div class="col-md-6 col-lg-4 mb-4" data-aos="fade-up"
					data-aos-delay="300">
					<div class="teacher text-center">
						<img src="images/person_3.jpg" alt="Image"
							class="img-fluid w-50 rounded-circle mx-auto mb-4">
						<div class="py-2">
							<h2 class="text-black">Riya</h2>
							<p class="position">Python Teacher</p>
							<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
								Porro eius suscipit delectus enim iusto tempora, adipisci at
								provident.</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- -----------------------------HEADER------------------------------------------------------------------------------------------------------------------------- -->
	<div class="site-section bg-image overlay"
		style="background-image: url('images/hero_1.jpg');">
		<div class="container">
			<div class="row justify-content-center align-items-center">
				<div class="col-md-8 text-center testimony">
					<img src="images/person_4.jpg" alt="Image"
						class="img-fluid w-25 mb-4 rounded-circle">
					<h2 class="mb-4">Jerome Jensen</h2>
					<blockquote>
						<p>&ldquo; Lorem ipsum dolor sit amet consectetur adipisicing
							elit. Rerum rem soluta sit eius necessitatibus voluptate
							excepturi beatae ad eveniet sapiente impedit quae modi quo
							provident odit molestias! Rem reprehenderit assumenda &rdquo;</p>
					</blockquote>
				</div>
			</div>
		</div>
	</div>
	<!-- -----------------------------SHORTCUT ABOUT US------------------------------------------------------------------------------------------------------------------------- -->
	<div class="site-section pb-0">

		<div class="future-blobs">
			<div class="blob_2">
				<img src="images/blob_2.svg" alt="Image">
			</div>
			<div class="blob_1">
				<img src="images/blob_1.svg" alt="Image">
			</div>
		</div>
		<div class="container">
			<div class="row mb-5 justify-content-center" data-aos="fade-up"
				data-aos-delay="">
				<div class="col-lg-7 text-center">
					<h2 class="section-title">Why Choose Us</h2>
				</div>
			</div>
			<div class="row">
				<div class="col-lg-4 ml-auto align-self-start" data-aos="fade-up"
					data-aos-delay="100">

					<div class="p-4 rounded bg-white why-choose-us-box">

						<div
							class="d-flex align-items-center custom-icon-wrap custom-icon-light mb-3">
							<div class="mr-3">
								<span class="custom-icon-inner"><span
									class="icon icon-graduation-cap"></span></span>
							</div>
							<div>
								<h4 class="m-0">22,931 Yearly Graduates</h4>
							</div>
						</div>

						<div
							class="d-flex align-items-center custom-icon-wrap custom-icon-light mb-3">
							<div class="mr-3">
								<span class="custom-icon-inner"><span
									class="icon icon-university"></span></span>
							</div>
							<div>
								<h4 class="m-0">150 Universities Worldwide</h4>
							</div>
						</div>

						<div
							class="d-flex align-items-center custom-icon-wrap custom-icon-light mb-3">
							<div class="mr-3">
								<span class="custom-icon-inner"><span
									class="icon icon-graduation-cap"></span></span>
							</div>
							<div>
								<h4 class="m-0">Top Professionals in The World</h4>
							</div>
						</div>

						<div
							class="d-flex align-items-center custom-icon-wrap custom-icon-light mb-3">
							<div class="mr-3">
								<span class="custom-icon-inner"><span
									class="icon icon-university"></span></span>
							</div>
							<div>
								<h4 class="m-0">Expand Your Knowledge</h4>
							</div>
						</div>

						<div
							class="d-flex align-items-center custom-icon-wrap custom-icon-light mb-3">
							<div class="mr-3">
								<span class="custom-icon-inner"><span
									class="icon icon-graduation-cap"></span></span>
							</div>
							<div>
								<h4 class="m-0">Best Online Teaching Assistant Courses</h4>
							</div>
						</div>

						<div
							class="d-flex align-items-center custom-icon-wrap custom-icon-light">
							<div class="mr-3">
								<span class="custom-icon-inner"><span
									class="icon icon-university"></span></span>
							</div>
							<div>
								<h4 class="m-0">Best Teachers</h4>
							</div>
						</div>

					</div>


				</div>
				<div class="col-lg-7 align-self-end" data-aos="fade-left"
					data-aos-delay="200">
					<img src="images/person_transparent.png" alt="Image"
						class="img-fluid">
				</div>
			</div>
		</div>
	</div>


	<!-- -----------------------------CONTACT US------------------------------------------------------------------------------------------------------------------------- -->


	<div class="site-section bg-light" id="contact-section">
		<div class="container">

			<div class="row justify-content-center">
				<div class="col-md-7">



					<h2 class="section-title mb-3">Message Us</h2>
					<p class="mb-5">Natus totam voluptatibus animi aspernatur
						ducimus quas obcaecati mollitia quibusdam temporibus culpa dolore
						molestias blanditiis consequuntur sunt nisi.</p>

					<form method="post" data-aos="fade">
						<div class="form-group row">
							<div class="col-md-6 mb-3 mb-lg-0">
								<input type="text" class="form-control" placeholder="First name">
							</div>
							<div class="col-md-6">
								<input type="text" class="form-control" placeholder="Last name">
							</div>
						</div>

						<div class="form-group row">
							<div class="col-md-12">
								<input type="text" class="form-control" placeholder="Subject">
							</div>
						</div>

						<div class="form-group row">
							<div class="col-md-12">
								<input type="email" class="form-control" placeholder="Email">
							</div>
						</div>
						<div class="form-group row">
							<div class="col-md-12">
								<textarea class="form-control" id="" cols="30" rows="10"
									placeholder="Write your message here."></textarea>
							</div>
						</div>

						<div class="form-group row">
							<div class="col-md-6">

								<input type="submit"
									class="btn btn-primary py-3 px-5 btn-block btn-pill"
									value="Send Message">
							</div>
						</div>

					</form>
				</div>
			</div>
		</div>
	</div>
	<!-- -----------------------------FOOTER------------------------------------------------------------------------------------------------------------------------- -->

	<footer class="footer-section bg-white">
		<div class="container">
			<div class="row">
				<div class="col-md-4">
					<h2>About Smart-Learn</h2>
					<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
						Porro consectetur ut hic ipsum et veritatis corrupti. Itaque eius
						soluta optio dolorum temporibus in, atque, quos fugit sunt sit
						quaerat dicta.</p>
				</div>

				<div class="col-md-3 ml-auto">
					<h2>Links</h2>
					<ul class="list-unstyled footer-links">
						<li><a href="#home-section">Home</a></li>
						<li><a href="#courses-section">Courses</a></li>
						<li><a href="#programs-section">Programs</a></li>
						<li><a href="#teachers-section">Teachers</a></li>
					</ul>
				</div>

				<div class="col-md-4">
					<h3>Subscribe</h3>
					<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
						Nesciunt incidunt iure iusto architecto? Numquam, natus?</p>
					<form action="#" class="footer-subscribe">
						<div class="d-flex mb-5">
							<input type="text" class="form-control rounded-0"
								placeholder="Email"> <input type="submit"
								class="btn btn-primary rounded-0" value="Subscribe">
						</div>
					</form>
				</div>

			</div>

			<div class="row pt-5 mt-5 text-center">
				<div class="col-md-12">
					<div class="border-top pt-5">
						<p>
							Copyright &copy;
							<script>
								document.write(new Date().getFullYear());
							</script>
							All rights reserved | This template is made with <i
								class="icon-heart" aria-hidden="true"></i> by <a
								href="www.linkedin.com/in/dhanesh-dalal" target="_blank">DHANESH</a>
						</p>
					</div>
				</div>

			</div>
		</div>
	</footer>
	<!-- JavaScript Functionality -->
	
	<script>
    function addToCart(productName, productPrice) {
        const xhr = new XMLHttpRequest();
        xhr.open("POST", "cart", true);
        xhr.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
        xhr.onreadystatechange = function() {
            if (xhr.readyState === 4 && xhr.status === 200) {
                // Optionally update the UI to show the item was added
                alert("Item added to cart");
            }
        };
        xhr.send(`action=add&productName=${productName}&productPrice=${productPrice}&quantity=1`);
    }
    
    function clearCart() {
        const xhr = new XMLHttpRequest();
        xhr.open("POST", "cart", true);
        xhr.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
        xhr.onreadystatechange = function() {
            if (xhr.readyState === 4 && xhr.status === 200) {
                // Optionally update the UI to show the cart was cleared
                alert("Cart cleared");
            }
        };
        xhr.send("action=clear");
    }
</script>

	
	
	
<script>
    // Function to add product to cart
    function addToCart(productName, productPrice, button) {
        var totalCostElement = document.getElementById("totalCost");
        var cartTableBody = document.getElementById("cart-table-body");
        var rows = cartTableBody.getElementsByTagName('tr');

        // Check if the product is already in the cart
        for (var i = 0; i < rows.length; i++) {
            var rowProductName = rows[i].getElementsByTagName('td')[0].innerText;
            if (rowProductName === productName) {
                var quantityElement = rows[i].getElementsByTagName('td')[2];
                var quantity = parseInt(quantityElement.innerText);
                quantity++;
                quantityElement.innerText = quantity;
                updateTotalCost();
                return; // Exit the function
            }
        }

        // Create a new row for the cart item
        var newRow = '<tr>' +
            '<td>' + productName + '</td>' +
            '<td>$' + productPrice.toFixed(2) + '</td>' +
            '<td>1</td>' +
            '<td>$' + productPrice.toFixed(2) + '</td>' +
            '<td><button class="button" onclick="removeFromCart(this)">Remove</button></td>' +
            '</tr>';

        // Append the new row to the cart table body
        cartTableBody.innerHTML += newRow;

        // Update the total cost
        updateTotalCost();

        // Change button text to "Added"
        button.innerText = "Added";
        button.disabled = true; // Disable the button after adding to cart
    }

    // Function to remove product from cart
    function removeFromCart(button) {
        var row = button.parentNode.parentNode;
        var price = parseFloat(row.children[1].innerText.substr(1)); // Extract price from the second column
        var quantity = parseInt(row.children[2].innerText);
        var totalCostElement = document.getElementById("totalCost");

        // Update the total cost
        var totalCost = parseFloat(totalCostElement.innerText.substr(1));
        totalCost -= price * quantity;
        totalCostElement.innerText = '$' + totalCost.toFixed(2);

        // Remove the row from the cart table
        row.remove();
    }

    // Function to update total cost
    function updateTotalCost() {
        var totalCostElement = document.getElementById("totalCost");
        var cartTableBody = document.getElementById("cart-table-body");
        var rows = cartTableBody.getElementsByTagName('tr');
        var totalCost = 0;

        // Calculate total cost
        for (var i = 0; i < rows.length; i++) {
            var rowPrice = parseFloat(rows[i].getElementsByTagName('td')[1].innerText.substr(1)); // Extract price from the second column
            var rowQuantity = parseInt(rows[i].getElementsByTagName('td')[2].innerText);
            totalCost += rowPrice * rowQuantity;
        }

        // Update the total cost
        totalCostElement.innerText = '$' + totalCost.toFixed(2);
    }

    // Function to clear the cart
    function clearCart() {
        var totalCostElement = document.getElementById("totalCost");

        // Reset the total cost
        totalCostElement.innerText = "$0.00";

        // Remove all rows from the cart table
        document.getElementById("cart-table-body").innerHTML = "";
    }

    // Function to submit the cart (redirect to the next page)
    function submitCart() {
        // Here you can add code to handle the submission of the cart data
        // For example, you can redirect to another page where you process the cart items
        alert("Cart submitted!");
        clearCart(); // Reset the cart
        // window.location.href = "next_page.html"; // Uncomment this line to redirect
    }
</script>



</body>
</html>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />


<!DOCTYPE html>
<html lang="en">

<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">


<title>JUST MEET</title>

<!-- Bootstrap core CSS -->
<link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

<!-- Custom fonts for this template -->
<link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet"
	type="text/css">
<link href="https://fonts.googleapis.com/css?family=Montserrat:400,700"
	rel="stylesheet" type="text/css">
<link href='https://fonts.googleapis.com/css?family=Kaushan+Script'
	rel='stylesheet' type='text/css'>
<link
	href='https://fonts.googleapis.com/css?family=Droid+Serif:400,700,400italic,700italic'
	rel='stylesheet' type='text/css'>
<link
	href='https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700'
	rel='stylesheet' type='text/css'>

<!-- Custom styles for this template -->
<link href="css/agency.min.css" rel="stylesheet">

</head>

<body id="page-top">

	<!-- Navigation -->
	<nav class="navbar navbar-expand-lg navbar-dark fixed-top" id="mainNav">
		<div class="container">
			<a class="navbar-brand js-scroll-trigger" href="#page-top">Just
				Meet</a>
			<button class="navbar-toggler navbar-toggler-right" type="button"
				data-toggle="collapse" data-target="#navbarResponsive"
				aria-controls="navbarResponsive" aria-expanded="false"
				aria-label="Toggle navigation">
				Menu <i class="fas fa-bars"></i>
			</button>
			<div class="collapse navbar-collapse" id="navbarResponsive">
				<ul class="navbar-nav text-uppercase ml-auto">
					<li class="nav-item"><a class="nav-link js-scroll-trigger"
						href="newEvent">Scopri </a></li>
					<li class="nav-item"><a class="nav-link js-scroll-trigger"
						href="#portfolio">Agisci</a></li>
					<li class="nav-item"><a class="nav-link js-scroll-trigger"
						href="#about">About</a></li>
					<li class="nav-item"><a class="nav-link js-scroll-trigger"
						href="#team">Team</a></li>
					<li class="nav-item"><a class="nav-link js-scroll-trigger"
						href="#contact">Contact</a></li>
					<li class="nav-item"><a class="nav-link js-scroll-trigger"
						href="login.jsp">Logout</a></li>
				</ul>
			</div>
		</div>
	</nav>

	<!-- Header -->
	<header class="masthead">
		<div class="container">
			<div class="intro-text">
				<div class="intro-lead-in">Welcome Back!</div>
				<div class="intro-heading text-uppercase">It's Nice To See You
					Again!</div>
				<a class="btn btn-primary btn-xl text-uppercase js-scroll-trigger"
					href="#services">Start</a>
			</div>
		</div>
	</header>

	<!-- Services -->
	<section class="page-section" id="services">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 text-center">
					<h2 class="section-heading text-uppercase">Dimmi di più</h2>
					<h3 class="section-subheading text-muted">potrebbe piacermi ;)</h3>
				</div>
			</div>
			<div class="row text-center">
				<div class="col-md-4">
					<span class="fa-stack fa-4x"> <i
						class="fas fa-circle fa-stack-2x text-primary"></i> <i
						class="fas fa-paper-plane fa-stack-1x fa-inverse"></i>

					</span>
					<h4 class="service-heading">INVENTA</h4>
					<p class="text-muted">Lorem ipsum dolor sit amet, consectetur
						adipisicing elit. Minima maxime quam architecto quo inventore
						harum ex magni, dicta impedit.</p>
				</div>
				<div class="col-md-4">
					<span class="fa-stack fa-4x"> <i
						class="fas fa-circle fa-stack-2x text-primary"></i> <i
						class="fas fa-laptop fa-stack-1x fa-inverse"></i>
					</span>
					<h4 class="service-heading">ORGANIZZA</h4>
					<p class="text-muted">Lorem ipsum dolor sit amet, consectetur
						adipisicing elit. Minima maxime quam architecto quo inventore
						harum ex magni, dicta impedit.</p>
				</div>
				<div class="col-md-4">
					<span class="fa-stack fa-4x"> <i
						class="fas fa-circle fa-stack-2x text-primary"></i> <i
						class="fas fa-lock fa-stack-1x fa-inverse"></i>
					</span>
					<h4 class="service-heading">CONTROLLA</h4>
					<p class="text-muted">Lorem ipsum dolor sit amet, consectetur
						adipisicing elit. Minima maxime quam architecto quo inventore
						harum ex magni, dicta impedit.</p>
				</div>
			</div>
		</div>
	</section>

	<!-- Portfolio Grid -->
	<section class="bg-light page-section" id="portfolio">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 text-center">
					<h2 class="section-heading text-uppercase">Inizia Subito</h2>
					<h3 class="section-subheading text-muted">Un secondo in più
						potrebbe essere di troppo.</h3>
				</div>
			</div>
			<div class="row">
				<div class="col-md-4 col-sm-6 portfolio-item">
					<a class="portfolio-link" data-toggle="modal" href="/newEvent.jsp">
						<div class="portfolio-hover">
							<div class="portfolio-hover-content">
								<i class="fas fa-plus fa-3x"></i>
							</div>
						</div> <img class="img-fluid" src="img/portfolio/create2.jpg" alt="">
					</a>
					<div class="portfolio-caption">
						<h4>Crea Evento</h4>
						<p class="text-muted">Stupisci te stesso</p>
					</div>
				</div>
				<div class="col-md-4 col-sm-6 portfolio-item">
					<a class="portfolio-link" data-toggle="modal"
						href="#portfolioModal2">
						<div class="portfolio-hover">
							<div class="portfolio-hover-content">
								<i class="fas fa-search fa-3x"></i>
							</div>
						</div> <img class="img-fluid" src="img/portfolio/explore.jpg" alt="">
					</a>
					<div class="portfolio-caption">
						<h4>Esplora</h4>
						<p class="text-muted">E non fermarti</p>
					</div>
				</div>
				<div class="col-md-4 col-sm-6 portfolio-item">
					<a class="portfolio-link" data-toggle="modal"
						href="#portfolioModal3">
						<div class="portfolio-hover">
							<div class="portfolio-hover-content">
								<i class="fas fa-heart fa-3x"></i>
							</div>
						</div> <img class="img-fluid" src="img/portfolio/jessilane.jpg" alt="">
					</a>
					<div class="portfolio-caption">
						<h4>Gestisci eventi</h4>
						<p class="text-muted">Deal with it</p>
					</div>
				</div>
				<div class="col-md-4 col-sm-6 portfolio-item">
					<a class="portfolio-link" data-toggle="modal"
						href="#portfolioModal4">
						<div class="portfolio-hover">
							<div class="portfolio-hover-content">
								<i class="fas fa-bookmark fa-3x"></i>
							</div>
						</div> <img class="img-fluid" src="img/portfolio/adesioni.jpg" alt="">
					</a>
					<div class="portfolio-caption">
						<h4>Adesioni</h4>
						<p class="text-muted">Jump in</p>
					</div>
				</div>

			</div>
		</div>
	</section>

	<!-- About -->
	<section class="page-section" id="about">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 text-center">
					<h2 class="section-heading text-uppercase">About</h2>
					<h3 class="section-subheading text-muted">Lorem ipsum dolor
						sit amet consectetur.</h3>
				</div>
			</div>
			<div class="row">
				<div class="col-lg-12">
					<ul class="timeline">
						<li>
							<div class="timeline-image">
								<img class="rounded-circle img-fluid" src="img/about/1.jpg"
									alt="">
							</div>
							<div class="timeline-panel">
								<div class="timeline-heading">
									<h4>2009-2011</h4>
									<h4 class="subheading">Our Humble Beginnings</h4>
								</div>
								<div class="timeline-body">
									<p class="text-muted">Lorem ipsum dolor sit amet,
										consectetur adipisicing elit. Sunt ut voluptatum eius
										sapiente, totam reiciendis temporibus qui quibusdam,
										recusandae sit vero unde, sed, incidunt et ea quo dolore
										laudantium consectetur!</p>
								</div>
							</div>
						</li>
						<li class="timeline-inverted">
							<div class="timeline-image">
								<img class="rounded-circle img-fluid" src="img/about/2.jpg"
									alt="">
							</div>
							<div class="timeline-panel">
								<div class="timeline-heading">
									<h4>March 2011</h4>
									<h4 class="subheading">An Agency is Born</h4>
								</div>
								<div class="timeline-body">
									<p class="text-muted">Lorem ipsum dolor sit amet,
										consectetur adipisicing elit. Sunt ut voluptatum eius
										sapiente, totam reiciendis temporibus qui quibusdam,
										recusandae sit vero unde, sed, incidunt et ea quo dolore
										laudantium consectetur!</p>
								</div>
							</div>
						</li>
						<li>
							<div class="timeline-image">
								<img class="rounded-circle img-fluid" src="img/about/3.jpg"
									alt="">
							</div>
							<div class="timeline-panel">
								<div class="timeline-heading">
									<h4>December 2012</h4>
									<h4 class="subheading">Transition to Full Service</h4>
								</div>
								<div class="timeline-body">
									<p class="text-muted">Lorem ipsum dolor sit amet,
										consectetur adipisicing elit. Sunt ut voluptatum eius
										sapiente, totam reiciendis temporibus qui quibusdam,
										recusandae sit vero unde, sed, incidunt et ea quo dolore
										laudantium consectetur!</p>
								</div>
							</div>
						</li>
						<li class="timeline-inverted">
							<div class="timeline-image">
								<img class="rounded-circle img-fluid" src="img/about/4.jpg"
									alt="">
							</div>
							<div class="timeline-panel">
								<div class="timeline-heading">
									<h4>July 2014</h4>
									<h4 class="subheading">Phase Two Expansion</h4>
								</div>
								<div class="timeline-body">
									<p class="text-muted">Lorem ipsum dolor sit amet,
										consectetur adipisicing elit. Sunt ut voluptatum eius
										sapiente, totam reiciendis temporibus qui quibusdam,
										recusandae sit vero unde, sed, incidunt et ea quo dolore
										laudantium consectetur!</p>
								</div>
							</div>
						</li>
						<li class="timeline-inverted">
							<div class="timeline-image">
								<h4>
									Be Part <br>Of Our <br>Story!
								</h4>
							</div>
						</li>
					</ul>
				</div>
			</div>
		</div>
	</section>

	<!-- Team -->
	<section class="bg-light page-section" id="team">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 text-center">
					<h2 class="section-heading text-uppercase">Our Amazing Team</h2>
					<h3 class="section-subheading text-muted">Lorem ipsum dolor
						sit amet consectetur.</h3>
				</div>
			</div>
			<div class="row">
				<div class="col-sm-4">
					<div class="team-member">
						<img class="mx-auto rounded-circle" src="img/team/1.jpg" alt="">
						<h4>Kay Garland</h4>
						<p class="text-muted">Lead Designer</p>
						<ul class="list-inline social-buttons">
							<li class="list-inline-item"><a href="#"> <i
									class="fab fa-twitter"></i>
							</a></li>
							<li class="list-inline-item"><a href="#"> <i
									class="fab fa-facebook-f"></i>
							</a></li>
							<li class="list-inline-item"><a href="#"> <i
									class="fab fa-linkedin-in"></i>
							</a></li>
						</ul>
					</div>
				</div>
				<div class="col-sm-4">
					<div class="team-member">
						<img class="mx-auto rounded-circle" src="img/team/2.jpg" alt="">
						<h4>Larry Parker</h4>
						<p class="text-muted">Lead Marketer</p>
						<ul class="list-inline social-buttons">
							<li class="list-inline-item"><a href="#"> <i
									class="fab fa-twitter"></i>
							</a></li>
							<li class="list-inline-item"><a href="#"> <i
									class="fab fa-facebook-f"></i>
							</a></li>
							<li class="list-inline-item"><a href="#"> <i
									class="fab fa-linkedin-in"></i>
							</a></li>
						</ul>
					</div>
				</div>
				<div class="col-sm-4">
					<div class="team-member">
						<img class="mx-auto rounded-circle" src="img/team/3.jpg" alt="">
						<h4>Diana Pertersen</h4>
						<p class="text-muted">Lead Developer</p>
						<ul class="list-inline social-buttons">
							<li class="list-inline-item"><a href="#"> <i
									class="fab fa-twitter"></i>
							</a></li>
							<li class="list-inline-item"><a href="#"> <i
									class="fab fa-facebook-f"></i>
							</a></li>
							<li class="list-inline-item"><a href="#"> <i
									class="fab fa-linkedin-in"></i>
							</a></li>
						</ul>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-lg-8 mx-auto text-center">
					<p class="large text-muted">Lorem ipsum dolor sit amet,
						consectetur adipisicing elit. Aut eaque, laboriosam veritatis,
						quos non quis ad perspiciatis, totam corporis ea, alias ut unde.</p>

				</div>
			</div>
		</div>
	</section>

	<!-- Clients -->
	 <div class="form-group">
        <form:form method="POST" modelAttribute="searchForm" class="form-signin">
    <h2 class="form-signin"> Cerca evento</h2>
 <label>Categoria</label> <spring:bind path="categoria">
                <div class="form-group ${status.error ? 'has-error' : ''}">
                    <form:select type="integer" path="categoria" class="form-control" placeholder="Categoria"
                                autofocus="true">
                                <optgroup label="SPORT">
                         <option value="CALCIO">CALCIO</option>
                         <option value="CALCETTO">CALCETTO</option>
                         <option value="PALLAVOLO">PALLAVOLO</option>
                         <option value="TENNIS">TENNIS</option>
                         <option value="BEACH_VOLLEY">BEACH VOLLEY</option>
                                </optgroup>        
                       <optgroup label="SERVIZI">
                         <option value="RIPETIZIONI">RIPETIZIONI</option>
                         <option value="GIOCHI_DA_TAVOLO">GIOCHI DA TAVOLO</option>
                       </optgroup>
                                </form:select>
                                </div>
                                </spring:bind>
      <label>Data Evento</label> <spring:bind path="dataEvento">
                <div class="form-group ${status.error ? 'has-error' : ''}">
                    <form:input type="date" path="dataEvento" class="form-control" placeholder="DataEvento"
                                autofocus="true"></form:input>
                                </div>
                                </spring:bind>
     
            <button class="btn btn-lg btn-primary btn-block" type="submit">Cerca</button>
  </form:form>
  </div>

	<!-- Contact -->
	<section class="page-section" id="contact">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 text-center">
					<h2 class="section-heading text-uppercase">Contact Us</h2>
					<h3 class="section-subheading text-muted">Lorem ipsum dolor
						sit amet consectetur.</h3>
				</div>
			</div>
			<div class="row">
				<div class="col-lg-12">
					<form id="contactForm" name="sentMessage" novalidate="novalidate">
						<div class="row">
							<div class="col-md-6">
								<div class="form-group">
									<input class="form-control" id="name" type="text"
										placeholder="Your Name *" required="required"
										data-validation-required-message="Please enter your name.">
									<p class="help-block text-danger"></p>
								</div>
								<div class="form-group">
									<input class="form-control" id="email" type="email"
										placeholder="Your Email *" required="required"
										data-validation-required-message="Please enter your email address.">
									<p class="help-block text-danger"></p>
								</div>
								<div class="form-group">
									<input class="form-control" id="phone" type="tel"
										placeholder="Your Phone *" required="required"
										data-validation-required-message="Please enter your phone number.">
									<p class="help-block text-danger"></p>
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group">
									<textarea class="form-control" id="message"
										placeholder="Your Message *" required="required"
										data-validation-required-message="Please enter a message."></textarea>
									<p class="help-block text-danger"></p>
								</div>
							</div>
							<div class="clearfix"></div>
							<div class="col-lg-12 text-center">
								<div id="success"></div>
								<button id="sendMessageButton"
									class="btn btn-primary btn-xl text-uppercase" type="submit">Send
									Message</button>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</section>

	<!-- Footer -->
	<footer class="footer">
		<div class="container">
			<div class="row align-items-center">
				<div class="col-md-4">
					<span class="copyright">Copyright &copy; Your Website 2019</span>
				</div>
				<div class="col-md-4">
					<ul class="list-inline social-buttons">
						<li class="list-inline-item"><a href="#"> <i
								class="fab fa-twitter"></i>
						</a></li>
						<li class="list-inline-item"><a href="#"> <i
								class="fab fa-facebook-f"></i>
						</a></li>
						<li class="list-inline-item"><a href="#"> <i
								class="fab fa-linkedin-in"></i>
						</a></li>
					</ul>
				</div>
				<div class="col-md-4">
					<ul class="list-inline quicklinks">
						<li class="list-inline-item"><a href="#">Privacy Policy</a></li>
						<li class="list-inline-item"><a href="#">Terms of Use</a></li>
					</ul>
				</div>
			</div>
		</div>
	</footer>

	<!-- Portfolio Modals -->

	<!-- Modal 1 -->
	<div class="portfolio-modal modal fade" id="portfolioModal1"
		tabindex="-1" role="dialog" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="close-modal" data-dismiss="modal">
					<div class="lr">
						<div class="rl"></div>
					</div>
				</div>
				<div class="container">
					<div class="row">
						<div class="col-lg-8 mx-auto">
							<div class="modal-body">
								<!-- Project Details Go Here -->
								<h2 class="text-uppercase">Project Name</h2>
								<p class="item-intro text-muted">Lorem ipsum dolor sit amet
									consectetur.</p>
								<img class="img-fluid d-block mx-auto"
									src="img/portfolio/01-full.jpg" alt="">
								<p>Use this area to describe your project. Lorem ipsum dolor
									sit amet, consectetur adipisicing elit. Est blanditiis dolorem
									culpa incidunt minus dignissimos deserunt repellat aperiam
									quasi sunt officia expedita beatae cupiditate, maiores
									repudiandae, nostrum, reiciendis facere nemo!</p>
								<ul class="list-inline">
									<li>Date: January 2017</li>
									<li>Client: Threads</li>
									<li>Category: Illustration</li>
								</ul>
								<button class="btn btn-primary" data-dismiss="modal"
									type="button">
									<i class="fas fa-times"></i> Close Project
								</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- Modal 2 -->
	<div class="portfolio-modal modal fade" id="portfolioModal2"
		tabindex="-1" role="dialog" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="close-modal" data-dismiss="modal">
					<div class="lr">
						<div class="rl"></div>
					</div>
				</div>
				<div class="container">
					<div class="row">
						<div class="col-lg-8 mx-auto">
							<div class="modal-body">
								<!-- Project Details Go Here -->
								<h2 class="text-uppercase">Project Name</h2>


								<button class="btn btn-primary" data-dismiss="modal"
									type="button">
									<i class="fas fa-times"></i> Close Project
								</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- Modal 3 -->
	<div class="portfolio-modal modal fade" id="portfolioModal3"
		tabindex="-1" role="dialog" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="close-modal" data-dismiss="modal">
					<div class="lr">
						<div class="rl"></div>
					</div>
				</div>
				<div class="container">
					<div class="row">
						<div class="col-lg-8 mx-auto">
							<div class="modal-body">
								<!-- Project Details Go Here -->
								<h2 class="text-uppercase">Project Name</h2>
								<p class="item-intro text-muted">Lorem ipsum dolor sit amet
									consectetur.</p>
								<img class="img-fluid d-block mx-auto"
									src="img/portfolio/03-full.jpg" alt="">
								<p>Use this area to describe your project. Lorem ipsum dolor
									sit amet, consectetur adipisicing elit. Est blanditiis dolorem
									culpa incidunt minus dignissimos deserunt repellat aperiam
									quasi sunt officia expedita beatae cupiditate, maiores
									repudiandae, nostrum, reiciendis facere nemo!</p>
								<ul class="list-inline">
									<li>Date: January 2017</li>
									<li>Client: Finish</li>
									<li>Category: Identity</li>
								</ul>
								<button class="btn btn-primary" data-dismiss="modal"
									type="button">
									<i class="fas fa-times"></i> Close Project
								</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- Modal 4 -->
	<div class="portfolio-modal modal fade" id="portfolioModal4"
		tabindex="-1" role="dialog" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="close-modal" data-dismiss="modal">
					<div class="lr">
						<div class="rl"></div>
					</div>
				</div>
				<div class="container">
					<div class="row">
						<div class="col-lg-8 mx-auto">
							<div class="modal-body">
								<!-- Project Details Go Here -->
								<h2 class="text-uppercase">Project Name</h2>
								<p class="item-intro text-muted">Lorem ipsum dolor sit amet
									consectetur.</p>
								<img class="img-fluid d-block mx-auto"
									src="img/portfolio/04-full.jpg" alt="">
								<p>Use this area to describe your project. Lorem ipsum dolor
									sit amet, consectetur adipisicing elit. Est blanditiis dolorem
									culpa incidunt minus dignissimos deserunt repellat aperiam
									quasi sunt officia expedita beatae cupiditate, maiores
									repudiandae, nostrum, reiciendis facere nemo!</p>
								<ul class="list-inline">
									<li>Date: January 2017</li>
									<li>Client: Lines</li>
									<li>Category: Branding</li>
								</ul>
								<button class="btn btn-primary" data-dismiss="modal"
									type="button">
									<i class="fas fa-times"></i> Close Project
								</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- Modal 5 -->
	<div class="portfolio-modal modal fade" id="portfolioModal5"
		tabindex="-1" role="dialog" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="close-modal" data-dismiss="modal">
					<div class="lr">
						<div class="rl"></div>
					</div>
				</div>
				<div class="container">
					<div class="row">
						<div class="col-lg-8 mx-auto">
							<div class="modal-body">
								<!-- Project Details Go Here -->
								<h2 class="text-uppercase">Project Name</h2>
								<p class="item-intro text-muted">Lorem ipsum dolor sit amet
									consectetur.</p>
								<img class="img-fluid d-block mx-auto"
									src="img/portfolio/05-full.jpg" alt="">
								<p>Use this area to describe your project. Lorem ipsum dolor
									sit amet, consectetur adipisicing elit. Est blanditiis dolorem
									culpa incidunt minus dignissimos deserunt repellat aperiam
									quasi sunt officia expedita beatae cupiditate, maiores
									repudiandae, nostrum, reiciendis facere nemo!</p>
								<ul class="list-inline">
									<li>Date: January 2017</li>
									<li>Client: Southwest</li>
									<li>Category: Website Design</li>
								</ul>
								<button class="btn btn-primary" data-dismiss="modal"
									type="button">
									<i class="fas fa-times"></i> Close Project
								</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- Modal 6 -->
	<div class="portfolio-modal modal fade" id="portfolioModal6"
		tabindex="-1" role="dialog" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="close-modal" data-dismiss="modal">
					<div class="lr">
						<div class="rl"></div>
					</div>
				</div>
				<div class="container">
					<div class="row">
						<div class="col-lg-8 mx-auto">
							<div class="modal-body">
								<!-- Project Details Go Here -->
								<h2 class="text-uppercase">Project Name</h2>
								<p class="item-intro text-muted">Lorem ipsum dolor sit amet
									consectetur.</p>
								<img class="img-fluid d-block mx-auto"
									src="img/portfolio/06-full.jpg" alt="">
								<p>Use this area to describe your project. Lorem ipsum dolor
									sit amet, consectetur adipisicing elit. Est blanditiis dolorem
									culpa incidunt minus dignissimos deserunt repellat aperiam
									quasi sunt officia expedita beatae cupiditate, maiores
									repudiandae, nostrum, reiciendis facere nemo!</p>
								<ul class="list-inline">
									<li>Date: January 2017</li>
									<li>Client: Window</li>
									<li>Category: Photography</li>
								</ul>
								<button class="btn btn-primary" data-dismiss="modal"
									type="button">
									<i class="fas fa-times"></i> Close Project
								</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- Bootstrap core JavaScript -->
	<script src="vendor/jquery/jquery.min.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

	<!-- Plugin JavaScript -->
	<script src="vendor/jquery-easing/jquery.easing.min.js"></script>

	<!-- Contact form JavaScript -->
	<script src="js/jqBootstrapValidation.js"></script>
	<script src="js/contact_me.js"></script>

	<!-- Custom scripts for this template -->
	<script src="js/agency.min.js"></script>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
	<script src="${contextPath}/resources/js/bootstrap.min.js"></script>

</body>

</html>

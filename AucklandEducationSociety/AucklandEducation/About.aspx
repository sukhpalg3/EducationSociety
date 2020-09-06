<%@ Page Title="" Language="C#" MasterPageFile="~/Home.master" AutoEventWireup="true" CodeFile="About.aspx.cs" Inherits="Bamboli" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <!-- header -->
        <header>
            <nav style="background-color:gray;background-image:url(Image/header_pre.png)" class="navbar navbar-expand-lg navbar-light bg-gradient-secondary pt-3">
               <h1><a class="navbar-brand" href="Home.aspx">Auckland
							<span>Education Society</span>
						</a></h1>
               
                <button class="navbar-toggler ml-md-auto" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                    aria-expanded="false" aria-label="Toggle navigation">
                      <span class="menu">Menu</span>
                </button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav ml-auto">
								<li class="nav-item ">
									<a class="nav-link" href="Home.aspx">Home
									
									</a>
								</li>
                        <li class="nav-item active">
									<a class="nav-link" href="About.aspx">About Us</a>
                            	<span class="sr-only">(current)</span>
								</li>
                        	<li class="nav-item dropdown">
									<a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true"
									    aria-expanded="false">
										Gallery
									</a>
									<div class="dropdown-menu" aria-labelledby="navbarDropdown">
										<a class="dropdown-item" href="Gallery.aspx">Images</a>
										
									</div>
								</li>
							
								<li class="nav-item dropdown">
									<a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true"
									    aria-expanded="false">
										Services
									</a>
									<div class="dropdown-menu" aria-labelledby="navbarDropdown">
										<a class="dropdown-item" href="FreeEducation.aspx">Free Education</a>
										
										<a class="dropdown-item" href="Sports.aspx">Sports</a>
										
										<a class="dropdown-item" href="Yoga.aspx">Yoga</a>
										
									</div>
								</li>
								<li class="nav-item">
									<a class="nav-link" href="Contact.aspx">Contact Us</a>
								</li>
                      
					</ul>
				</div>
			</nav>
        </header>
        <!-- //header -->
      <!-- banner -->
    <div class="inner-banner">
        </div>
	<ol class="breadcrumb">
        <li class="breadcrumb-item">
            <a href="Home.aspx">Home</a>
        </li>
        <li class="breadcrumb-item active">About</li>
    </ol>
	 <!-- //banner-text -->
    <section class="banner_bottom1 py-md-5">
		<div class="container py-4 mt-2">
			<h3 class="heading-agileinfo text-center">About  <span>Us</span></h3>
			<div class="inner_sec_info_wthree_agile mt-md-5 pt-3">
				<div class="row help_full">
					<div class="col-lg-6 banner_bottom_grid help">
						<img src="Image/abt.jpg" alt=" " class="img-fluid">
					</div>
					<div class="col-lg-6 banner_bottom_left1">
						<h4>Auckland Education Society</h4>
						<p>Auckland Education society,NZ is for charity of poor children. We provide free mid-day meal and books and free education to poor students and arrange free medicals checkup 24x7. We are running many primary schools and high schools in Auckland and Willington. Giving best education to deserving students. 
We worked with some other societies, like ITC industrial, JSP High School for education of poor girls. 
We also work with IDP for helping poorest people giving them free clothes and food also, we aware people about cleaning their house and city so that they can live healthy. 
We also encourage our students in sports put them to participate in state level championships</p>
						</div>
				</div>
			</div>
		</div>
	</section>
    <section class="banner_bottom1 py-md-5">
		<div class="container py-4 mt-2">
			<h3 class="heading-agileinfo text-center">Our  <span>Contribution</span></h3>
			<div class="inner_sec_info_wthree_agile mt-md-5 pt-3">
				<div class="row help_full">
					<div class="col-lg-12 banner_bottom_grid help">
						<div class="col-md-12 w3l_choose_bottom1 mt-3 pt-md-4">
							<div class="choose_bottom_top">
                                <i class="fa fa-school mb-2"></i>
                                <h5 class="card-title text-uppercase my-3">DGP High School</h5>
                                <p class="card-text">Principal:B. R. Smith
                                </p>
                            </div>
						</div>
                        <div class="col-md-12 w3l_choose_bottom1 mt-3 pt-md-4">
							<div class="choose_bottom_top">
                                <i class="fa fa-school mb-2"></i>
                                <h5 class="card-title text-uppercase my-3">JSP High School</h5>
                                <p class="card-text">Principal:Stanley R Collins
                                </p>
                            </div>
						</div>
                        <div class="col-md-12 w3l_choose_bottom1 mt-3 pt-md-4">
							<div class="choose_bottom_top">
                                <i class="fa fa-school mb-2"></i>
                                <h5 class="card-title text-uppercase my-3">MR Internation School</h5>
                                <p class="card-text">Principal:Betty C Marshall
                                </p>
                            </div>
						</div>
						<div class="col-md-12 w3l_choose_bottom2">
							<div class="choose_bottom_top">
                                <i class="fas fa-university mb-2"></i>
                                <h5 class="card-title text-uppercase my-3">IMC Primary School</h5>
                                <p class="card-text">Principal:Jeremiah B Westerman
                                </p>
                            </div>
						</div>
						
					</div>
					
				</div>
			</div>
		</div>
	</section>
    	
</asp:Content>


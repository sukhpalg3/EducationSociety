<%--<%@ Page Title="" Language="C#" MasterPageFile="~/Home.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>--%>

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
								<li class="nav-item active">
									<a class="nav-link" href="Home.aspx">Home
										<span class="sr-only">(current)</span>
									</a>
								</li>
                        <li class="nav-item">
									<a class="nav-link" href="About.aspx">About Us</a>
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
 
    <asp:Repeater ID="rptrbanner" runat="server">
        <HeaderTemplate>
             <div id="demo1" style="height:500px !important;">
        </HeaderTemplate>
        <ItemTemplate>
             <div class="slide">
        <img src="Image/Banner/<%# Eval("BannerSize") %><%# Eval("BannerName") %>" />
       
     </div>
        </ItemTemplate>
        <FooterTemplate>
            </div>
        </FooterTemplate>
    </asp:Repeater>

    	<section class="banner_form py-5">
		<div class="container py-lg-3">
			<div class="row ban_form">
                <div class="col-lg-4 ">
                    <div style="background-color: black;width: 350px;height: 400px;padding: 15px;">
					<img src="Image/edu.jpg" width="350" height="400" />
                       </div>
				</div>
				<div class="col-lg-8 bg-white fom-left">
					<div class="categories_sub cats1" style="padding:25px;">
						<h2 class="heading-agileinfo">Welcome To <span>Auckland Education Society</span></h2>
                        <br />
						<p>Auckland Education society,NZ is for charity of poor children. We provide free mid-day meal and books and free education to poor students and arrange free medicals checkup 24x7. We are running many primary schools and high schools in Auckland and Willington. Giving best education to deserving students. 
We worked with some other societies, like ITC industrial, JSP High School for education of poor girls. 
We also work with IDP for helping poorest people giving them free clothes and food also, we aware people about cleaning their house and city so that they can live healthy. 
We also encourage our students in sports put them to participate in state level championships</p>
                        <br />

                       <a href="About.aspx" class="btn btn-primary mt-3">Read More <i class="fa fa-chevron-right"></i></a>
					</div>
				</div>
				
			</div>
		</div>
	</section>
     <!-- /services -->
    <section class="banner-bottom-wthree py-lg-5 py-md-5 py-3">
        <div class="container">
            <div class="inner-sec-w3ls py-lg-5 py-3">
               <h3 class="heading-agileinfo text-center">What <span> We do</span></h3>
                <div class="row middle-grids mt-md-5 pt-4">
                    <div class="col-lg-4 about-in-w3ls middle-grid-info text-center">
                        <div class="card">
                            <div class="card-body">
                                <i class="fas fa-graduation-cap mb-2"></i>
                                <h5 class="card-title text-uppercase my-3">
                                  Free Education</h5>
                                <p class="card-text"> 
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 about-in-w3ls middle-grid-info active text-center">
                        <div class="card">
                            <div class="card-body">
                                <i class="fas fa-volleyball-ball mb-2"></i>
                                <h5 class="card-title text-uppercase my-3">Sports</h5>
                                <p class="card-text">
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 about-in-w3ls middle-grid-info text-center">
                        <div class="card">
                            <div class="card-body">
                                <i class="fas fa-walking mb-2"></i>
                                <h5 class="card-title text-uppercase my-3">Yoga</h5>
                                <p class="card-text">
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- //services -->
     <!-- /advantage -->
    <section class="banner-bottom py-lg-5 py-md-5 py-3">
        <div class="container">
            <div class="inner-sec py-lg-5 py-3">
                 <h3 class="heading-agileinfo text-center">Our <span> Quotes</span></h3>
               <div class="row middle-grids mt-lg-5 pt-5">
                   <div class="col-lg-6 advantage-grid-info1">
                        <div class="advantage_left1 text-center">
                            <img src="Image/Trainers/dummy.jpg" class="img-fluid" alt="">
                        </div>
                    </div> 
					 <div class="col-lg-6 advantage-grid-info pt-md-5">
                        <div class="advantage_left">
							
                            <h3>President's Message</h3>
							<p class="mt-2"> A never ending quest for excellence coupled with total commitment to professionalism will be hall mark of our education system. Hard work and enthusiasm are the basic characteristics of the school.</p>
                            <h4 class="mb-2">-Betty C Marshall</h4>
                        </div>
                    </div>
                </div>
                  <div class="row middle-grids mt-lg-5 pt-5">
                  
					 <div class="col-lg-6 advantage-grid-info pt-md-5">
                        <div class="advantage_left">
							
                            <h3>Vice-President's Message</h3>
							<p class="mt-2"> The primary duty of a school is to give direction to society and to channelize the energies of youth for productive and creative purposes. This has to be accomplished through education. Since every child is a fountainhead of potential, we at our strive to produce leaders who will take on responsibility and have the courage to be instruments of change.</p>
                        <h4 class="mb-2">-Stanley R Collins</h4>
                            </div>
                    </div>
                       <div class="col-lg-6 advantage-grid-info1">
                        <div class="advantage_left1 text-center">
                            <img src="Image/Trainers/dummy.jpg" class="img-fluid" alt="">
                        </div>
                    </div> 
                </div>
                  <div class="row middle-grids mt-lg-5 pt-5">
                   <div class="col-lg-6 advantage-grid-info1">
                        <div class="advantage_left1 text-center">
                            <img src="Image/Trainers/dummy.jpg" class="img-fluid" alt="">
                        </div>
                    </div> 
					 <div class="col-lg-6 advantage-grid-info pt-md-5">
                        <div class="advantage_left">
							
                            <h3>Principal's Message</h3>
							<p class="mt-2">Our philosophy is to help students in developing the knowledge, understanding, attitude and skills, necessary to participate actively with responsibility in this challenging & Changing world. </p>
                         <h4 class="mb-2">-David C Westerman</h4>
                        </div>
                    </div>
                </div>
			</div>
        </div>
    </section>
    <!-- //advantage -->
    <asp:Repeater ID="rptrnews" runat="server">
        <HeaderTemplate>
        
            <section class="news py-5" style="background:url(Image/news-newspapers-ss-1920_b0ioko.jpg)">
		<div class="container py-xl-5 py-lg-3">
			<h3 class="heading-agileinfo text-white text-center">Latest <span> News</span></h3>
			<div class="owl-carousel owl-theme mt-md-5 pt-4">
        </HeaderTemplate>
        <ItemTemplate>
            <div class="item">
					<div class="feedback-info bg-white py-5 px-4">
						<h4 class="mb-2"><%# Eval("NewsHeadline") %>
						</h4>
						<p><i class="fa fa-arrow-right"></i> <%# Eval("News") %></p>
                        <span><i class="fa fa-calendar"></i> <%# Eval("NewsDate") %></span>
					
					</div>
				</div>
			
        </ItemTemplate>
        <FooterTemplate>
            </div>
		</div>
	</section>
        </FooterTemplate>
    </asp:Repeater>
    <!-- stats -->
	<section class="stats py-5">
		<div class="container py-md-5">
			<h3 class="heading-agileinfo text-center">Our  <span>Achievements</span></h3>
			<span class="w3-line black"></span>	
			<div class="row inner_w3l_agile_grids-1 pt-md-5 mt-4">
				<div class="col-lg-3 col-sm-6 w3layouts_stats_left w3_counter_grid">
					<i class="fas fa-trophy mb-2"></i>
					<p class="counter">2005</p>
					<h3>Year of Foundation</h3>
				</div>
				<div class="col-lg-3 col-sm-6 w3layouts_stats_left w3_counter_grid1">
					<i class="fas fa-graduation-cap mb-2"></i>
					<p class="counter">755</p>
					<h3>Paasout</h3>
				</div>
				<div class="col-lg-3 col-sm-6 w3layouts_stats_left w3_counter_grid2">
					<i class="fas fa-user mb-2"></i>
					<p class="counter">55</p>
					<h3>Certified Staff</h3>
				</div>
				<div class="col-lg-3 col-sm-6 w3layouts_stats_left w3_counter_grid2">
					<i class="fas fa-users mb-2"></i>
					<p class="counter">1870</p>
					<h3>Students</h3>
				</div>
			</div>
		</div>	
	</section>
<!-- //stats -->
</asp:Content>


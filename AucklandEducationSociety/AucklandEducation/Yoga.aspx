<%@ Page Title="" Language="C#" MasterPageFile="~/Home.master" AutoEventWireup="true" CodeFile="Yoga.aspx.cs" Inherits="Yoga" %>

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
                        <li class="nav-item ">
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
							
								<li class="nav-item dropdown active">
									<a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true"
									    aria-expanded="false">
										Services
                                        <span class="sr-only">(current)</span>
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
     <div class="inner-banner">
        </div>
	<ol class="breadcrumb">
        <li class="breadcrumb-item">
            <a href="Home.aspx">Home</a>
        </li>
        <li class="breadcrumb-item active">Yoga</li>
    </ol>
	 <!-- //banner-text -->
    <section class="banner_bottom1 py-md-5">
		<div class="container py-4 mt-2">
			<h3 class="heading-agileinfo text-center"><span> Yoga</span></h3>
			<div class="inner_sec_info_wthree_agile mt-md-5 pt-3">
				<div class="row help_full">
					<div class="col-lg-6 banner_bottom_grid help">
						<img src="Image/Service/Power_Yoga.png" alt=" " class="img-fluid">
					</div>
					<div class="col-lg-6 banner_bottom_left1">
						
						<p>
                            The Auckland Education Society Yoga / Meditation Programs for Children consist of an introduction to yoga practices, including a few simple yet life-enhancing asanas and kriyas. The program content is presented through fun games and play, so that children experience a sense of belonging and unity with life.<br /> Participants of these programs often experience enhanced concentration and memory, more focus, and improved mind-body coordination. The practices the children learn help prevent obesity, asthma, sinusitis and other chronic ailments.
						</p>
						</div>
				</div>
			</div>
		</div>
	</section>
</asp:Content>


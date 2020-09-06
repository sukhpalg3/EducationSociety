<%@ Page Title="" Language="C#" MasterPageFile="~/Home.master" AutoEventWireup="true" CodeFile="Gallery.aspx.cs" Inherits="Gallery" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
      <!-- header -->
<script src="js/jquery-2.2.3.min.js"></script>
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
                        	<li class="nav-item dropdown active">
									<a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true"
									    aria-expanded="false">
										Gallery
                                        <span class="sr-only">(current)</span>
									</a>
									<div class="dropdown-menu" aria-labelledby="navbarDropdown">
										<a class="dropdown-item" href="Gallery.aspx">Images</a>
										
									</div>
								</li>
							
								<li class="nav-item dropdown ">
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
    <div class="inner-banner">

    </div>
    <ol class="breadcrumb">
        <li class="breadcrumb-item">
            <a href="Home.aspx">Home</a>
        </li>
        <li class="breadcrumb-item active">Gallery</li>
    </ol>
    <asp:Repeater ID="rptrimg" runat="server">
        <HeaderTemplate>
            <div class="agileits-services py-sm-5">
                <div class="container py-lg-5 pt-3 pb-5">

                    <h2 class="heading-agileinfo text-center  mb-4">Our <span>Gallery</span></h2>
                    <div class="w3ls_gallery_grids pt-md-5">
                        <div class="row agileits_w3layouts_gallery_grid">
        </HeaderTemplate>
        <ItemTemplate>
            <div class="col-sm-6 col-xs-12 col-lg-4 agileits_w3layouts_gallery_grid1 w3layouts_gallery_grid1 hover14">
                        <div class="w3_agile_gallery_effect">
                            <a href="../Image/Gallery/<%# Eval("ImageSize") %><%# Eval("ImageName") %>" class="sb" title="<%# Eval("ImageDescription") %>">
                                <figure>
                                    <img src="../Image/Gallery/<%# Eval("ImageSize") %><%# Eval("ImageName") %>" alt=" " class="img-fluid" />
                                </figure>
                            </a>
                        </div>
                    </div>
        </ItemTemplate>
        <FooterTemplate>
            </div>
            </div>
            </div>
            </div>
        </FooterTemplate>
    </asp:Repeater>
</asp:Content>


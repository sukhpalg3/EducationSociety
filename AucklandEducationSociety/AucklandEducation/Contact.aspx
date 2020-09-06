<%@ Page Title="" Language="C#" MasterPageFile="~/Home.master" AutoEventWireup="true" CodeFile="Contact.aspx.cs" Inherits="Contactus" %>

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
								<li class="nav-item active">
									<a class="nav-link" href="Contact.aspx">Contact Us</a>
                                    <span class="sr-only">(current)</span>
								</li>
                       
					</ul>
				</div>
			</nav>
        </header>
        <!-- //header -->
    <div class="inner-banner">
    </div>
	 <!-- //banner-text -->
	   <ol class="breadcrumb">
        <li class="breadcrumb-item">
            <a href="Home.aspx">Home</a>
        </li>
        <li class="breadcrumb-item active">Contact</li>
    </ol>
    <!-- contact -->
    <section class="banner-bottom-w3ls pt-lg-5 pt-md-3 pt-3">
        <div class="inner-sec-wthreelayouts pt-md-5 pt-md-3 pt-3">
			<h2 class="heading-agileinfo text-center  mb-4">Get In <span> Touch</span></h2>
            <br />
            <br />
         <div class="container">
                <div class="row">
                    <div class="col-lg-8 mb-5">
             
                <div class="row form-group">
                  <div class="col-md-6 mb-3 mb-md-0">
                    <label class="text-black" for="txtFirstName">First Name*</label>
                      <asp:TextBox ID="txtFirstName" CssClass="form-control" runat="server"></asp:TextBox>

                  </div>
                  <div class="col-md-6">
                    <label class="text-black" for="txtLastName">Last Name*</label>
                    <asp:TextBox ID="txtLastName" CssClass="form-control" runat="server"></asp:TextBox>
                  </div>
                </div>

                <div class="row form-group">
                  
                  <div class="col-md-12">
                    <label class="text-black" for="txtEmail">Mobile*</label> 
                    <asp:TextBox ID="txtEmail" CssClass="form-control" runat="server"></asp:TextBox>
                  </div>
                </div>

                <div class="row form-group">
                  
                  <div class="col-md-12">
                    <label class="text-black" for="txtSubject">Subject*</label> 
                    <asp:TextBox ID="txtSubject" CssClass="form-control" runat="server"></asp:TextBox>
                  </div>
                </div>

                <div class="row form-group">
                  <div class="col-md-12">
                    <label class="text-black" for="txtMessage">Message*</label> 
                    
                  <asp:TextBox ID="txtMessage" CssClass="form-control" cols="30" rows="7" placeholder="Write your notes or questions here..." TextMode="MultiLine" runat="server"></asp:TextBox>
                  </div>
                </div>

                <div class="row form-group">
                  <div class="col-md-12">
                    
                      <asp:LinkButton ID="btnSubmit" class="btn myBtn btn-primary py-2 px-4 text-white" Text="Send Message" runat="server" OnClick="btnSubmit_Click"></asp:LinkButton>
                  </div>
                </div>

                <div class="row form-group">
                  <div class="col-md-12">
                      <asp:Label ID="lblmsg" ForeColor="Red" runat="server" Text=""></asp:Label>
                      </div>
                    </div>
            </div>

                    <div class="container-fluid">
                    <div class="col-md-6 main_grid_contact">
                        <div class="form">
                            <h4 class="mb-4 text-left">Get In Touch @ Auckland Education Society</h4>
                          	<div class="container-fluid pt-sm-5">
                <div class="address row mb-5">
                    <div class="col-lg-12 address-grid-w3l">
                        <div class="row address-info">
                            <div class="col-3 address-left text-center">
                                <i class="far fa-map"></i>
                            </div>
                            <div class="col-9 address-right text-left">
                                <h6 class="ad-info text-uppercase mb-2">Address</h6>
                                <p> 52  Victoria Street
                                    Auckland,
                                    New Zealand

                                </p>
                            </div>
                            <br />
                        </div>
                    </div>
                    <div class="col-lg-12 address-grid-w3l">
                        <div class="row address-info">
                            <div class="col-3 address-left text-center">
                                <i class="far fa-envelope"></i>
                            </div>
                            <div class="col-9 address-right text-left">
                                <h6 class="ad-info text-uppercase mb-2">Email</h6>
                                <p>
                                    <a href="mailto:enquiry@nzedu.com">getintouch@AucklandEducationSociety.com</a>
                                </p>
                            </div>
                            <br />
                        </div>
                    </div>
                    <div class="col-lg-12 address-grid-w3l">
                        <div class="row address-info">
                            <div class="col-3 address-left text-center">
                                <i class="fas fa-mobile-alt"></i>
                            </div>
                            <div class="col-9 address-right text-left">
                                <h6 class="ad-info text-uppercase mb-2">Phone</h6>
                                <p>+64 xxxxx-xxxxx</p>

                            </div>
                            <br />
                        </div>
                    </div>
                </div>
            </div>
                        </div>
                    </div>
                        </div>
                </div>
            </div>
          
        </div>
    </section>
</asp:Content>


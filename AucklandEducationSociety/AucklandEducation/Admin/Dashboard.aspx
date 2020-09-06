<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="Dashboard.aspx.cs" Inherits="Admin_Dashboard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="AdminHead" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="AdminContent" Runat="Server">
    <!--sidebar-menu-->
<div id="sidebar"><a href="#" class="visible-phone"><i class="icon icon-home"></i> Dashboard</a>
  <ul>
    <li class="active"><a href="Dashboard.aspx"><i class="icon icon-home"></i> <span>Dashboard</span></a> </li>
      <li> <a href="Gallery.aspx"><i class="icon icon-picture"></i> <span>Gallery</span></a> </li>
      <li> <a href="Banner.aspx"><i class="icon icon-picture"></i> <span>Banners</span></a> </li>
       <li> <a href="News.aspx"><i class="icon icon-th-list"></i> <span>News</span></a> </li>
       <li> <a href="Enquiry.aspx"><i class="icon icon-th-list"></i> <span>Enquiry</span></a> </li>
  </ul>
</div>
<!--sidebar-menu-->
    <!--main-container-part-->
<div id="content">
<!--breadcrumbs-->
  <div id="content-header">
    <div id="breadcrumb"> <a href="Dashboard.aspx" title="Go to Home" class="tip-bottom"><i class="icon-home"></i> Home</a></div>
  </div>
<!--End-breadcrumbs-->

<!--Action boxes-->
  <div class="container-fluid">
    <div class="quick-actions_homepage">
      <ul class="quick-actions">
        <li class="bg_lb span2"> <a href="Dashboard.aspx"> <i class="icon-dashboard"></i> My Dashboard </a> </li>
        <li class="bg_lo span3"> <a href="Gallery.aspx"> <i class="icon-picture"></i> Gallery</a> </li>
        <li class="bg_ls span2"> <a href="Banner.aspx"> <i class="icon-picture"></i> Banner</a> </li>
        <li class="bg_lo span2"> <a href="News.aspx"> <i class="icon-th-list"></i> News</a> </li>
         <li class="bg_lb span2"> <a href="Enquiry.aspx"><i class="icon icon-th-list"></i> <span>Enquiry</span></a> </li>
      </ul>
    </div>
<!--End-Action boxes-->    


    <hr/>
  
  </div>
</div>

<!--end-main-container-part-->


</asp:Content>


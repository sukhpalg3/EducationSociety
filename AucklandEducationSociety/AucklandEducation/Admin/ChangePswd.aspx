<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="ChangePswd.aspx.cs" Inherits="Admin_ChangePswd" %>

<asp:Content ID="Content1" ContentPlaceHolderID="AdminHead" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="AdminContent" Runat="Server">
    <div id="sidebar"><a href="#" class="visible-phone"><i class="icon icon-home"></i> Dashboard</a>
  <ul>
    <li><a href="Dashboard.aspx"><i class="icon icon-home"></i> <span>Dashboard</span></a> </li>
   
      <li > <a href="Gallery.aspx"><i class="icon icon-picture"></i> <span>Gallery</span></a> </li>
       <li > <a href="Banner.aspx"><i class="icon icon-picture"></i> <span>Banners</span></a> </li>
      <li> <a href="News.aspx"><i class="icon icon-th-list"></i> <span>News</span></a> </li>
         <li> <a href="Enquiry.aspx"><i class="icon icon-th-list"></i> <span>Enquiry</span></a> </li>
  </ul>
</div>
    <div id="content">
  <div id="content-header">
    <div id="breadcrumb"><a href="Dashboard.aspx" title="Go to Home" class="tip-bottom"><i class="icon-home"></i> Home</a> <a href="ChangePswd.aspx" class="current">Change Password</a></div>
    <h1>Change Password</h1>
  </div>
        <div class="container-fluid"><hr>
    <div class="row-fluid">
      <div class="span12">
        <div class="widget-box">
          <div class="widget-title"> <span class="icon"> <i class="icon-key"></i> </span>
            <h5>Change Password</h5>
          </div>
          <div class="widget-content nopadding">
            <div class="form-horizontal"  name="basic_validate" id="basic_validate" novalidate="novalidate">
              <div class="control-group">
                <label class="control-label">Old Password :</label>
                <div class="controls">
                    <asp:TextBox ID="txtoldpswd" placeholder="Old Password.." runat="server" TextMode="Password"></asp:TextBox>
                </div>
              </div>
              <div class="control-group">
                <label class="control-label">New Password :</label>
                <div class="controls">
                    <asp:TextBox ID="txtnewpswd" placeholder="New Password.." runat="server" TextMode="Password"></asp:TextBox>
                </div>
              </div>
              <div class="control-group">
                <label class="control-label">Confirm Password:</label>
                <div class="controls">
                    <asp:TextBox ID="txtcnfmpswd" placeholder="Confirm Password.." runat="server" TextMode="Password"></asp:TextBox>
                </div>
              </div>
              
              <div class="form-actions">
                  <asp:LinkButton ID="lnkaddchnge" Class="btn btn-success" runat="server" OnClick="lnkaddchnge_Click" ><span class="icon icon-key"></span> Change Password</asp:LinkButton>
                  
                  &nbsp;<asp:Label ID="lblmsg" runat="server" Text="" ForeColor="Red"></asp:Label>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  
  </div>
        </div>
</asp:Content>


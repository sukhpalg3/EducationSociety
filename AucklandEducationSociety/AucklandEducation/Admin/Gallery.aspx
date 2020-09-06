<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="Gallery.aspx.cs" Inherits="Admin_Gallery" %>

<asp:Content ID="Content1" ContentPlaceHolderID="AdminHead" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="AdminContent" Runat="Server">
    <div id="sidebar"><a href="#" class="visible-phone"><i class="icon icon-home"></i> Dashboard</a>
  <ul>
    <li><a href="Dashboard.aspx"><i class="icon icon-home"></i> <span>Dashboard</span></a> </li>
   <li class="active"> <a href="Gallery.aspx"><i class="icon icon-picture"></i> <span>Gallery</span></a> </li>
       <li> <a href="Banner.aspx"><i class="icon icon-picture"></i> <span>Banners</span></a> </li>
    <li> <a href="News.aspx"><i class="icon icon-th-list"></i> <span>News</span></a> </li>
           <li> <a href="Enquiry.aspx"><i class="icon icon-th-list"></i> <span>Enquiry</span></a> </li>
  </ul>
</div>
    <div id="content">
  <div id="content-header">
    <div id="breadcrumb"><a href="Dashboard.aspx" title="Go to Home" class="tip-bottom"><i class="icon-home"></i> Home</a> <a href="Gallery.aspx" class="current">Gallery</a></div>
    <h1>Gallery</h1>
  </div>
         <div class="container-fluid"><hr>
    <div class="row-fluid">
      <div class="span12">
        <div class="widget-box">
          <div class="widget-title"> <span class="icon"> <i class="icon-picture"></i> </span>
            <h5>Add Images</h5>
          </div>
          <div class="widget-content nopadding">
            <div class="form-horizontal" name="basic_validate" id="basic_validate" novalidate="novalidate">
              
                <div class="control-group">
                <label class="control-label"> Images :</label>
                <div class="controls">
                    <asp:FileUpload ID="fufImage"  runat="server" AllowMultiple="True" />
                    <p>Image Size: 640*440 pixels</p>
                </div>

              </div>
              <div class="control-group">
                <label class="control-label">Image Descriptions :</label>
                <div class="controls">
                    <asp:TextBox ID="txtdescription" placeholder="Image Description.." runat="server" TextMode="MultiLine"></asp:TextBox>
                </div>
              </div>
              
              <div class="form-actions">
                  <asp:LinkButton ID="lnkaddImage" Class="btn btn-success" runat="server" OnClick="lnkaddImage_Click"   ><span class="icon icon-plus-sign"></span> Add Image</asp:LinkButton>
                  
                  &nbsp;<asp:Label ID="lblmsg" runat="server" Text="" ForeColor="Red"></asp:Label>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  
  </div>

        <asp:Repeater ID="rptrGallery" runat="server" OnItemCommand="rptrGallery_ItemCommand"  >
            <HeaderTemplate>
                <div class="container-fluid"><hr>
    <div class="row-fluid">
      <div class="span12">
        <div class="widget-box">
          <div class="widget-title"> <span class="icon"> <i class="icon-picture"></i> </span>
            <h5>Gallery</h5>
          </div>
          <div class="widget-content">
               <asp:LinkButton Style="float:right"  OnClientClick="return confirm('Are you sure You want to delete all Images?');" ID="lnkalldel" Class="btn btn-danger" runat="server" CommandName="delall" ><span class="icon icon-trash"></span> Delete All</asp:LinkButton>
               <br />
              <hr />
            <ul class="thumbnails">
            </HeaderTemplate>
            <ItemTemplate>
                <li class="span2"> <a> <img src="../Image/Gallery/<%# Eval("ImageSize") %><%# Eval("ImageName") %>" alt="" > </a>
                &nbsp;&nbsp;&nbsp;&nbsp;<div class="actions">
                    <asp:LinkButton ID="lnkdel" OnClientClick="return confirm('Are you sure You want delete?');" CommandName="del" CommandArgument='<%# Eval("ImageID") %>' runat="server"><i class="icon-trash"></i></asp:LinkButton> </div>
              </li>
            </ItemTemplate>
            <FooterTemplate>
              </ul>
          </div>
        </div>
      </div>
    </div>
  </div>
      </FooterTemplate>

        </asp:Repeater>

        </div>
</asp:Content>


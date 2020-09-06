<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="Enquiry.aspx.cs" Inherits="Admin_Enquiry" %>

<asp:Content ID="Content1" ContentPlaceHolderID="AdminHead" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="AdminContent" Runat="Server">
     <div id="sidebar"><a href="#" class="visible-phone"><i class="icon icon-home"></i> Dashboard</a>
  <ul>
    <li><a href="Dashboard.aspx"><i class="icon icon-home"></i> <span>Dashboard</span></a> </li>
     <li > <a href="Gallery.aspx"><i class="icon icon-picture"></i> <span>Gallery</span></a> </li>
       <li > <a href="Banner.aspx"><i class="icon icon-picture"></i> <span>Banners</span></a> </li>
      <li> <a href="News.aspx"><i class="icon icon-th-list"></i> <span>News</span></a> </li>
     <li class="active"> <a href="Enquiry.aspx"><i class="icon icon-th-list"></i> <span>Enquiry</span></a> </li>
  </ul>
</div>
    <div id="content">
  <div id="content-header">
    <div id="breadcrumb"><a href="Dashboard.aspx" title="Go to Home" class="tip-bottom"><i class="icon-home"></i> Home</a> <a href="Enquiry.aspx" class="current">Enquiry</a></div>
    <h1>Enquiry</h1>
  </div>
        

  <asp:Repeater ID="rptrEnquiry" runat="server" OnItemCommand="rptrEnquiry_ItemCommand">
            <HeaderTemplate>
                <div class="container-fluid">
    <hr>
    <div class="row-fluid">
      <div class="span12">
        <div class="widget-box">
          <div class="widget-title"> <span class="icon"> <i class="icon-th"></i> </span>
            <h5>Enquiry</h5>
          </div>
          <div class="widget-content nopadding">
               <asp:LinkButton Style="float:right;margin:5px;"  OnClientClick="return confirm('Are you sure You want to delete all News?');" ID="lnkalldel" Class="btn btn-danger" runat="server" CommandName="delall" ><span class="icon icon-trash"></span> Delete All</asp:LinkButton>
               <br />
            
            <table class="table table-bordered table-striped">
              <thead>
                <tr>
                  <th>Name</th>
                  <th>Mobile</th>
                  <th>Subject</th>
                    <th>Message</th>
                    <th>Action</th>
                </tr>
              </thead>
              <tbody>
            </HeaderTemplate>
            <ItemTemplate>
                 <tr class="odd gradeX">
                  <td><%# Eval("Name") %></td>
                  <td><%# Eval("Phone") %></td>
                  <td><%# Eval("Subject") %></td>
                  <td><%# Eval("Message") %></td>
                  <td class="Center">
                    <asp:LinkButton ID="lnkdelete" CssClass="btn btn-danger" OnClientClick="return confirm('Are you sure You want delete?');" CommandName="del" CommandArgument='<%# Eval("id") %>' runat="server"><span class="icon icon-remove"></span></asp:LinkButton>
                  </td>
                      
                </tr>
            </ItemTemplate>
            <FooterTemplate>
             </tbody>
            </table>
          </div>
        </div>
                </div>
                </div>
                </div>
            </FooterTemplate>

        </asp:Repeater>
       <asp:Label runat="server" ForeColor="Red" ID="lblmsg"></asp:Label>
        </div>
</asp:Content>


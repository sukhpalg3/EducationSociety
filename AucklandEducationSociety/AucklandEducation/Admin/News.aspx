<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="News.aspx.cs" Inherits="Admin_News" %>

<asp:Content ID="Content1" ContentPlaceHolderID="AdminHead" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="AdminContent" Runat="Server">
        <div id="sidebar"><a href="#" class="visible-phone"><i class="icon icon-home"></i> Dashboard</a>
  <ul>
    <li><a href="Dashboard.aspx"><i class="icon icon-home"></i> <span>Dashboard</span></a> </li>
     <li > <a href="Gallery.aspx"><i class="icon icon-picture"></i> <span>Gallery</span></a> </li>
       <li > <a href="Banner.aspx"><i class="icon icon-picture"></i> <span>Banners</span></a> </li>
      <li class="active"> <a href="News.aspx"><i class="icon icon-th-list"></i> <span>News</span></a> </li>
       <li> <a href="Enquiry.aspx"><i class="icon icon-th-list"></i> <span>Enquiry</span></a> </li>
  </ul>
</div>
    <div id="content">
  <div id="content-header">
    <div id="breadcrumb"><a href="Dashboard.aspx" title="Go to Home" class="tip-bottom"><i class="icon-home"></i> Home</a> <a href="News.aspx" class="current">News</a></div>
    <h1>News</h1>
  </div>
         <div class="container-fluid"><hr>
    <div class="row-fluid">
      <div class="span12">
        <div class="widget-box">
          <div class="widget-title"> <span class="icon"> <i class="icon-paper-clip"></i> </span>
            <h5>Add News</h5>
          </div>
          <div class="widget-content nopadding">
            <div class="form-horizontal" name="basic_validate" id="basic_validate" novalidate="novalidate">
              
                <div class="control-group">
                <label class="control-label"> News Headline :</label>
                <div class="controls">
                   <asp:TextBox ID="txtnewsheadline" placeholder="News Headline.." runat="server"></asp:TextBox>
                </div>

              </div>
              
              <div class="control-group">
                <label class="control-label">News :</label>
                <div class="controls">
                    <asp:TextBox ID="txtnews" placeholder="News.." runat="server" TextMode="MultiLine"></asp:TextBox>
                </div>
              </div>
              <div class="form-actions">
                  <asp:LinkButton ID="lnknews" Class="btn btn-success" runat="server" OnClick="lnknews_Click" ><span class="icon icon-plus-sign"></span> Add News</asp:LinkButton>
                  <asp:LinkButton ID="lnkresetfield" Class="btn btn-danger" runat="server"  ><span class="icon icon-cut"></span> Reset</asp:LinkButton>
                  &nbsp;<asp:Label ID="lblmsg" runat="server" Text="" ForeColor="Red"></asp:Label>
                
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  
  </div>

  <asp:Repeater ID="rptrNews" runat="server" OnItemCommand="rptrNews_ItemCommand" >
            <HeaderTemplate>
                <div class="container-fluid">
    <hr>
    <div class="row-fluid">
      <div class="span12">
        <div class="widget-box">
          <div class="widget-title"> <span class="icon"> <i class="icon-th"></i> </span>
            <h5>News</h5>
          </div>
          <div class="widget-content nopadding">
               <asp:LinkButton Style="float:right;margin:5px;"  OnClientClick="return confirm('Are you sure You want to delete all News?');" ID="lnkalldel" Class="btn btn-danger" runat="server" CommandName="delall" ><span class="icon icon-trash"></span> Delete All</asp:LinkButton>
               <br />
            
            <table class="table table-bordered table-striped">
              <thead>
                <tr>
                  <th>News Headline</th>
                  <th>News</th>
                  <th>News Date</th>
                    <th>Action</th>
                </tr>
              </thead>
              <tbody>
            </HeaderTemplate>
            <ItemTemplate>
                 <tr class="odd gradeX">
                  <td><%# Eval("NewsHeadline") %></td>
                  <td><%# Eval("News") %></td>
                     <td><%# Eval("NewsDate") %></td>
                  <td class="Center">
           
                      <asp:LinkButton ID="lnkedit" CssClass="btn btn-info"  CommandName="edit"  CommandArgument='<%# Eval("NewsID") %>' runat="server"><span class="icon icon-edit"></span></asp:LinkButton>
                                <asp:LinkButton ID="lnkdelete" CssClass="btn btn-danger" OnClientClick="return confirm('Are you sure You want delete?');" CommandName="del" CommandArgument='<%# Eval("NewsID") %>' runat="server"><span class="icon icon-remove"></span></asp:LinkButton>
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
        <asp:Panel ID="Panel1" runat="server" Visible="false">
        <div id="myModal" class="modal hide" style="display:block !important" >
              <div class="modal-header">
                <%--<button data-dismiss="modal" class="close" type="button">×</button>--%>
                  <asp:LinkButton ID="LinkButton3" class="close" runat="server" OnClick="LinkButton3_Click">×</asp:LinkButton>
                <h3><span class="icon icon-edit"></span> EDIT</h3>
              </div>
              <div class="modal-body">
                <p>
                    <div class="form-horizontal" method="post" action="#" name="basic_validate" id="basic_validate" novalidate="novalidate">
              
                <div class="">
                <label class="control-label"> News Headline :</label>
                    <asp:Label ID="lblnewsid" runat="server" Visible="False"></asp:Label>
                <div class="controls">
                   <asp:TextBox ID="txtnewsheadup" placeholder="News Headline.." runat="server"></asp:TextBox>
                </div>

              </div>
              
              <div class="">
                <label class="control-label">News :</label>
                <div class="controls">
                    <asp:TextBox ID="txtnewsup" placeholder="News.." runat="server" TextMode="MultiLine"></asp:TextBox>
                </div>
              </div>
              <div class="form-actions">
                  <asp:LinkButton ID="LinkButton1" Class="btn btn-success" runat="server" OnClick="LinkButton1_Click" ><span class="icon icon-save"></span> Update</asp:LinkButton>
                  <asp:LinkButton ID="LinkButton2" Class="btn btn-inverse" runat="server" OnClick="LinkButton2_Click"  ><span class="icon icon-remove"></span> Cancel</asp:LinkButton>
                  &nbsp;<asp:Label ID="lblmsgup" runat="server" Text="" ForeColor="Red"></asp:Label>
                
              </div>
            </div>
                    
                    <p>
                    </p>
                    
                </p>
              </div>
            </div>
            <div class="modal-backdrop  in"></div>
            </asp:Panel>
        </div>
</asp:Content>


<%@ Page Title="" Language="C#" MasterPageFile="~/pageMaster.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="BTL.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="noidung" runat="server">
    <div class="col-md-12">
        <div class="item ">
            <div class="item-info">
                <div>
                    <h3><i class="fa fa-sign-in"></i>&nbsp;Thành viên đăng nhập</h3>
                </div>
            </div>
            <div>
                      <div id="signin">
                                  
                          <asp:TextBox ID="txtUserName" runat="server" Placeholder="UserName"></asp:TextBox>
                          <asp:TextBox ID="txtPass" runat="server" Placeholder="Password" TextMode="Password"></asp:TextBox>
                          
                         
                            <asp:Button ID="Button1" runat="server" Text="Đăng nhập" OnClick="Button1_Click" />
                          <asp:Literal ID="mess" runat="server"></asp:Literal>
                        <div class="m-top-10">
                        <a href="Register.aspx">Bạn chưa có tài khoản ? Đăng kí ngay nào <3</a>   </div>
                                           <br>
                    </div>
                           </div>
        </div>
    </div>
</asp:Content>

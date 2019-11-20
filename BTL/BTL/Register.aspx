<%@ Page Title="" Language="C#" MasterPageFile="~/pageMaster.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="BTL.Register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="noidung" runat="server">
    <div class="col-md-12">
        <div class="item ">
            <div class="item-info center-block">
                <div>
                    <h3><i class="fa fa-plus"></i>&nbsp;Thành viên đăng ký</h3>
                </div>
            </div>
            
            <div id="signin">
                                                                   
                <asp:TextBox ID="txtUserName" placeholder="UserName" runat="server" ></asp:TextBox>
                <asp:TextBox ID="txtPassWord" placeholder="Password" runat="server" ></asp:TextBox>
                <asp:TextBox ID="txtAddress" placeholder="Address" runat="server" ></asp:TextBox>
                <asp:TextBox ID="txtDateOfBirth" placeholder="DateOfBirth" runat="server" ></asp:TextBox>
                <asp:RadioButtonList ID="rdGender" runat="server">
                    <asp:ListItem Selected="True" Value="nu" >Nữ</asp:ListItem>
                    <asp:ListItem Value="nam">Nam</asp:ListItem>
                    
                </asp:RadioButtonList>
                <asp:Literal ID="mess" runat="server"></asp:Literal>
                <asp:Button ID="btnregister"  runat="server" Text="Đăng ký" OnClick="btnregister_Click" />
                      
                      
                       
                                       
                         <br>
                    </div>
                           </div>
       
    </div>
</asp:Content>

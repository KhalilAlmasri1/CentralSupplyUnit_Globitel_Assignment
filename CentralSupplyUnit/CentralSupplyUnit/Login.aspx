<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="CentralSupplyUnit.Login" %>
<!DOCTYPE html>
<html runat="server">
<head>
     <link href="Content/StyleSheet1.css" rel="stylesheet" />
     <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Login</title>
</head>
    <body runat="server">
        <form id="Log" runat="server">
    <div class="ContentBox">
        <div class="Header">
                <h2>Login</h2>
            </div>
        <div class="LoginContainer">
            <div class="InputBoxes">
            <asp:Label ID="LoginUserName" runat="server" Text="User Name" Font-Size="Large" Font-Bold="true"></asp:Label>
            <asp:TextBox ID="txtLoginUserName"  runat="server"  placeholder="User Name" CssClass="Logintxt"></asp:TextBox>
                <asp:RequiredFieldValidator ID="Usernamevalidation" runat="server" ControlToValidate="txtLoginUserName" display="Static" ErrorMessage="Please Enter Username"></asp:RequiredFieldValidator>
            </div>
        <div class="InputBoxes">
            <asp:Label ID="LoginPassword" runat="server" Text="Password" Font-Size="Large" Font-Bold="true"></asp:Label>
            <asp:TextBox ID="txtLoginPassword"  runat="server" placeholder="Password"  TextMode="Password" CssClass="Logintxt"></asp:TextBox>
           <asp:RequiredFieldValidator ID="LoginPasswordvalidatio" runat="server" ControlToValidate="txtLoginPassword" display="Static" ErrorMessage="Please Enter Password"></asp:RequiredFieldValidator>
            </div>
            <div class="InputBoxes">
                <asp:Label ID="MememberMe"  runat="server" Text=" Remember Me Next Time:" Font-Size="Large" Font-Bold="true"></asp:Label>
            <asp:CheckBox ID="chkRememberMe" runat="server" />
            </div>
            <div style="float:right">
                <asp:Button ID="Login1" runat="server" Text="Login" CssClass="btn ButtonSubmit loginbtn" OnClick="Login1_Click" />
                <div style="text-align:center">
                <asp:Label id="Errormsg" runat="server" forecolor="red" font-name="verdana" font-size="10" Font-Bold="True" ></asp:Label>
                </div>
            </div>
        </div>
            
        </div>
            </form>
</body>
    </html>


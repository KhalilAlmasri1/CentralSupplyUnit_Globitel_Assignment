<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Menu.Master" CodeBehind="RegisterPage.aspx.cs" Inherits="CentralSupplyUnit.RegisterPage" %>

<asp:Content ID="head" ContentPlaceHolderID="head" runat="server">
    <title>Register</title>
     </asp:Content>
	<asp:Content ID="Content1" ContentPlaceHolderID="Body" runat="server">
    
        <div class="RegesterContentbox">
        <div class="Header">
                <h2>Register</h2>
            </div>
            <div>
            <div class="InputBoxes">
                <div>
            <asp:Label ID="FullName" runat="server" Text="FullName:"></asp:Label>

                </div>
            <asp:TextBox ID="txtFullName"  runat="server" placeholder="FullName"></asp:TextBox>
                <div>
                <asp:RequiredFieldValidator ID="FullNameRequiredFieldValidator" runat="server" ControlToValidate="txtFullName" display="Static" ErrorMessage="Please Enter FullName"></asp:RequiredFieldValidator>
            </div></div>
            <div class="InputBoxes">
                <div>
            <asp:Label ID="UserName" runat="server" Text="UserName:"></asp:Label></div>
            <asp:TextBox ID="txtUserName" runat="server" placeholder="UserName"></asp:TextBox>
                <div>
                <asp:RequiredFieldValidator ID="UserNameRequiredFieldValidator" runat="server" ControlToValidate="txtUserName" display="Static" ErrorMessage="Please Enter UserName"></asp:RequiredFieldValidator>
            </div></div>
            <div class="InputBoxes">
                <div>
            <asp:Label ID="Password" runat="server" Text="Password:"></asp:Label></div>
            <asp:TextBox ID="txtPassword" runat="server" placeholder="Password" TextMode="Password" CssClass="Logintxt"></asp:TextBox>
                <div>
                <asp:RequiredFieldValidator ID="PasswordRequiredFieldValidator" runat="server" ControlToValidate="txtPassword" display="Static" ErrorMessage="Please Enter Password"></asp:RequiredFieldValidator>
            </div>
            </div>
                <div class="InputBoxes">
                <div>
                <asp:Label ID="ConfirmPassword" runat="server" Text="ConfirmPassword:"></asp:Label></div>
            <asp:TextBox ID="txtConfirmPassword"  placeholder="ConfirmPassword" Type="" runat="server" TextMode="Password" CssClass="Logintxt"></asp:TextBox>
                    <div>
                        <asp:RequiredFieldValidator ID="ConfirmPasswordRequiredFieldValidator" runat="server" ControlToValidate="txtConfirmPassword" display="Static" ErrorMessage="Confirm Password Dosen't Match"></asp:RequiredFieldValidator>
            </div> </div>
            <div class="InputBoxes">
                <div>
                <div>
                    <asp:DropDownList ID="Typeddl" runat="server" CssClass="Ddl">
                        <asp:ListItem Text="Choose Employee Type" Value="-1"></asp:ListItem>
                        <asp:ListItem Text="Employee" Value="1"></asp:ListItem>
                        <asp:ListItem Text="Manager" Value="2"></asp:ListItem>
                        <asp:ListItem Text="Administrator" Value="3"></asp:ListItem>
                    </asp:DropDownList>
                <asp:RequiredFieldValidator ID="TypeRequiredFieldValidator" runat="server" ControlToValidate="Typeddl" display="Static" ErrorMessage="Please Enter Type"></asp:RequiredFieldValidator>
            </div></div>
                </div>
            <div style="float:right">
                <asp:Button ID="Signupbtn" runat="server" Text="Register" CssClass="btn ButtonSubmit viewbtn" OnClick="Signup_Click" />
                <asp:Label id="Errormsg" runat="server" forecolor="red" font-name="verdana" font-size="10" ></asp:Label>
            </div>
            </div>
    </asp:Content>
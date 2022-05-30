<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Menu.Master" CodeBehind="AddSupplyDocuments.aspx.cs" Inherits="CentralSupplyUnit.AddSupplyDocuments" %>
 
<asp:Content ID="head2" ContentPlaceHolderID="head" runat="server">
    <title>Add Supply Documents</title>
     </asp:Content>
	<asp:Content ID="Content2" ContentPlaceHolderID="Body" runat="server">
    
        <div class="RegesterContentbox">
        <div class="Header">
                <h2>Add Supply Documents</h2>
            </div>
            <div>
            <div class="InputBoxes">
                <div>
            <asp:Label ID="DocumentName" runat="server" Text="Name:"></asp:Label></div><div>
            <asp:TextBox ID="txtDocumentName"  runat="server" placeholder="Name"></asp:TextBox></div>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtDocumentName" display="Static" ErrorMessage="Please Enter Name"></asp:RequiredFieldValidator>
            </div>
            <div class="InputBoxes">
                <div>
            <asp:Label ID="DocumentSubject" runat="server" Text="Subject:"></asp:Label></div><div>
            <asp:TextBox ID="txtDocumentSubject" runat="server" placeholder="Subject"></asp:TextBox></div>
               <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtDocumentSubject" display="Static" ErrorMessage="Please Enter Name"></asp:RequiredFieldValidator> 
            </div>
            <div class="InputBoxes">
                <div>
            <asp:Label ID="DocumentCreatedBy" runat="server" Text="Created By:"></asp:Label></div><div>
            <asp:TextBox ID="txtDocumentCreatedBy" runat="server" placeholder="Created By"></asp:TextBox></div>
                
            </div>
            <div class="InputBoxes">
                <div>
            <asp:Label ID="DocumentCreatedDateAndTime" runat="server" Text="Created Date And Time:"></asp:Label></div><div>
            <asp:TextBox ID="txtDocumentCreatedDateAndTime"  placeholder="Created Date And Time" runat="server"></asp:TextBox></div>
                
            </div>
            
            
            <div class="InputBoxes">
                <div>
             <asp:Label ID="DocumentWarehouse" runat="server" Text="Warehouse Name:" ></asp:Label></div><div>
                <asp:DropDownList ID="DocumentWarehouseddl" runat="server" CssClass="Ddl" OnSelectedIndexChanged="Documentitemddl" AutoPostBack="True">
                    <asp:ListItem Value="-1" Text="Choose Warehouse"></asp:ListItem>
                </asp:DropDownList></div>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="DocumentWarehouseddl" display="Static" ErrorMessage="Please Enter Name"></asp:RequiredFieldValidator>
            </div>
            <div class="InputBoxes">
                <div>
             <asp:Label ID="DocumentItem" runat="server" Text="Item Name:"></asp:Label></div><div>
                <asp:DropDownList ID="DocumentItemddl" runat="server" CssClass="Ddl">
                    <asp:ListItem Value= "-1">Choose Item</asp:ListItem>
                </asp:DropDownList></div>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="DocumentItemddl" display="Static" ErrorMessage="Please Enter Name"></asp:RequiredFieldValidator>
            </div> 
            </div>
            <div style="float:right">
                <asp:Button ID="AddDocument" runat="server" Text="Create" CssClass="btn ButtonSubmit viewbtn" OnClick="CreateSupplyDocument_Click" />
            </div>
        </div>
    </asp:Content>


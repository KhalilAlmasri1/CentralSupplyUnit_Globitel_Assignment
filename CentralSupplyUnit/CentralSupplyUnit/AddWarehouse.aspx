<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Menu.Master" CodeBehind="AddWarehouse.aspx.cs" Inherits="CentralSupplyUnit.AddWarehouse" %>    
<asp:Content ID="head" ContentPlaceHolderID="head" runat="server">
    <title>AddWarehouse</title>
     </asp:Content>
	<asp:Content ID="Content1" ContentPlaceHolderID="Body" runat="server">
    
        <div class="RegesterContentbox">
        <div class="Header">
                <h2>Add Warehouse</h2>
            </div>
            
            <div class="InputBoxes">
                <div>
            <asp:Label ID="Name" runat="server" Text="Name:"></asp:Label></div>
                <div>
            <asp:TextBox ID="txtName"  runat="server" placeholder="Name"></asp:TextBox>
                    </div>
                <asp:RequiredFieldValidator ID="NameRequiredFieldValidator" runat="server" ControlToValidate="txtName" display="Static" ErrorMessage="Please Enter WarehouseName"></asp:RequiredFieldValidator>
            </div>
            <div class="InputBoxes">
                <div>
            <asp:Label ID="Description" runat="server" Text="Description:"></asp:Label></div><div>
            <asp:TextBox ID="txtDescription" runat="server" placeholder="Description"></asp:TextBox></div>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtDescription" display="Static" ErrorMessage="Please Enter Item Description"></asp:RequiredFieldValidator>
                </div>
                
            
            <div class="InputBoxes">
                <div>
            <asp:Label ID="CreatedBy" runat="server" Text="Created By:"></asp:Label></div>
                <div>
            <asp:TextBox ID="txtCreatedBy" runat="server" placeholder="Created By"></asp:TextBox></div>
           </div>
            
            <div class="InputBoxes">
<div>
            <asp:Label ID="CreatedDateAndTime" runat="server" Text="Created Date And Time:"></asp:Label></div>
<div>
            <asp:TextBox ID="txtCreatedDateAndTime"  placeholder="Created Date And Time" Type="" runat="server"></asp:TextBox></div>
            </div>
            
            
            <div class="InputBoxes">
                <div>
            <asp:Label ID="ItemName" runat="server" Text="Item Name:"></asp:Label></div>
                <div>
            <asp:TextBox ID="txtItemName"  runat="server" placeholder="Item Name"></asp:TextBox></div>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtItemName" display="Static" ErrorMessage="Please Enter ItemName"></asp:RequiredFieldValidator>
            </div>
                <div class="InputBoxes">
                    <div>
            <asp:Label ID="ItemDescription" runat="server" Text="Item Description:"></asp:Label></div><div>
            <asp:TextBox ID="txtItemDescription"  runat="server" placeholder="Item Description"></asp:TextBox> </div>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtName" display="Static" ErrorMessage="Please Enter WarehouseName"></asp:RequiredFieldValidator>
            </div>
                <div class="InputBoxes">
                    <div>
            <asp:Label ID="ItemQuantity" runat="server" Text="Item Quantity:"></asp:Label></div><div>
            <asp:TextBox ID="txtItemQuantity"  runat="server" placeholder="Item Quantity"></asp:TextBox></div>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtItemQuantity" display="Static" ErrorMessage="Please Enter Item Quantity"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionQuantity" runat="server" ErrorMessage="Mustn't Contain Characters" ControlToValidate="txtItemQuantity" ValidationExpression="^\d+"></asp:RegularExpressionValidator>
            </div>
            <div style="float:right">
            <asp:Button ID="AddWarehousebtn" runat="server" Text="Create" CssClass="btn ButtonSubmit viewbtn" OnClick="AddWarehouse_Click" />
            </div>
            </div>
            
       
    </asp:Content>


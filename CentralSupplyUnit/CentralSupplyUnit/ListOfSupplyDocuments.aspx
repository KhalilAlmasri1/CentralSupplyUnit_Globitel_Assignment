<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Menu.Master" CodeBehind="ListOfSupplyDocuments.aspx.cs" Inherits="CentralSupplyUnit.ListOfSupplyDocuments" %>

<asp:Content ID="head3" ContentPlaceHolderID="head" runat="server">
    <title>List Of Supply Documents</title>
     </asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="Body" runat="server">
    <div class="ContentBox">
        <div class="Header">
                <h2>List Of Supply Documents</h2>
            </div>
        <div class="Table">
            <asp:GridView ID="ListOfSupplyDocuments_GV" runat="server" AutoGenerateColumns="False" CssClass="table">
                <Columns>
                 <asp:TemplateField HeaderText="">  
                    <EditItemTemplate>  
                        <asp:CheckBox ID="ListOfSupplyDocumentsCheckBox" runat="server" value='<%#Eval("ID")%>' />  
                    </EditItemTemplate>
                        <ItemTemplate>  
                        <asp:CheckBox ID="ListOfSupplyDocumentsCheckBox" runat="server" value='<%#Eval("ID")%>' />  
                    </ItemTemplate>
                        </asp:TemplateField>
                    <asp:BoundField DataField="SupplyDocumentsName" HeaderText="Name" />
                    <asp:BoundField DataField="Subject" HeaderText="Subject" />
                    <asp:BoundField DataField="FullName" HeaderText="Created By" />
                    <asp:BoundField DataField="CreatedDateandTime" HeaderText="Created Date And Time" />
                </Columns>
            </asp:GridView>
        </div>
        <div style="float:right">
            <div style="float:left">
                <asp:Button ID="AddWH" runat="server" Text="Add" CssClass="btn ButtonSubmit add_deletbtn"  />
            </div>
            <div style="float:left">
                <asp:Button ID="DeleteWH" runat="server" Text="Delete" CssClass="btn btn-default add_deletbtn" OnClick="DeleteSP_Click" />
                </div>
        </div>
        </div>
    </asp:Content>

 
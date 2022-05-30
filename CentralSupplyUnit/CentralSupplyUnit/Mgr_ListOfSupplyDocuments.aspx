<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Menu.Master" CodeBehind="Mgr_ListOfSupplyDocuments.aspx.cs" Inherits="CentralSupplyUnit.Mgr_ListOfSupplyDocuments" %>


<asp:Content ID="head3" ContentPlaceHolderID="head" runat="server">
    <title>List Of Supply Documents</title>
     </asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="Body" runat="server">
    <div class="ContentBox">
        <div class="Header">
                <h2>List Of Supply Documents</h2>
            </div>
        <div class="Table">
               <asp:GridView ID="MgrListOfSupplyDocuments_GV" runat="server" AutoGenerateColumns="False" CssClass="table">
                <Columns>
                    <asp:BoundField  DataField="SupplyDocumentsName" HeaderText="Name"  />
                    <asp:BoundField DataField="Subject" HeaderText="Subject" />
                    <asp:BoundField  DataField="FullName" HeaderText="Created By" />
                    <asp:BoundField DataField="CreatedDateandTime" HeaderText="Created Date And Time" />
                    <asp:TemplateField HeaderText="Actions">  
                    <EditItemTemplate>  
                    <asp:Button ID="ApproveButton" runat="server" CssClass="btn ButtonSubmit viewbtn" />  
                    <asp:Button ID="DeclineButton" runat="server" CssClass="btn ButtonSubmit viewbtn" /> 
                    </EditItemTemplate>
                    <ItemTemplate>  
                    <asp:Button ID="ApproveButton" runat="server" Text="Approve" CssClass="btn tablebtns viewbtn" CommandArgument='<%#Eval("ID") %>' OnClick="ApproveButton_Click" /> 
                    <asp:Button ID="DeclineButton" runat="server" Text="Decline" CssClass="btn tablebtns declinebtn" OnClick="Decline_Click" CommandArgument='<%#Eval("ID") %>' />
                    </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
               
           
        </div>
       
        </div>
    </asp:Content>
<%--<asp:GridView ID="Documents_GridView" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" CssClass="table">
                <Columns>
                    <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name"></asp:BoundField>
                    <asp:BoundField DataField="Subject" HeaderText="Subject" SortExpression="Subject"></asp:BoundField>
                    <asp:BoundField DataField="CreatedBy" HeaderText="CreatedBy" SortExpression="CreatedBy"></asp:BoundField>
                    <asp:BoundField DataField="CreatedDateandTime" HeaderText="CreatedDateandTime" SortExpression="CreatedDateandTime"></asp:BoundField>
                    <asp:BoundField DataField="Warehouse_Id" HeaderText="Warehouse_Id" SortExpression="Warehouse_Id"></asp:BoundField>
                    <asp:BoundField DataField="Items_Id" HeaderText="Items_Id" SortExpression="Items_Id"></asp:BoundField>
                    <asp:TemplateField HeaderText="Actions">  
                    <EditItemTemplate>  
                        <asp:Button ID="ApproveButton" runat="server" CssClass="btn ButtonSubmit viewbtn" />  
                        <asp:Button ID="DeclineButton" runat="server" CssClass="btn ButtonSubmit viewbtn" /> 
                    </EditItemTemplate>
                        <ItemTemplate>  
                        <asp:Button ID="ApproveButton" runat="server" Text="Approve" CssClass="btn tablebtns viewbtn" /> 
                            <asp:Button ID="DeclineButton" runat="server" Text="Decline" CssClass="btn tablebtns declinebtn" />
                    </ItemTemplate>
                        </asp:TemplateField>--%>
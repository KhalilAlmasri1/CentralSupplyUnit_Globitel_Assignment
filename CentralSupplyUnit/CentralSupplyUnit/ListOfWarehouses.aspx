<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Menu.Master" CodeBehind="ListOfWarehouses.aspx.cs" Inherits="CentralSupplyUnit.ListOfWarehouses" %>

<asp:Content ID="head3" ContentPlaceHolderID="head" runat="server">
    <title>List Of Warehouses</title>
    <script src="Scripts/jquery-3.4.1.js"></script>
    <script type="text/javascript">    
        function DeleteConfirm() 
        {  
            var Ans = confirm("Do you want to Delete Selected Warehouse Record?");  
            if (Ans)
            {  
                return true;  
            }  
            else 
            {  
                return false;  
            }  
        }
    </script>
     </asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Body" runat="server">
    <div class="ContentBox">
        <div class="Header">
                <h2>List Of Warehouses</h2>
            </div>
        <div class="Table">
            <asp:GridView ID="ListOfWarehouses_GV" runat="server" AutoGenerateColumns="False" CssClass="table">
                <Columns>
                    <asp:TemplateField HeaderText="">  
                    <EditItemTemplate>  
                        <asp:CheckBox ID="WareouseCheckBox" runat="server" value='<%#Eval("ID")%>' /> 
                    </EditItemTemplate>
                        <ItemTemplate>  
                        <asp:CheckBox ID="WareouseCheckBox" runat="server" value='<%#Eval("ID")%>' /> 
                    </ItemTemplate>
                        </asp:TemplateField>
                    <asp:BoundField DataField="WarehouseName" HeaderText="Name" />
                    <asp:BoundField DataField="Description" HeaderText="Description" />
                    <asp:BoundField DataField="FullName" HeaderText="Created By" />
                    <asp:BoundField DataField="CreatedDateandTime" HeaderText="Created Date And Time" />
                    <asp:TemplateField HeaderText="Actions">  
                    <EditItemTemplate>  
                        <asp:Button ID="Viewbtn" runat="server" CssClass="btn ButtonSubmit viewbtn" />  
                    </EditItemTemplate>
                        <ItemTemplate>  
                            <asp:Button ID="Viewbtn" runat="server" Text="View" CssClass="btn ButtonSubmit viewbtn" CommandArgument='<%#Eval("ID")%>' OnClick="Viewbtn_Click" /> 
                    </ItemTemplate>
                        </asp:TemplateField>
                </Columns>
            </asp:GridView>
        </div>
        <div style="float:right">
            <div style="float:left">
                <asp:Button ID="AddWH" runat="server" Text="Add" CssClass="btn ButtonSubmit add_deletbtn" PostBackUrl="~/AddWarehouse.aspx" />
            </div>
            <div style="float:left">
                <asp:Button ID="DeleteWH" runat="server" Text="Delete" CssClass="btn btn-default add_deletbtn" OnClick="DeleteRecord_Click" />
                </div>
        </div>
        <asp:Panel runat="server" ID="menu" Visible="false">
        <div id="ItemsMenu" style="margin-top:90px;">
         <div class="Header">
                <h2>Items</h2>
            </div>
        <div class="Table">
            <asp:GridView ID="Items_GV" runat="server" AutoGenerateColumns="False" CssClass="table">
                <Columns>
                    <asp:BoundField DataField="ItemsName" HeaderText="Name" />
                    <asp:BoundField DataField="ItemsDescription" HeaderText="Description" />
                    <asp:BoundField DataField="Quantity" HeaderText="Quantity" />
                </Columns>
            </asp:GridView>
        </div>
        </div></asp:Panel>
        </div>


    
    </asp:Content>

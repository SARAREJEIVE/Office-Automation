<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="Productions.aspx.cs" Inherits="Admin_Productions" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            margin-right: 141px;
        }
        .auto-style2 {
            width: 198px;
        }
        .auto-style3 {
            width: 225px;
        }
        .auto-style4 {
            width: 198px;
            height: 43px;
        }
        .auto-style5 {
            width: 225px;
            height: 43px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <fieldset>
        <legend class="auto_legend">PRODUCTION</legend>
    
    <table class="auto-style1">
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style3">
                PRODUCTION</td>
        </tr>
        <tr>
            <td class="auto-style2">Category</td>
            <td class="auto-style3">
                <asp:DropDownList ID="ddl_cat" runat="server" Width="252px" AutoPostBack="True" OnSelectedIndexChanged="ddl_cat_SelectedIndexChanged1">
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="ddl_cat" ErrorMessage="Enter Category" InitialValue="--SELECT--" ForeColor="#CC0000"></asp:RequiredFieldValidator>
            
            </td>
        </tr>
        <tr>
            <td class="auto-style4">Sub category</td>
            <td class="auto-style5">
                <asp:DropDownList ID="ddl_subcat" runat="server" Width="252px">
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="ddl_subcat" ErrorMessage="Enter SubCategory" InitialValue="--SELECT--" ForeColor="#CC0000"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Name</td>
            <td class="auto-style3">
                <asp:TextBox ID="txtPNam" runat="server" Width="250px" OnTextChanged="txtPNam_TextChanged" AutoPostBack="True"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtPNam" ErrorMessage="Enter Name" ForeColor="#CC0000"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Description</td>
            <td class="auto-style3">
                <asp:TextBox ID="txtDescription" runat="server" Height="152px" Width="250px" TextMode="MultiLine"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtDescription" ErrorMessage="Enter description" ForeColor="#CC0000"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Tax</td>
            <td class="auto-style3">
                <asp:TextBox ID="txtTax" runat="server" Width="250px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtTax" ErrorMessage="Enter Tax " ForeColor="#CC0000"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style3">
                <asp:Button ID="btsave" runat="server" OnClick="btsave_Click" Text="Save" style="text-align: left" Width="80px" />
                </td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style3"><asp:GridView ID="grid" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" OnRowCommand="grid_RowCommand" style="text-align: left; height: 167px; width: 289px;">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="sub_cat_name" HeaderText="Category" />
                    <asp:BoundField DataField="Product_Name" HeaderText="Product Name" />
                   <%-- <asp:BoundField DataField="Description" HeaderText="Description" />--%>
                    <asp:BoundField DataField="Tax" HeaderText="Tax" />
                    <asp:TemplateField>
                        <ItemTemplate>
                            <asp:LinkButton ID="btEdit" runat="server" CommandArgument='<%# Eval("production_id") %>' CommandName="ed" CausesValidation="False">Edit</asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField>
                        <ItemTemplate>
                            <asp:LinkButton ID="btDelete" runat="server" CommandArgument='<%# Eval("production_id") %>' CommandName="del" CausesValidation="False">Delete</asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
                <EditRowStyle BackColor="#2461BF" />
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" />
                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                <SortedDescendingHeaderStyle BackColor="#4870BE" />
                </asp:GridView>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
        </tr>
        </table>
        </fieldset>
</asp:Content>


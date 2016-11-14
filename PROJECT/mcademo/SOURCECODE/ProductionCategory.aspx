<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="ProductionCategory.aspx.cs" Inherits="Admin_ProductionCategory" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 258px;
        }
        .auto-style3 {
            font-size: x-large;
        }
        .auto-style4 {
            width: 258px;
            height: 67px;
        }
        .auto-style5 {
            height: 67px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <fieldset>
        <legend class="auto_legend">PRODUCTION CATEGORY</legend>
    
    <table class="auto-style1">
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style3">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">Category Name</td>
            <td>
                <asp:TextBox ID="txtpcn" runat="server" Width="150px" AutoPostBack="True" OnTextChanged="txtpcn_TextChanged"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtpcn" ErrorMessage="Enter Category" ForeColor="#CC0000"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style4"></td>
            <td class="auto-style5">
                <asp:Button ID="btSave" runat="server" OnClick="btSave_Click" Text="Save" Width="80px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td>
                <asp:GridView ID="grid" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" OnRowCommand="grid_RowCommand">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="pdt_cat_name" HeaderText="Product Category Name" />
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:LinkButton ID="Edit" runat="server" CommandArgument='<%# Eval("pdt_cat_id") %>' CommandName="ed" CausesValidation="False">Edit</asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:LinkButton ID="Delete" runat="server" CommandArgument='<%# Eval("pdt_cat_id") %>' CommandName="del" CausesValidation="False">Delete</asp:LinkButton>
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
            <td>&nbsp;</td>
        </tr>
    </table>
        </fieldset>
</asp:Content>


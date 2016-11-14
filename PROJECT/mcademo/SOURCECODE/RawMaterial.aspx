<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="RawMaterial.aspx.cs" Inherits="Admin_RawMaterial1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style1 {
        width: 100%;
    }
    .auto-style2 {
        width: 434px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <fieldset>
        <legend class="auto_legend">Raw Materials</legend>
    
    <table class="auto-style1">
    <tr>
        <td class="auto-style2">Name</td>
        <td>
            <asp:TextBox ID="txtName" runat="server" Width="250px" AutoPostBack="True" OnTextChanged="txtName_TextChanged"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtName" ErrorMessage="Enter the Raw Material Name"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style2">Stock</td>
        <td>
            <asp:TextBox ID="txtStock" runat="server" Width="250px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtStock" ErrorMessage="Enter the stock "></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style2">Price</td>
        <td>
            <asp:TextBox ID="txtPrice" runat="server" Width="250px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtPrice" ErrorMessage="Enter the price"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style2">Eff.Rate</td>
        <td>
            <asp:TextBox ID="txtEffRate" runat="server" Width="250px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtEffRate" ErrorMessage="Enter the eff.rate"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style2">&nbsp;</td>
        <td>
            <asp:Button ID="btSave" runat="server" OnClick="btSave_Click" Text="Save" Width="80px" />
        </td>
    </tr>
    <tr>
        <td class="auto-style2">
            &nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style2">&nbsp;</td>
        <td>
            <asp:GridView ID="grid" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" OnRowCommand="grid_RowCommand1">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="Raw_Name" HeaderText="Name" />
                    <asp:BoundField DataField="Raw_Stock" HeaderText="Stock" />
                    <asp:BoundField DataField="Raw_Price" HeaderText="Price" />
                    <asp:BoundField DataField="eff_Rate" HeaderText="Eff.Rate" />
                    <asp:TemplateField>
                        <ItemTemplate>
                            <asp:LinkButton ID="lbEdit" runat="server" CommandArgument='<%# Eval(" Raw_id") %>' CommandName="ed" CausesValidation="False">Edit</asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField>
                        <ItemTemplate>
                            <asp:LinkButton ID="lbdelete" runat="server" CommandArgument='<%# Eval("Raw_id") %>' CommandName="del" CausesValidation="False">Delete</asp:LinkButton>
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
    <tr>
        <td class="auto-style2">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style2">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
</table>
        </fieldset>
</asp:Content>


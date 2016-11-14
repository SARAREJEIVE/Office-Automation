<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="ProductPrice.aspx.cs" Inherits="Admin_ProductPrice" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style2 {
            width: 335px;
        }
        .auto-style3 {
            width: 335px;
            height: 23px;
        }
        .auto-style4 {
            height: 23px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style2">Category</td>
            <td>
                <asp:DropDownList ID="ddcat" runat="server" Width="250px" AutoPostBack="True" OnSelectedIndexChanged="ddcat_SelectedIndexChanged">
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="ddcat" ErrorMessage="Select category" InitialValue="--SELECT--" ForeColor="#CC0000"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Sub Category</td>
            <td>
                <asp:DropDownList ID="ddsubcat" runat="server" Width="250px" AutoPostBack="True" OnSelectedIndexChanged="ddsubcat_SelectedIndexChanged">
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="ddsubcat" ErrorMessage="Select SubCategory" InitialValue="--SELECT--" ForeColor="#CC0000"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Name</td>
            <td>
                <asp:DropDownList ID="ddname" runat="server" Width="250px" AutoPostBack="True" >
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="ddname" ErrorMessage="Select Product Name" InitialValue="--SELECT--" ForeColor="#CC0000"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Range</td>
            <td>
                <asp:TextBox ID="txtRange1" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; To&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="txtRange2" runat="server" AutoPostBack="True" OnTextChanged="txtRange2_TextChanged"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Rate</td>
            <td>
                <asp:TextBox ID="txtRate" runat="server"></asp:TextBox>
            &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtRate" ErrorMessage="Enter Rate" ForeColor="#CC0000"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td>
                <asp:Button ID="btSave" runat="server" OnClick="btSave_Click" Text="Save" Width="80px" Height="25px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style3"></td>
            <td class="auto-style4"></td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td>
                <asp:GridView ID="grid" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" OnRowCommand="grid_RowCommand">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="Product_Name" HeaderText="Name" />
                        <asp:BoundField DataField="pdt_range_from" HeaderText="Range From" />
                        <asp:BoundField DataField="pdt_range_to" HeaderText="Range to" />
                        <asp:BoundField DataField="pdt_price" HeaderText="Rate" />
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:LinkButton ID="lbedit" runat="server" CommandArgument='<%# Eval("pdt_price_id") %>' CommandName="ed" CausesValidation="False">Edit</asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:LinkButton ID="lbdelete" runat="server" CommandArgument='<%# Eval("pdt_price_id") %>' CommandName="del" CausesValidation="False">Delete</asp:LinkButton>
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
</asp:Content>


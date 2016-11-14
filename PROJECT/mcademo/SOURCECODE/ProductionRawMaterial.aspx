<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="ProductionRawMaterial.aspx.cs" Inherits="Admin_ProductionRawMaterial" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 85%;
        }
        .auto-style2 {
            font-size: medium;
            text-align: center;
            width: 219px;
            height: 23px;
        }
        .auto-style3 {
            width: 219px;
        }
        .auto-style7 {
            width: 229px;
        }
        .auto-style8 {
            text-align: center;
            font-size: x-large;
        }
        .auto-style9 {
            width: 219px;
            height: 66px;
        }
        .auto-style10 {
            height: 66px;
        }
        .auto-style11 {
            height: 23px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style2"><strong>ProductionRawMaterial</strong></td>
            <td class="auto-style11"></td>
        </tr>
        <tr>
            <td class="auto-style3">Production ID</td>
            <td>
                <asp:DropDownList ID="ddpid" runat="server" Width="250px" OnSelectedIndexChanged="ddpid_SelectedIndexChanged">
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="ddpid" ErrorMessage="Select the Products" InitialValue="--SELECT--" ForeColor="#CC0000"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span style="color: rgb(0, 0, 0); font-family: &quot;Times New Roman&quot;; font-size: x-large; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: 2; text-align: center; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; display: inline !important; float: none;">Raw Materials</span><br />
            </td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td>
                <asp:DataList ID="DataList1" runat="server" RepeatColumns="3">
                    <ItemTemplate>
                        <table class="auto-style1">
                            <tr>
                                <td class="auto-style7">
                                    <asp:CheckBox ID="CheckBox1" runat="server" Text='<%# Eval("Raw_Name") %>' />
                                    <asp:HiddenField ID="HiddenField1" runat="server" Value='<%# Eval("Raw_id") %>' />
                                </td>
                                <td>
                                    <asp:TextBox ID="TextBox1" runat="server" Height="23px" Width="46px"></asp:TextBox>
                                </td>
                            </tr>
                        </table>
                    </ItemTemplate>
                </asp:DataList>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style8">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style9"></td>
            <td class="auto-style10">
                <asp:Button ID="btSave" runat="server" OnClick="btSave_Click" Text="Save" Width="80px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td>
                <asp:GridView ID="grid" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" OnRowCommand="grid_RowCommand" Width="460px">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="Product_Name" HeaderText="Production ID" />
                        <asp:BoundField DataField="Raw_Name" HeaderText="Raw_id" />
                        <asp:BoundField DataField="Raw_quantity" HeaderText="Quantity" />
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:LinkButton ID="lbedit" runat="server" CommandArgument='<%# Eval("Production_RawMaterial_id") %>' CommandName="ed" CausesValidation="False">Edit</asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:LinkButton ID="lbdelete" runat="server" CommandArgument='<%# Eval("Production_RawMaterial_id") %>' CommandName="del" CausesValidation="False">Delete</asp:LinkButton>
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
            <td class="auto-style3">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>


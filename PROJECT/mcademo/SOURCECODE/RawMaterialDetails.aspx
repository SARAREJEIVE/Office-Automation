<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="RawMaterialDetails.aspx.cs" Inherits="Admin_RawMaterialDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            text-decoration: underline;
            text-align: center;
            width: 545px;
        }
        .auto-style3 {
            width: 545px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <fieldset>
        <legend class="auto_legend">RAW MATERIAL DETAILS</legend>
   
    <table class="auto-style1">
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">Material ID</td>
            <td>
                <asp:DropDownList ID="ddid" runat="server" Width="250px">
                </asp:DropDownList>
            &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="ddid" ErrorMessage="Enter Raw material" InitialValue="--SELECT--"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">Date</td>
            <td>
                <asp:TextBox ID="txtdate" runat="server" TextMode="Date" Width="250px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtdate" ErrorMessage="Enter Date"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">Quantity</td>
            <td>
                <asp:TextBox ID="txtQuantity" runat="server" Width="250px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtQuantity" ErrorMessage="Enter The quantiy"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td>
                <asp:Button ID="btSave" runat="server" OnClick="btSave_Click" Text="Save" Width="80px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td>
                <asp:GridView ID="grid" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" AutoGenerateColumns="False" OnRowCommand="grid_RowCommand">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="Raw_id" HeaderText="Raw_id" />
                        <asp:BoundField DataField="Date" HeaderText="Date" />
                        <asp:BoundField DataField="Quantity" HeaderText="Quantity" />
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:LinkButton ID="btedit" runat="server" CommandArgument='<%# Eval("Rmd_id") %>' CommandName="ed">Edit</asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:LinkButton ID="lbdelete" runat="server" CommandArgument='<%# Eval("Rmd_id") %>' CommandName="del">Delete</asp:LinkButton>
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
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
         </fieldset>
</asp:Content>


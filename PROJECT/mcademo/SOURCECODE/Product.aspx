<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="Product.aspx.cs" Inherits="Admin_Product" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style2 {
            height: 23px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
        <tr>
            <td>
                <asp:MultiView ID="MultiView1" runat="server">
                    <table class="auto-style1">
                        <tr>
                            <td>
                                <asp:View ID="View1" runat="server">
                                    <table class="auto-style1">
                                        <tr>
                                            <td>
                                                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="7" ForeColor="#333333" GridLines="None" OnRowCommand="GridView1_RowCommand" Width="641px">
                                                    <AlternatingRowStyle BackColor="White" />
                                                    <Columns>
                                                        <asp:TemplateField>
                                                            <ItemTemplate>
                                                                <asp:LinkButton ID="lbvm" runat="server" CommandArgument='<%# Eval("ProductBooking_id") %>' CommandName="vm">Invoice Number</asp:LinkButton>
                                                            </ItemTemplate>
                                                        </asp:TemplateField>
                                                        <asp:BoundField DataField="buyer_name" HeaderText="Customer Name" />
                                                        <asp:BoundField DataField="Booking_Date" HeaderText="Date" />
                                                        <asp:BoundField DataField="Grand_total" HeaderText="Amount" />
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
                                            <td>&nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td>&nbsp;</td>
                                            <td>&nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td>&nbsp;</td>
                                            <td>&nbsp;</td>
                                        </tr>
                                    </table>
                                </asp:View>
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>
                                <asp:View ID="View2" runat="server">
                                    <table class="auto-style1">
                                        <tr>
                                            <td>
                                                <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" Width="664px" OnRowCommand="GridView2_RowCommand">
                                                    <AlternatingRowStyle BackColor="White" />
                                                    <Columns>
                                                        <asp:TemplateField HeaderText="No">
                                                            <ItemTemplate>
                                                                <asp:Label ID="Label1" runat="server" Text="<%# Container.DataItemIndex+1 %>"></asp:Label>
                                                            </ItemTemplate>
                                                        </asp:TemplateField>
                                                        <asp:BoundField DataField="Quantity" HeaderText="Quantity" />
                                                        <asp:TemplateField HeaderText="Product Name">
                                                            <ItemTemplate>
                                                                <asp:LinkButton ID="LinkButton1" runat="server" CommandArgument='<%# Eval("production_id") %>' CommandName="rawname" Text='<%# Eval("Product_Name") %>'></asp:LinkButton>
                                                            </ItemTemplate>
                                                        </asp:TemplateField>
                                                        <asp:BoundField DataField="Unit_price" HeaderText="Unit Price" />
                                                        <asp:BoundField DataField="total" HeaderText="Total" />
                                                        <asp:TemplateField>
                                                            <ItemTemplate>
                                                                <asp:LinkButton ID="lbgenerate" runat="server" CommandArgument='<%# Eval("PBD_id") %>' CommandName="gen">Generate</asp:LinkButton>
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
                                            <td>&nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td>&nbsp;</td>
                                            <td>&nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td>&nbsp;</td>
                                            <td>&nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" >
                                                    <AlternatingRowStyle BackColor="White" />
                                                    <Columns>
                                                        <asp:TemplateField HeaderText="Number">
                                                            <ItemTemplate>
                                                                 <asp:Label ID="Label1" runat="server" Text="<%# Container.DataItemIndex+1 %>"></asp:Label>
                                                            </ItemTemplate>
                                                        </asp:TemplateField>
                                                        <asp:BoundField DataField="Raw_Name" HeaderText="Raw Material Name" />
                                                        <asp:BoundField DataField="Raw_quantity" HeaderText="Quantity" />
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
                                            <td>&nbsp;</td>
                                        </tr>
                                    </table>
                                </asp:View>
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>
                                <asp:View ID="View3" runat="server">
                                    <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None">
                                        <AlternatingRowStyle BackColor="White" />
                                        <Columns>
                                            <asp:BoundField DataField="Product_SerialNumber" HeaderText="Serial Number" />
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
                                </asp:View>
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                    </table>
                </asp:MultiView>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2"></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>


<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="ProductBooking.aspx.cs" Inherits="Admin_RawPurchaseDatails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 92%;
        }
        .auto-style2 {
            height: 24px;
        }
        .auto-style3 {
            width: 225px;
        }
        .auto-style4 {
            height: 24px;
            width: 252px;
        }
    .auto-style5 {
        width: 84%;
    }
        .auto-style7 {
            width: 40px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   
    <table class="auto-style1" border="1">
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <table class="auto-style1">
                    <tr>
                        <td>TYPE</td>
                        <td>
                            <asp:DropDownList ID="ddtype1" runat="server" Width="200px" AutoPostBack="True" OnSelectedIndexChanged="ddtype1_SelectedIndexChanged">
                                <asp:ListItem>--select--</asp:ListItem>
                                <asp:ListItem>Distributor</asp:ListItem>
                                <asp:ListItem>Customer</asp:ListItem>
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="ddtype1" ErrorMessage="select Type" ForeColor="#CC0000" InitialValue="--select--"></asp:RequiredFieldValidator>
                        </td>
                        <td>DATE : 
                            <asp:Label ID="lbldatetime" runat="server" OnDataBinding="Page_Load"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2"></td>
                        <td class="auto-style2">
                            <asp:DropDownList ID="ddtype2" runat="server" Width="200px">
                                <asp:ListItem>--Select--</asp:ListItem>
                                <asp:ListItem>Arya Agency</asp:ListItem>
                                <asp:ListItem>Rony Electronics</asp:ListItem>
                                <asp:ListItem>Mirach Electronic and products</asp:ListItem>
                                <asp:ListItem>KK Agencies Ltd</asp:ListItem>
                                <asp:ListItem>Hospitals And Equipments Ltd.</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        <td class="auto-style2"></td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>
                            <asp:TextBox ID="txttype" runat="server" Width="200px"></asp:TextBox>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Panel ID="Panel1" runat="server">
                    <table class="auto-style5">
                        <tr>
                            <td>
                                <table class="auto-style1">
                                    <tr>
                                        <td class="auto-style4">&nbsp;</td>
                                        <td class="auto-style7">PRODUCTION</td>
                                        <td class="auto-style3">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style4">Category</td>
                                        <td class="auto-style7">
                                            <asp:DropDownList ID="ddl_cat" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddl_cat_SelectedIndexChanged1" Width="200px">
                                            </asp:DropDownList>
                                        </td>
                                        <td class="auto-style3">
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="ddl_cat" ErrorMessage="Select Category" InitialValue="--SELECT--" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style4">Sub category</td>
                                        <td class="auto-style7">
                                            <asp:DropDownList ID="ddl_subcat" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddl_subcat_SelectedIndexChanged" Width="200px" style="height: 22px">
                                            </asp:DropDownList>
                                        </td>
                                        <td class="auto-style3">
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="ddl_subcat" ErrorMessage="Select SubCategory" InitialValue="--SELECT--" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style4">Name</td>
                                        <td class="auto-style7">
                                            <asp:DropDownList ID="ddl_product" runat="server" Width="200px" OnSelectedIndexChanged="ddl_product_SelectedIndexChanged">
                                            </asp:DropDownList>
                                        </td>
                                        <td class="auto-style3">
                                            <asp:Label ID="lbl_unit_price" runat="server"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style4">Quantity</td>
                                        <td class="auto-style7">
                                            <asp:TextBox ID="txt_quantity" runat="server" Width="191px" OnTextChanged="txt_quantity_TextChanged" AutoPostBack="True"></asp:TextBox>
                                        </td>
                                        <td class="auto-style3">
                                            <asp:Label ID="lbl_total" runat="server"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style4">&nbsp;</td>
                                        <td class="auto-style7">
                                            <asp:Button ID="btn_next0" runat="server" OnClick="btn_next_Click" Text="Next" />
                                        </td>
                                        <td class="auto-style3">&nbsp;</td>
                                    </tr>
                                </table>
                            </td>
                            <td>
                                <asp:GridView ID="gridtemp" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" Width="328px" AutoGenerateColumns="False">
                                    <AlternatingRowStyle BackColor="White" />
                                    <Columns>
                                        <asp:TemplateField>
                                            <ItemTemplate>
                                                <asp:Label ID="Label2" runat="server" Text='<%# Eval("id") %>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:BoundField DataField="item" HeaderText="Item" />
                                        <asp:BoundField DataField="qty" HeaderText="Quantity" />
                                        <asp:BoundField DataField="unitprice" HeaderText="Unit Price" />
                                        <asp:TemplateField>
                                            <ItemTemplate>
                                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("total") %>'></asp:Label>\-
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
                    </table>
                    
                </asp:Panel>
            </td>
        </tr>
        <tr>
            <td>Grand Total : <asp:Label ID="gtotal" runat="server" Text="Label" ForeColor="#FF0066"></asp:Label><strong>\-</strong>
                <table class="auto-style1">
                    <tr>
                        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Button ID="btn_complete" runat="server" OnClick="btn_complete_Click" Text="Complete" CausesValidation="False" />
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
   
</asp:Content>


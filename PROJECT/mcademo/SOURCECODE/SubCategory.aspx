<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="SubCategory.aspx.cs" Inherits="Admin_SubCategory" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 215px;
        }
        .auto-style3 {
            width: 215px;
            height: 108px;
        }
        .auto-style4 {
            height: 108px;
        }
        .auto-style5 {
            width: 215px;
            height: 21px;
        }
        .auto-style6 {
            height: 21px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <fieldset>
        <legend class="auto_legend">PRODUCTION SUB CATEGORY</legend>
   
    <table class="auto-style1">
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">Category </td>
            <td>
                <asp:DropDownList ID="ddcat" runat="server" Width="250px">
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="ddcat" ErrorMessage="Enter Category" InitialValue="--SELECT--"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Name</td>
            <td>
                <asp:TextBox ID="txtname" runat="server" Width="250px" AutoPostBack="True" OnTextChanged="txtname_TextChanged"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtname" ErrorMessage="Enter Name"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td>
                <asp:Button ID="btsave" runat="server" OnClick="btsave_Click" Text="Save" Width="80px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3"></td>
            <td class="auto-style4">
                <asp:GridView ID="grid" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" OnRowCommand="grid_RowCommand" Height="185px" Width="619px" >
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                         <asp:TemplateField >
                             <ItemTemplate>
                                <asp:Label ID="lbl_in" runat="server" text='<%#Container.DataItemIndex+1 %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="pdt_cat_name" HeaderText="Category" />
                        <asp:BoundField DataField="sub_cat_name" HeaderText="Name" />
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:LinkButton ID="Edit" runat="server" CommandArgument='<%# Eval("sub_cat_id") %>' CommandName="ed" CausesValidation="False">Edit</asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:LinkButton ID="Delete" runat="server" CommandArgument='<%# Eval("sub_cat_id") %>' CommandName="del" CausesValidation="False">Delete</asp:LinkButton>
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
            <td class="auto-style5"></td>
            <td class="auto-style6"></td>
        </tr>
        <tr>
            <td class="auto-style5"></td>
            <td class="auto-style6"></td>
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
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
         </fieldset>
</asp:Content>


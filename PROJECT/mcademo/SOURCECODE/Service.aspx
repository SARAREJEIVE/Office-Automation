<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="Service.aspx.cs" Inherits="Admin_Service" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 282px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="wrapper">
        <tr>
            <td class="auto-style1">Serial Number</td>
            <td>
                <asp:TextBox ID="txtsn" runat="server"></asp:TextBox>
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
            </td>
        </tr>
        </table>
    <table class="wrapper">
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td>
                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td>
                <asp:LinkButton ID="LinkButton1" runat="server">Service Details</asp:LinkButton>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>


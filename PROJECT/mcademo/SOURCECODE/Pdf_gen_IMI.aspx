<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="Pdf_gen_IMI.aspx.cs" Inherits="Admin_Pdf_gen_IMI" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div>
        <asp:Button ID="btnPDF" runat="server" Text="PDF" OnClick="btnPDF_Click1" />
    </div>
</asp:Content>


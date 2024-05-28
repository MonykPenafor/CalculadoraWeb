<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="CalculadoraWeb.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <main aria-labelledby="title">

    Informe seu nome:<asp:TextBox ID="txtNome" runat="server"></asp:TextBox>
    <asp:Button runat="server" ID="btnAddNome" OnClick="btnAddNome_Click" Text="Adicionar"/>

    <asp:Label Text="Nomes" runat="server" ID="lblNomes"></asp:Label>
    </main>
</asp:Content>

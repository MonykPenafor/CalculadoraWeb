<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Clientes.aspx.cs" Inherits="CalculadoraWeb.Clientes" %>

<asp:Content ID="Content2" ContentPlaceHolderID="Head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Relação de Clientes</h1>
    <asp:Button runat="server" ID="ListaClientesButton" Text="Carregar uma relação de Clientes" OnClick="ListaClientesButton_Click" />
    Consultar por nome:<asp:TextBox runat="server" ID="FiltrarClientesTextBox" />
    <asp:Button runat="server" ID="FiltrarClienteButton" Text="Filtrar" OnClick="FiltrarClienteButton_Click" />
    <asp:Button runat="server" ID="CadastrarClienteButton" Text="Cadastrar" OnClick="CadastrarClienteButton_Click" />
    <asp:Label runat="server" ID="StatusLabel" />

    <asp:DataGrid runat="server" ID="RelacaoDeClientesGrid" />
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="footer" runat="server">
</asp:Content>



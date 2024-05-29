<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="CalculadoraWeb.About" %>
<%@ Register TagPrefix="calc" TagName="Fibonacci" Src="~/CalculadoraFibonacci.ascx" %>
<%@ Register TagPrefix="calc" TagName="Juros" Src="~/CalculadoraDeJuros.ascx" %>


<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <main aria-labelledby="CALCULADORA WEB">

        <h1>CALCULADORA WEB</h1>
        <br />

        <div>
            <asp:Button runat="server" Text="Fibonacci" OnClick="btnDisplayFibonacci_click" /><br /><br />
            <asp:Button runat="server" Text="Juros Composto" OnClick="btnDisplayJurosComposto_click" /><br /><br />
            <asp:Button runat="server" Text="Simulação de Financiamento" OnClick="btnDisplaySimulacaoFinanciamento_click" /><br /><br />
            <asp:Button runat="server" Text="Gerador De Nomes" OnClick="btnDisplayGeradorDeNomes_click" />
        </div>
        <br />

        <asp:Panel runat="server" ID="pnlFibonacci" Visible="false">
            <calc:Fibonacci runat="server" ID="FibonacciCalc"></calc:Fibonacci>
        </asp:Panel>

        <asp:Panel runat="server" ID="pnlJurosComposto" Visible="false">
            <calc:Juros runat="server" Nome="Teste" ID="JurosCalc"></calc:Juros>
        </asp:Panel>

        <asp:Panel runat="server" ID="pnlSimulacaoDeFinanciamento" Visible="false">
            <: runat="server" ID="FinanciamentoCalc"></:>
        </asp:Panel>

        <asp:Panel runat="server" ID="pnlGeradorDeNomes" Visible="false">
            <: runat="server" ID="GeradorNomes"></:>
        </asp:Panel>

    </main>
</asp:Content>

<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="CalculadoraWeb.About" %>

<%@ Register TagPrefix="calc" TagName="Fibonacci" Src="~/CalculadoraFibonacci.ascx" %>
<%@ Register TagPrefix="calc" TagName="Juros" Src="~/CalculadoraDeJuros.ascx" %>


<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <main aria-labelledby="Calculadora Web">

        <h1>Calculadora Web</h1>
        <br />

        <div>
            <asp:Button runat="server" Text="Fibonacci" OnClick="btnDisplayFibonacci_click" />
            <br />
            <br />
            <asp:Button runat="server" Text="Juros Composto" OnClick="btnDisplayJurosComposto_click" />
        </div>
        <br />

        <asp:Panel runat="server" ID="pnlFibonacci" Visible="false">
            <calc:Fibonacci runat="server" ID="FibonacciCalc"></calc:Fibonacci>
        </asp:Panel>


        <asp:Panel runat="server" ID="pnlJurosComposto" Visible="false">
            <calc:Juros Nome="Teste Simples" runat="server" ID="JurosCalc"></calc:Juros>
        </asp:Panel>


    </main>
</asp:Content>

<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="CalculadoraFibonacci.ascx.cs" Inherits="CalculadoraWeb.CalculadoraFibonacci" %>

<h1>CALCULADORA FIBONACCI</h1>

    Informe a quantidade de numeros Fibonacci a serem calculados:<asp:TextBox ID="txt1" runat="server" Text="10" OnTextChanged="txt1_TextChanged"></asp:TextBox>
    <asp:Label ID="TextoModificado" Text="Valor Original" runat="server"></asp:Label>
    <br />  

    Quantidade de Visitas na Pagina: <asp:Label ID="lblVisitas" runat="server"></asp:Label>
    <br />  

    Quantidade de Alterações: <asp:Label ID="lblAlteracoes" runat="server"></asp:Label>
    <br />

    <asp:Button ID="btn1" runat="server" Text="Calcular Fibonacci" OnClick="btn1_Click"/>
    <br />

    <asp:Label ID="lbl1" runat="server" Text="Fibonacci Numeros"></asp:Label>
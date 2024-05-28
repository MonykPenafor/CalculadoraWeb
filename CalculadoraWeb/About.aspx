<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="CalculadoraWeb.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <main aria-labelledby="title">
        <h1>Calculadora Web</h1>

        <div>
            <asp:Button runat="server" Text="Fibonacci" OnClick="btnDisplayFibonacci_click"/>
            <br />
            <br />
            <br />
            <asp:Button runat="server" Text="Juros Composto" OnClick="btnDisplayJurosComposto_click"/>
        </div>


        <asp:Panel runat="server" ID="pnlFibonacci" Visible="false">
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

        </asp:Panel>

        <br />    
        <br />

        <asp:Panel runat="server" ID="pnlJurosComposto" Visible="false">
        <h1>CALCULADORA DE JUROS COMPOSTO</h1>

            Informe a quantidade de parcelas:<asp:TextBox ID="txtQuantidadeParcelas" runat="server"></asp:TextBox>
            Informe a taxa:<asp:TextBox ID="txtTaxa" runat="server"></asp:TextBox>
            Informe quantos meses:<asp:TextBox ID="txtMeses" runat="server"></asp:TextBox>
            <br />

            <asp:Button ID="Button1" runat="server" Text="Calcular Juros" OnClick="btnCalcularJurosComposto_click"/>
            
        
            <br />  

            Montante: <asp:Label ID="lblMontante" runat="server"></asp:Label>
              
        </asp:Panel>


    </main>
</asp:Content>

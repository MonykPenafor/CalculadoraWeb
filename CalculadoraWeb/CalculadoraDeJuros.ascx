<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="CalculadoraDeJuros.ascx.cs" Inherits="CalculadoraWeb.CalculadoraDeJuros" %>



<h2>CALCULADORA DE JUROS</h2>
<h3><%=Nome %></h3>

<h4>Calculando Juros Compostos</h4><br />

    Informe o valor da parcelas:<asp:TextBox ID="txtParcela" runat="server"></asp:TextBox>
    <br />
    Informe a taxa:<asp:TextBox ID="txtTaxa" runat="server"></asp:TextBox>
    <br />
    Informe quantos meses:<asp:TextBox ID="txtMeses" runat="server"></asp:TextBox>  
    <br /><br />

    <asp:Button ID="btnCalcularJurosComposto" runat="server" Text="Calcular" OnClick="btnCalcularJurosComposto_click" /><br />

    Montante:<asp:Label ID="lblMontante" runat="server"></asp:Label><br /><br />

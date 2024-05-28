<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="CalculadoraDeJuros.ascx.cs" Inherits="CalculadoraWeb.CalculadoraDeJuros" %>
<%@ Register TagPrefix="d" TagName="LinhaSimulacao" Src="~/LinhaSimulacaoParcela.ascx" %>


<h1>CALCULADORA DE JUROS</h1>


<br />

Informe o tipo de juro:

     <select name="OpcaoDeCalculo" runat="server" id="sltOpcaoDeJuros">
         <option value="0">Selecione</option>
         <option value="1">Simples</option>
         <option value="2">Composto</option>
         <option value="3">Financiamento</option>
     </select>


Informe a quantidade de parcelas:<asp:TextBox ID="txtParcela" runat="server"></asp:TextBox>
Informe a taxa:<asp:TextBox ID="txtTaxa" runat="server"></asp:TextBox>
Informe quantos meses:<asp:TextBox ID="txtMeses" runat="server"></asp:TextBox>
<br />

<asp:Button ID="btnCalcularJurosComposto" runat="server" Text="Calcular" OnClick="btnCalcularJurosComposto_click" />

<br />

Montante:
<asp:Label ID="lblMontante" runat="server"></asp:Label>


Vamos simular um Financiamento que cobra juros compostos?

     Informe o valor do financiamento:<asp:TextBox ID="txtValorFinanciamento" runat="server"></asp:TextBox>
Agora informe o valor da taxa:
<asp:TextBox ID="txtValorTaxa" runat="server"></asp:TextBox>
Quantas parcelas pode ter o financiamento?:<asp:TextBox ID="txtQuantidadeDeParcelas" runat="server"></asp:TextBox>

<asp:Button ID="btnSimularFinanciamento" runat="server" Text="Calcular" OnClick="btnSimularFinanciamento_click" />


<br />

<asp:Label ID="lblMensagem" runat="server"></asp:Label>
<asp:Label ID="lblResultado" runat="server"></asp:Label>


<asp:Repeater runat="server" ID="rptrSimulacao">

    <HeaderTemplate>

    </HeaderTemplate>

    <ItemTemplate>
        <tr>
        </tr>
    </ItemTemplate>

    <AlternatingItemTemplate>
        <tr style="background-color: #ccc">
        </tr>
    </AlternatingItemTemplate>

    <FooterTemplate>
        </table>
    </FooterTemplate>

</asp:Repeater>


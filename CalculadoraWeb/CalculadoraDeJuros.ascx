<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="CalculadoraDeJuros.ascx.cs" Inherits="CalculadoraWeb.CalculadoraDeJuros" %>
<%@ Register TagPrefix="d" TagName="LinhaSimulacao" Src="~/LinhaSimulacaoParcela.ascx" %>


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


<h4>Vamos simular um Financiamento que cobra juros compostos?</h4><br /><br /><br />

Informe o valor do financiamento:<asp:TextBox ID="txtValorFinanciamento" runat="server"></asp:TextBox><br />
Agora informe o valor da taxa: <asp:TextBox ID="txtValorTaxa" runat="server"></asp:TextBox><br />
Quantas parcelas pode ter o financiamento?:<asp:TextBox ID="txtQuantidadeDeParcelas" runat="server"></asp:TextBox><br />
<br />

<asp:Button ID="btnSimularFinanciamento" runat="server" Text="Calcular" OnClick="btnSimularFinanciamento_click" /><br />

<br /><br />

<asp:Label ID="lblMensagem" runat="server"></asp:Label>
<asp:Label ID="lblResultado" runat="server"></asp:Label>


<asp:Repeater runat="server" ID="rptrSimulacao">

    <HeaderTemplate>

    </HeaderTemplate>

    <ItemTemplate>
    </ItemTemplate>

    <AlternatingItemTemplate>
    </AlternatingItemTemplate>

    <FooterTemplate>
        </table>
    </FooterTemplate>

</asp:Repeater>


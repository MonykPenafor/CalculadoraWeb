﻿<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="CalculadoraSimulacaoFinanciamento.ascx.cs" Inherits="CalculadoraWeb.CalculadoraSimulacaoFinanciamento" %>
<%@ Register TagPrefix="design" TagName="LinhaSimulacao" Src="~/LinhaSimulacaoParcela.ascx" %>

<h4>Vamos simular um Financiamento que cobra juros compostos?</h4>
<br />
<br />
<br />

Informe o valor do financiamento:<asp:TextBox ID="txtValorFinanciamento" runat="server"></asp:TextBox><br />
Agora informe o valor da taxa:
<asp:TextBox ID="txtValorTaxa" runat="server"></asp:TextBox><br />
Quantas parcelas pode ter o financiamento?:<asp:TextBox ID="txtQuantidadeDeParcelas" runat="server"></asp:TextBox><br />
<br />

<asp:Button ID="btnSimularFinanciamento" runat="server" Text="Calcular" OnClick="btnSimularFinanciamento_click" /><br />

<br />
<br />

<asp:Label ID="lblMensagem" runat="server"></asp:Label>

<asp:Repeater runat="server" ID="rptrSimulacao">

    <HeaderTemplate>
        <table width="100%">
            <tr>
                <th>Simulação</th>
                <th>Total</th>
                <th>Juros</th>
                <th>Vencimento</th>
            </tr>
    </HeaderTemplate>

    <ItemTemplate>
        <tr>
        <design:LinhaSimulacao runat="server" Linha="<%#Container.DataItem %>"/>
        </tr>
    </ItemTemplate>

    <AlternatingItemTemplate>
        <tr style="background-color: #ccc">
        <design:LinhaSimulacao runat="server" Linha="<%#Container.DataItem %>"/>
        </tr>
    </AlternatingItemTemplate>

    <FooterTemplate>
        </table>
   
    </FooterTemplate>

</asp:Repeater>

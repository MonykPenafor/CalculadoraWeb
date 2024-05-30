<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="CalculadoraSimulacaoFinanciamento.ascx.cs" Inherits="CalculadoraWeb.CalculadoraSimulacaoFinanciamento" %>
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
            <td><%# DataBinder.Eval(Container.DataItem,"Quantidade")%> x <%# DataBinder.Eval(Container.DataItem,"ValorParcela") %></td>
            <td><big>R$ <%# DataBinder.Eval(Container.DataItem,"ValorTotal")%></big></td>
            <td><small>R$ <%# DataBinder.Eval(Container.DataItem,"TotalDeJuros") %></small></td>
            <td><b><%# ((DateTime)DataBinder.Eval(Container.DataItem,"Vencimento")).ToString("dd/MM/yyyy") %></b></td>
        </tr>
    </ItemTemplate>

    <AlternatingItemTemplate>
        <tr style="background-color: #ccc">
            <td><%# DataBinder.Eval(Container.DataItem,"Quantidade")%> x <%# DataBinder.Eval(Container.DataItem,"ValorParcela") %></td>
            <td><big>R$ <%# DataBinder.Eval(Container.DataItem,"ValorTotal")%></big></td>
            <td><small>R$ <%# DataBinder.Eval(Container.DataItem,"TotalDeJuros") %></small></td>
            <td><b><%# ((DateTime)DataBinder.Eval(Container.DataItem,"Vencimento")).ToString("dd/MM/yyyy") %></b></td>
        </tr>
    </AlternatingItemTemplate>

    <FooterTemplate>
        </table>
   
    </FooterTemplate>

</asp:Repeater>

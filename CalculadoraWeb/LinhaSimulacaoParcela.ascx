<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="LinhaSimulacaoParcela.ascx.cs" Inherits="CalculadoraWeb.LinhaSimulacaoParcela" %>

<td><%= Linha.Quantidade %> x <%= Linha.ValorParcela %></td>
<td><big>R$ <%= Linha.ValorTotal%></big></td>
<td><small>R$ <%= Linha.TotalDeJuros %></small></td>
<td><b><%=Linha.Vencimento.ToString("dd/MM/yyyy") %></b></td>
       



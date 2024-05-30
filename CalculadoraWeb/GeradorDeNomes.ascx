<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="GeradorDeNomes.ascx.cs" Inherits="CalculadoraWeb.GeradorDeNomes" %>


<script>




</script>


<h2>GERADOR DE NOMES</h2>

Informe um nome para ser adicionado:<asp:TextBox ID="txtNome" runat="server"></asp:TextBox>
<br />
<asp:Button ID="btnAddNome" runat="server" Text="Add" OnClick="btnAddNome_click" /><br />

<br />
<br />

<asp:Repeater runat="server" ID="rptrNomes">

    <HeaderTemplate>
        <table width="100%">
            <tr>
                <th>Nomes</th>
            </tr>
    </HeaderTemplate>

    <ItemTemplate>
        <tr>
            <td><a href="#" onclick="alert('<%#Container.DataItem%>')"><%#Container.DataItem%></a></td>
        </tr>
    </ItemTemplate>

    <AlternatingItemTemplate>
        <tr style="background-color: #ccc">
            <td><a href="#" onclick="alert('<%#Container.DataItem%>')"><%#Container.DataItem%></a></td>
        </tr>
    </AlternatingItemTemplate>

    <FooterTemplate></table></FooterTemplate>

</asp:Repeater>

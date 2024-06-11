<%@ Page Title="CALCULADORA COMPLETA" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CalculadoraCompleta.aspx.cs" Inherits="CalculadoraWeb.CalculadoraCompleta" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <h1>CALCULADORA COMPLETA</h1>

    <div class="row m-2">
        <div class="col">
            Primeiro:<asp:Label runat="server" ID="lblPrimeiroNumero" Text="0" CssClass="calc-numero"></asp:Label>
        </div>
    </div>

    <div class="row m-2">
        <div class="col">
            Atual:<asp:Label runat="server" ID="lblNumeroAtual" Text="0" CssClass="calc-numero"></asp:Label>
            <input id="NumeroAtualHidden" runat="server" type="hidden" value="0" />
        </div>
    </div>


    <div class="row m-2">
        <div class="col-2">
            <button class="btn btn-primary btn-lg" onclick="adicionarDigito(''); return false;"></button>
        </div>

        <div class="col-2">
            <button class="btn btn-primary btn-lg" onclick="adicionarDigito(''); return false;"></button>
        </div>

        <div class="col-2">
            <asp:Button runat="server" ID="btnLimpar" Text="C" CssClass="btn btn-primary btn-lg" OnClick="btnLimpar_Click" />
        </div>

        <div class="col-2">
            <asp:Button runat="server" ID="btnOperacaoDividir" Text="/" CssClass="btn btn-primary btn-lg" OnClick="btnOperacaoDividir_Click" />
        </div>
    </div>


    <div class="row m-2">
        <div class="col-2">
            <button class="btn btn-primary btn-lg" onclick="adicionarDigito('7'); return false;">7</button>
        </div>

        <div class="col-2">
            <button class="btn btn-primary btn-lg" onclick="adicionarDigito('8'); return false;">8</button>
        </div>

        <div class="col-2">
            <button class="btn btn-primary btn-lg" onclick="adicionarDigito('9'); return false;">9</button>
        </div>
        <div class="col-2">
            <asp:Button runat="server" ID="btnOperacaoMultiplicar" Text="*" CssClass="btn btn-primary btn-lg" OnClick="btnOperacaoMultiplicar_Click" />
        </div>
    </div>


    <div class="row m-2">
        <div class="col-2">
            <button class="btn btn-primary btn-lg" onclick="adicionarDigito('4'); return false;">4</button>
        </div>

        <div class="col-2">
            <button class="btn btn-primary btn-lg" onclick="adicionarDigito('5'); return false;">5</button>
        </div>

        <div class="col-2">
            <button class="btn btn-primary btn-lg" onclick="adicionarDigito('6'); return false;">6</button>
        </div>

        <div class="col-2">
            <asp:Button runat="server" ID="btnOperacaoSubtrair" Text="-" CssClass="btn btn-primary btn-lg" OnClick="btnOperacaoSubtrair_Click" />
        </div>
    </div>


    <div class="row m-2">
        <div class="col-2">
            <button class="btn btn-primary btn-lg" onclick="adicionarDigito('1'); return false;">1</button>
        </div>

        <div class="col-2">
            <button class="btn btn-primary btn-lg" onclick="adicionarDigito('2'); return false;">2</button>
        </div>

        <div class="col-2">
            <button class="btn btn-primary btn-lg" onclick="adicionarDigito('3'); return false;">3</button>
        </div>

        <div class="col-2">
            <asp:Button runat="server" ID="btnOperacaoSomar" Text="+" CssClass="btn btn-primary btn-lg" OnClick="btnOperacaoSomar_Click" />
        </div>
    </div>


    <div class="row m-2">
        <div class="col-2">
            <button class="btn btn-primary btn-lg" onclick="adicionarDigito(''), return false;"></button>
        </div>

        <div class="col-2">
            <asp:Button runat="server" ID="btnNumero0" Text="0" CssClass="btn btn-secondary btn-lg" OnClick="btnNumero0_Click" />
        </div>

        <div class="col-2">
            <asp:Button runat="server" ID="btnVirgula" Text="," CssClass="btn btn-secondary btn-lg" OnClick="btnVirgula_Click" />
        </div>
        <div class="col-2">
            <asp:Button runat="server" ID="btnIgual" Text="=" CssClass="btn btn-primary btn-lg" OnClick="btnIgual_Click" />
        </div>

    </div>

    <script>

        var labelComNumero = "<%=lblNumeroAtual.ClientID%>";
        var componenteEscondido = "<%=NumeroAtualHidden.ClientID%>";
        
    </script>

    <script src="Scripts/scripts.js"></script>

</asp:Content>

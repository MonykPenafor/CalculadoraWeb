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

        </div>
    </div>

    <div class="row m-2">
        <div class="col-2">
            <asp:Button runat="server" ID="Button1" Text="" CssClass="btn" />
        </div>

        <div class="col-2">
            <asp:Button runat="server" ID="Button2" Text="" CssClass="btn"/>
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
            <asp:Button runat="server" ID="btnNumero7" Text="7" CssClass="btn btn-secondary btn-lg" OnClick="btnAddNumero_Click" />
        </div>

        <div class="col-2">
            <asp:Button runat="server" ID="btnNumero8" Text="8" CssClass="btn btn-secondary btn-lg" OnClick="btnAddNumero_Click" />
        </div>

        <div class="col-2">
            <asp:Button runat="server" ID="btnNumero9" Text="9" CssClass="btn btn-secondary btn-lg" OnClick="btnAddNumero_Click" />
        </div>

        <div class="col-2">
            <asp:Button runat="server" ID="btnOperacaoMultiplicar" Text="*" CssClass="btn btn-primary btn-lg" OnClick="btnOperacaoMultiplicar_Click" />
        </div>
    </div>


    <div class="row m-2">
        <div class="col-2">
            <asp:Button runat="server" ID="btnNumero4" Text="4" CssClass="btn btn-secondary btn-lg" OnClick="btnAddNumero_Click" />
        </div>

        <div class="col-2">
            <asp:Button runat="server" ID="btnNumero5" Text="5" CssClass="btn btn-secondary btn-lg" OnClick="btnAddNumero_Click" />
        </div>

        <div class="col-2">
            <asp:Button runat="server" ID="btnNumero6" Text="6" CssClass="btn btn-secondary btn-lg" OnClick="btnAddNumero_Click" />
        </div>

        <div class="col-2">
            <asp:Button runat="server" ID="btnOperacaoSubtrair" Text="-" CssClass="btn btn-primary btn-lg" OnClick="btnOperacaoSubtrair_Click" />
        </div>
    </div>

    <div class="row m-2">
        <div class="col-2">
            <asp:Button runat="server" ID="btnNumero1" Text="1" CssClass="btn btn-secondary btn-lg" OnClick="btnAddNumero_Click" />
        </div>

        <div class="col-2">
            <asp:Button runat="server" ID="btnNumero2" Text="2" CssClass="btn btn-secondary btn-lg" OnClick="btnAddNumero_Click" />
        </div>

        <div class="col-2">
            <asp:Button runat="server" ID="btnNumero3" Text="3" CssClass="btn btn-secondary btn-lg" OnClick="btnAddNumero_Click" />
        </div>

        <div class="col-2">
            <asp:Button runat="server" ID="btnOperacaoSomar" Text="+" CssClass="btn btn-primary btn-lg" OnClick="btnOperacaoSomar_Click" />
        </div>

    </div>

    <div class="row m-2">

        <div class="col-2">
            <asp:Button runat="server" ID="Button4" Text="" CssClass="btn"/>
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


</asp:Content>

<%@ Page Title="CALCULADORA COMPLETA" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CalculadoraCompleta.aspx.cs" Inherits="CalculadoraWeb.CalculadoraCompleta" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <h1>CALCULADORA COMPLETA</h1>

    <div class="row m-2">
        <div class="col">
            Primeiro:<asp:Label runat="server" ID="lblPrimeiroNumero"></asp:Label>
        </div>
    </div>
    <div class="row m-2">
        <div class="col">
            Atual:<asp:Label runat="server" ID="lblNumeroAtual" Text="0"></asp:Label>

        </div>
    </div>


    <div class="row m-2">
        <div class="col-4">
            <asp:Button runat="server" ID="btnNumero7" Text="7" CssClass="btn btn-secondary btn-lg" OnClick="btnNumero7_Click" />
        </div>

        <div class="col-4">
            <asp:Button runat="server" ID="btnNumero8" Text="8" CssClass="btn btn-secondary btn-lg" OnClick="btnNumero8_Click" />
        </div>

        <div class="col-4">
            <asp:Button runat="server" ID="btnNumero9" Text="9" CssClass="btn btn-secondary btn-lg" OnClick="btnNumero9_Click" />
        </div>
    </div>

    <div class="row m-2">
        <div class="col-4">
            <asp:Button runat="server" ID="btnNumero4" Text="4" CssClass="btn btn-secondary btn-lg" OnClick="btnNumero4_Click" />
        </div>

        <div class="col-4">
            <asp:Button runat="server" ID="btnNumero5" Text="5" CssClass="btn btn-secondary btn-lg" OnClick="btnNumero5_Click" />
        </div>

        <div class="col-4">
            <asp:Button runat="server" ID="btnNumero6" Text="6" CssClass="btn btn-secondary btn-lg" OnClick="btnNumero6_Click" />
        </div>
    </div>

    <div class="row m-2">
        <div class="col-4">
            <asp:Button runat="server" ID="btnNumero1" Text="1" CssClass="btn btn-secondary btn-lg" OnClick="btnNumero1_Click" />
        </div>

        <div class="col-4">
            <asp:Button runat="server" ID="btnNumero2" Text="2" CssClass="btn btn-secondary btn-lg" OnClick="btnNumero2_Click" />
        </div>

        <div class="col-4">
            <asp:Button runat="server" ID="btnNumero3" Text="3" CssClass="btn btn-secondary btn-lg" OnClick="btnNumero3_Click" />
        </div>
    </div>

    <div class="row m-2">
        <div class="col-4">
            <asp:Button runat="server" ID="btnOperacaoSubtrair" Text="-" CssClass="btn btn-primary btn-log" OnClick="btnOperacaoSubtrair_Click"/>
        </div>

        <div class="col-4">
            <asp:Button runat="server" ID="btnNumero0" Text="0" CssClass="btn btn-secondary btn-lg" OnClick="btnNumero0_Click" />
        </div>

        <div class="col-4">
            <asp:Button runat="server" ID="btnOperacaoSomar" Text="+" CssClass="btn btn-primary btn-log" OnClick="btnOperacaoSomar_Click"/>
        </div>
    </div>


</asp:Content>

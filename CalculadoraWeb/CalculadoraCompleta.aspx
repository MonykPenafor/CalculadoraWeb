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
            <button Class="btn btn-primary btn-lg" onclick="adicionarDigito(''); return false;"></button>
        </div>

        <div class="col-2">
            <button Class="btn btn-primary btn-lg" onclick="adicionarDigito(''); return false;"></button>
        </div>

        <div class="col-2">
        <button Class="btn btn-primary btn-lg" onclick="adicionarDigito(''); return false;"></button>
        </div>
        <div class="col-2">
        <button Class="btn btn-primary btn-lg" onclick="adicionarDigito(''); return false;"></button>
        </div>
    </div>


    <div class="row m-2">
        <div class="col-2
        <button Class="btn btn-primary btn-lg" onclick="adicionarDigito(''); return false;"></button>
        </div>

        <div class="col-2">
        <button Class="btn btn-primary btn-lg" onclick="adicionarDigito(''); return false;"></button>
        </div>

        <div class="col-2">
        <button Class="btn btn-primary btn-lg" onclick="adicionarDigito(''); return false;"></button>
        </div>

        <div class="col-2">
        <button Class="btn btn-primary btn-lg" onclick="adicionarDigito(''); return false;"></button>
        </div>
    </div>


    <div class="row m-2">
        <div class="col-2">
        <button Class="btn btn-primary btn-lg" onclick="adicionarDigito(''); return false;"></button>
        </div>

        <div class="col-2">
        <button Class="btn btn-primary btn-lg" onclick="adicionarDigito(''); return false;"></button>
        </div>

        <div class="col-2">
        <button Class="btn btn-primary btn-lg" onclick="adicionarDigito(''); return false;"></button>
        </div>

        <div class="col-2">
        <button Class="btn btn-primary btn-lg" onclick="adicionarDigito(''); return false;"></button>
        </div>
    </div>


    <div class="row m-2">
        <div class="col-2">
        <button Class="btn btn-primary btn-lg" onclick="adicionarDigito(''); return false;"></button>
        </div>

        <div class="col-2">
        <button Class="btn btn-primary btn-lg" onclick="adicionarDigito(''); return false;"></button>
        </div>

        <div class="col-2">
        <button Class="btn btn-primary btn-lg" onclick="adicionarDigito(''); return false;"></button>
        </div>

        <div class="col-2">
        <button Class="btn btn-primary btn-lg" onclick="adicionarDigito(''); return false;"></button>
        </div>

    </div>

    <div class="row m-2">

        <div class="col-2">
        <button Class="btn btn-primary btn-lg" onclick="adicionarDigito(''); return false;"></button>
        </div>

        <div class="col-2">
        <button Class="btn btn-primary btn-lg" onclick="adicionarDigito(''); return false;"></button>
        </div>
        
        <div class="col-2">
        <button Class="btn btn-primary btn-lg" onclick="adicionarDigito(''); return false;"></button>
        </div>

        <div class="col-2">
        <button Class="btn btn-primary btn-lg" onclick="adicionarDigito(''); return false;"></button>
        </div>

    </div>

    <button id="btnTeste" onclick="calcular(); return false;">Clique Aqui</button>


    <input type="hidden" id="NumeroEscondidoHidden" runat="server" value="123"/>


    Numero Escondido <asp:Label runat="server" ID="lblNumeroEscondido"></asp:Label>


    <script>
        function adicionarDigito(digito) {
            var hid = document.getElementById("<%=NumeroAtualHidden.ClientID%>");
            hid.value += digito;

            var lab = document.getElementById("<%=NumeroAtualLabel.ClientID%>");
            lab.innerText += digito;
        }

    </script>

</asp:Content>

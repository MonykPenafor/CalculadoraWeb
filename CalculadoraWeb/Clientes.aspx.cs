using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace CalculadoraWeb
{
	public partial class Clientes : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{
			StatusLabel.Text = string.Empty;
		}

		protected void ListaClientesButton_Click(object sender, EventArgs e)
		{
			var banco = new BancoDeDados();
			var sql = "select Nome, Cidade from vwCliente order by Nome";
			var tabela = banco.Consultar(sql);

			RelacaoDeClientesGrid.DataSource = tabela;
			RelacaoDeClientesGrid.DataBind();
		}

		protected void FiltrarClienteButton_Click(object sender, EventArgs e)
		{
			var banco = new BancoDeDados();
			var sql = "select Nome, Cidade from vwCliente where Nome like '%' + @filtro + '%' order by Nome";
			var tabela = banco.Consultar(sql,
				new[] { "@filtro" },
				new[] { FiltrarClientesTextBox.Text });

			RelacaoDeClientesGrid.DataSource = tabela;
			RelacaoDeClientesGrid.DataBind();
		}

		protected void CadastrarClienteButton_Click(object sender, EventArgs e)
		{
			var banco = new BancoDeDados();
			var sql = "insert into Cliente (Nome) Values (@nomeCliente)";
			banco.Executar(sql,
				new[] { "@nomeCliente" },
				new[] { FiltrarClientesTextBox.Text });

			StatusLabel.Text = "Cliente cadastro com sucesso!";
		}
	}
}
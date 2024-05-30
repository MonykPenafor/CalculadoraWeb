using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CalculadoraWeb
{
	public partial class CalculadoraSimulacaoFinanciamento : System.Web.UI.UserControl
	{
		protected void Page_Load(object sender, EventArgs e)
		{

		}

		protected void btnSimularFinanciamento_click(object sender, EventArgs e)
		{
			var calculadora = new Calculadora();

			if (decimal.TryParse(txtValorFinanciamento.Text, out decimal valor))
			{
				if (decimal.TryParse(txtValorTaxa.Text, out decimal taxa))
				{
					if (Int32.TryParse(txtQuantidadeDeParcelas.Text, out int parcelas))
					{
						var simulacao = calculadora.CalcularSimulacaoDeFinanciamentos(valor, taxa, parcelas, database: DateTime.Now.Date);

						lblMensagem.Text = "Financiamento calculado com sucesso!";

						rptrSimulacao.DataSource = simulacao;
						rptrSimulacao.DataBind();

					}
					else
					{
						lblMensagem.Text = "Informe uma quantidade valida";
					}
				}
				else
				{
					lblMensagem.Text = "Informe uma taxa valida";
				}
			}
			else
			{
				lblMensagem.Text = "Informe um Valor de Financiamento valido";
			}
		}



	}
}
using Microsoft.Ajax.Utilities;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CalculadoraWeb
{
	public partial class CalculadoraDeJuros : System.Web.UI.UserControl
	{
		public string Nome { get; set; }

		protected void Page_Load(object sender, EventArgs e)
		{

		}


		protected void btnCalcularJurosComposto_click(object sender, EventArgs e)
		{
			decimal parcela = Convert.ToDecimal(txtParcela.Text);
			decimal taxa = Convert.ToDecimal(txtTaxa.Text);
			int meses = Convert.ToInt32(txtMeses.Text);

			Calculadora calculadora = new Calculadora();
			decimal montante = calculadora.CalcularValorMontanteComJurosCompostos(parcela, taxa, meses);

			lblMontante.Text = montante.ToString();
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
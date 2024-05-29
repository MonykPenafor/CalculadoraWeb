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


	
	}
}
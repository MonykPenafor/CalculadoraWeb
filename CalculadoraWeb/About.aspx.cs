using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CalculadoraWeb
{
	public partial class About : Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{

		}


		protected void btnAjustarVisibilidadeDoPainel_click(object sender, EventArgs e)
		{
			
			pnlFibonacci.Visible = sender == btnFibonacci;
			pnlJurosComposto.Visible = sender == btnJurosComposto;
			pnlSimulacaoDeFinanciamento.Visible = sender == btnSimulacaoDeFinanciamento;
			pnlGeradorDeNomes.Visible = sender == btnGeradorDeNomes;
		}

	}
}
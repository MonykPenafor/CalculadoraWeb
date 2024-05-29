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

		protected void btnDisplayFibonacci_click(object sender, EventArgs e)
		{
			pnlFibonacci.Visible = true;

			pnlJurosComposto.Visible = false;
			pnlSimulacaoDeFinanciamento.Visible = false;
			pnlGeradorDeNomes.Visible = false;
		}

		protected void btnDisplayJurosComposto_click(object sender, EventArgs e)
		{
			pnlJurosComposto.Visible = true;

			pnlFibonacci.Visible = false;
			pnlSimulacaoDeFinanciamento.Visible = false;
			pnlGeradorDeNomes.Visible = false;
		}

		protected void btnDisplaySimulacaoFinanciamento_click(object sender, EventArgs e)
		{
			pnlSimulacaoDeFinanciamento.Visible = true;

			pnlJurosComposto.Visible = false;
			pnlFibonacci.Visible = false;
			pnlGeradorDeNomes.Visible = false;
		}
		protected void btnDisplayGeradorDeNomes_click(object sender, EventArgs e)
		{
			pnlGeradorDeNomes.Visible = true;

			pnlJurosComposto.Visible = false;
			pnlFibonacci.Visible = false;
			pnlSimulacaoDeFinanciamento.Visible = false;
		}
	}
}
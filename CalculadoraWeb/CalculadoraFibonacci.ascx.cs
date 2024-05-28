using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CalculadoraWeb
{
	public partial class CalculadoraFibonacci : System.Web.UI.UserControl
	{
		public int QuantidadeDeCliques { get; set; }


		public int QuantidadeDeAlteracoes
		{
			get
			{
				return int.Parse(ViewState["QuantidadeDeAlteracoes"].ToString());
			}
			set
			{
				ViewState["QuantidadeDeAlteracoes"] = value.ToString();
			}
		}


		protected void Page_Load(object sender, EventArgs e)
		{
			if (!IsPostBack)
			{
				txt1.Text = "5";
				ImprimirSequenciaFibonacci(5);
				QuantidadeDeCliques = 0;
				QuantidadeDeAlteracoes = 0;

			}
			else
			{
				QuantidadeDeCliques = int.Parse(lblVisitas.Text);
			}

			QuantidadeDeCliques += 1;
			lblVisitas.Text = QuantidadeDeCliques.ToString();
		}



		protected void btn1_Click(object sender, EventArgs e)
		{
			if (int.TryParse(txt1.Text, out int quantidade))
			{
				ImprimirSequenciaFibonacci(quantidade);

			}
			else
			{
				lbl1.Text = "Informe quantidade valida!";
			}
		}


		private void ImprimirSequenciaFibonacci(int quantidade)
		{
			var calculadora = new Calculadora();
			var lista = calculadora.Fibonacci(quantidade);

			var html = new StringBuilder();
			html.Append("<ul>");
			for (int i = 0; i < lista.Count; i++)
			{
				html.Append("<li>");
				html.Append(lista[i]);
				html.Append("</li>");
			}
			html.Append("</ul>");

			lbl1.Text = html.ToString();
		}


		protected void txt1_TextChanged(object sender, EventArgs e)
		{
			TextoModificado.Text = "Valor Alterado";
			QuantidadeDeAlteracoes += 1;
			lblAlteracoes.Text = QuantidadeDeAlteracoes.ToString();
		}
	}
}
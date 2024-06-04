using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CalculadoraWeb
{
	public partial class CalculadoraCompleta : System.Web.UI.Page
	{


		public string PrimeiroNumero
		{
			get { return lblPrimeiroNumero.Text; }
			set { lblPrimeiroNumero.Text = value; }
		}

		public string NumeroAtual
		{
			get { return lblNumeroAtual.Text; }
			set { lblNumeroAtual.Text = value; }
		}

		protected void Page_Load(object sender, EventArgs e)
		{
			NumeroEscondido = 
		}


		protected void btnAddNumero_Click(object sender, EventArgs e)
		{
			//Button clickedButton = (Button)sender;
			Button clickedButton = sender as Button;

			string valor = clickedButton.Text;

			if (NumeroAtual == "0")
				NumeroAtual = valor;
			else
				NumeroAtual = NumeroAtual + valor;

		}




		protected void btnNumero0_Click(object sender, EventArgs e)
		{
			if (NumeroAtual != "0")
			{
				NumeroAtual = NumeroAtual + "0";
			}

		}
		
		protected void btnLimpar_Click(object sender, EventArgs e)
		{
			NumeroAtual = "0";
			PrimeiroNumero = "0";
		}

		protected void btnVirgula_Click(object sender, EventArgs e)
		{
			if (!NumeroAtual.Contains(","))
				NumeroAtual = NumeroAtual + ",";

		}

		protected void btnOperacaoSomar_Click(object sender, EventArgs e)
		{
			if (string.IsNullOrEmpty(PrimeiroNumero) || PrimeiroNumero == "0")
			{
				PrimeiroNumero = NumeroAtual;
			}
			else
			{
				var primeiro = decimal.Parse(PrimeiroNumero);
				var atual = decimal.Parse(NumeroAtual);

				var resultado = primeiro + atual;
				PrimeiroNumero = resultado.ToString();
			}
			NumeroAtual = "0";

		}

		protected void btnOperacaoSubtrair_Click(object sender, EventArgs e)
		{
			if (string.IsNullOrEmpty(PrimeiroNumero) || PrimeiroNumero == "0")
			{
				PrimeiroNumero = NumeroAtual;
			}
			else
			{
				var primeiro = decimal.Parse(PrimeiroNumero);
				var atual = decimal.Parse(NumeroAtual);

				var resultado = primeiro - atual;
				PrimeiroNumero = resultado.ToString();
			}
			NumeroAtual = "0";
		}

		protected void btnOperacaoDividir_Click(object sender, EventArgs e)
		{
			if (string.IsNullOrEmpty(PrimeiroNumero) || PrimeiroNumero == "0")
			{
				PrimeiroNumero = NumeroAtual;
			}
			else
			{
				var primeiro = decimal.Parse(PrimeiroNumero);
				var atual = decimal.Parse(NumeroAtual);
				decimal resultado = 0;

				if (NumeroAtual == "0")
					PrimeiroNumero = PrimeiroNumero;
				else
					resultado = primeiro / atual;
					PrimeiroNumero = resultado.ToString();

			}
			NumeroAtual = "0";
		}

		protected void btnOperacaoMultiplicar_Click(object sender, EventArgs e)
		{
			if (string.IsNullOrEmpty(PrimeiroNumero) || PrimeiroNumero == "0")
			{
				PrimeiroNumero = NumeroAtual;
			}
			else
			{
				var primeiro = decimal.Parse(PrimeiroNumero);
				var atual = decimal.Parse(NumeroAtual);

				var resultado = primeiro * atual;
				PrimeiroNumero = resultado.ToString();
			}
			NumeroAtual = "0";
		}

		protected void btnIgual_Click(object sender, EventArgs e)
		{
			var primeiro = decimal.Parse(PrimeiroNumero);
			var atual = decimal.Parse(NumeroAtual);

			var resultado = primeiro + atual;
			PrimeiroNumero = resultado.ToString();

			NumeroAtual = "0";
		}

		protected void btnSinal_Click(object sender, EventArgs e)
		{
			if(NumeroAtual.StartsWith("-"))
			{
				NumeroAtual = NumeroAtual.Substring(1);
			}
			else
			{
				NumeroAtual = "-" + NumeroAtual;
			}
		}
	}
}
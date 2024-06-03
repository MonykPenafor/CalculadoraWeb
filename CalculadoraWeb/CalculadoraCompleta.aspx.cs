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

		}


		protected void btnAddNumero_Click(object sender, EventArgs e)
		{
			Button clickedButton = (Button)sender;

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
			if (NumeroAtual == "0")
				NumeroAtual = "0,";
			else
				NumeroAtual = NumeroAtual + ",";

		}

		//protected void btnNumero1_Click(object sender, EventArgs e)
		//{
		//	if (NumeroAtual == "0")
		//		NumeroAtual = "1";
		//	else
		//		NumeroAtual = NumeroAtual + "1";
		//}
		//protected void btnNumero2_Click(object sender, EventArgs e)
		//{
		//	if (NumeroAtual == "0")
		//		NumeroAtual = "2";
		//	else
		//		NumeroAtual = NumeroAtual + "2";
		//}
		//protected void btnNumero3_Click(object sender, EventArgs e)
		//{
		//	if (NumeroAtual == "0")
		//		NumeroAtual = "3";
		//	else
		//		NumeroAtual = NumeroAtual + "3";
		//}
		//protected void btnNumero4_Click(object sender, EventArgs e)
		//{
		//	if (NumeroAtual == "0")
		//		NumeroAtual = "4";
		//	else
		//		NumeroAtual = NumeroAtual + "4";
		//}
		//protected void btnNumero5_Click(object sender, EventArgs e)
		//{
		//	if (NumeroAtual == "0")
		//		NumeroAtual = "5";
		//	else
		//		NumeroAtual = NumeroAtual + "5";
		//}
		//protected void btnNumero6_Click(object sender, EventArgs e)
		//{
		//	if (NumeroAtual == "0")
		//		NumeroAtual = "6";
		//	else
		//		NumeroAtual = NumeroAtual + "6";
		//}
		//protected void btnNumero7_Click(object sender, EventArgs e)
		//{
		//	if (NumeroAtual == "0")
		//		NumeroAtual = "7";
		//	else
		//		NumeroAtual = NumeroAtual + "7";
		//}
		//protected void btnNumero8_Click(object sender, EventArgs e)
		//{
		//	if (NumeroAtual == "0")
		//		NumeroAtual = "8";
		//	else
		//		NumeroAtual = NumeroAtual + "8";
		//}
		//protected void btnNumero9_Click(object sender, EventArgs e)
		//{
		//	if (NumeroAtual == "0")
		//		NumeroAtual = "9";
		//	else
		//		NumeroAtual = NumeroAtual + "9";
		//}

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



	}
}
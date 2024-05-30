using Microsoft.Ajax.Utilities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CalculadoraWeb
{
	public partial class GeradorDeNomes : System.Web.UI.UserControl
	{


		public List<string> Nomes
		{
			get
			{
				return (List<string>)ViewState["Nome"];
			}
			set
			{
				ViewState["Nome"] = value;
			}
		}


		protected void Page_Load(object sender, EventArgs e)
		{
			if (Nomes == null)
			{Nomes = new List<string>();}

		}


		protected void btnAddNome_click(object sender, EventArgs e)
		{	
			var nome = txtNome.Text;
			if (!string.IsNullOrEmpty(nome)) 
			{
				Nomes.Add(nome);
			}
			
			rptrNomes.DataSource = Nomes;
			DataBind();

		}

	}
}
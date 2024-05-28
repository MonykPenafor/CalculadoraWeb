using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CalculadoraWeb
{
	public partial class Contact : Page
	{

		public List<string> Nomes
		{
			get
			{
				return ViewState["Nomes"].ToString();
			}
			set
			{
				ViewState["Nomes"] = value.ToString();
			}
		}

		protected void Page_Load(object sender, EventArgs e)
		{
			if (!IsPostBack)
			{
				lblNomes.Text = string.Empty;
			}



		protected void btnAddNome_Click(object sender, EventArgs e)
		{
			string nome = txtNome.Text;

			if (!string.IsNullOrEmpty(nome))
			{
				nomes.Add(nome);
				var html = new StringBuilder();
				html.Append("<ul>");
				for (int i = 0; i < nomes.Count; i++)
				{
					html.Append("<li>");
					html.Append(nomes[i]);
					html.Append("</li>");
				}
				html.Append("</ul>");

				lblNomes.Text = html.ToString();
			}
		}
	}
}




using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Runtime.InteropServices;

namespace CalculadoraWeb
{
	public class BancoDeDados
	{
		public DataTable Consultar(string sql)
		{
			return Consultar(sql, null, null);
		}

		private SqlConnection CriarConexao()
		{
			var stringDeConexao =
				ConfigurationManager
					.ConnectionStrings["ConexaoPadrao"]
						.ConnectionString;
			return new SqlConnection(stringDeConexao);
		}

		public DataTable Consultar(string sql, string[] parametros, object[] valores)
		{
			using (var conexao = CriarConexao())
			using (var comando = conexao.CreateCommand())
			{
				if (parametros != null)
					for (int n = 0; n < parametros.Length; n++)
					{
						var filtro = comando.CreateParameter();
						filtro.ParameterName = parametros[n];
						filtro.Value = valores[n];
						comando.Parameters.Add(filtro);
					}
				comando.CommandText = sql;

				using (var adapter = new SqlDataAdapter(comando))
				{
					var tabela = new DataTable();
					adapter.Fill(tabela);
					return tabela;
				}
			}
		}
		public int Executar(string sql, string[] parametros, object[] valores)
		{
			using (var conexao = CriarConexao())
			using (var comando = conexao.CreateCommand())
			{
				for (int n = 0; n < parametros.Length; n++)
				{
					var filtro = comando.CreateParameter();
					filtro.ParameterName = parametros[n];
					filtro.Value = valores[n];
					comando.Parameters.Add(filtro);
				}
				comando.CommandText = sql;

				conexao.Open();
				try
				{
					return comando.ExecuteNonQuery();
				}
				finally
				{
					conexao.Close();
				}
			}
		}
	}
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ApontamentosDal;
using ApontamentosModel;

namespace ApontamentosUi
{
    public partial class InsereAtividade : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            CarregaFuncionarios();
        }
        public void CarregaFuncionarios()
        {
            AtividadeDal ativ = new AtividadeDal();
            List<FuncionarioModel> listaFunc = ativ.ListaFuncionarios();
            ddlFuncionarios.DataSource = listaFunc;
          ddlFuncionarios.DataTextField = "NomeFuncionario";
            ddlFuncionarios.DataValueField = "CodigoFuncionario";
            ddlFuncionarios.DataBind();
           

        }

        protected void ddlFuncionarios_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Salvar_Click(object sender, EventArgs e)
        {
            AtividadeDal ativ = new AtividadeDal();
            var mes = 1;
           DateTime data;
           DateTime.TryParse(InicioAtividade.Text, out data);


           try
           {
               ativ.InsereAtividades(ddlFuncionarios.SelectedItem.Value.ToString(), "Atividade", mes, Convert.ToDateTime(horaInicial.Text), Convert.ToDateTime(horFim.Text), txtDescr.Text);
           
           }
           catch (Exception ex)
           {
               lblMensagem.Visible = true;
               lblMensagem.Text = ex.ToString();
        throw;
           }
          lblMensagem.Visible = true;
           lblMensagem.Text = "Atividade Inserida com Sucesso";
           LimpaCampos();

        }

        public void LimpaCampos()
        {
            InicioAtividade.Text = "";
            fimAtividade.Text = "";
            horFim.Text = "";
            horaInicial.Text = "";
            txtDescr.Text = "";
        }

        protected void InicioAtividade_TextChanged(object sender, EventArgs e)
        {

        }
    }
}
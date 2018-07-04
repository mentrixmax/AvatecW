using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Config_CreateOrUpdateEscolaridade : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {

            if (Request.Params["id"] != null)
            {
                String idS = Request.Params["id"];
                Escolaridade escolaridade =
                    EscolaridadeDAO.getInstance().findById(Convert.ToInt32(idS));
                txtEscolaridade.Text = escolaridade.DesEscolaridade;
                Sequencial.Value = idS;
            }
        }
    }
   
    protected void btnSalvar_Click(object sender, EventArgs e)
    {
        try
        {
            Escolaridade esc = new Escolaridade();
            esc.DesEscolaridade = txtEscolaridade.Text;
            if (Sequencial.Value != "")
            {
                esc.Sequencial = Convert.ToInt32(Sequencial.Value);

                if (EscolaridadeDAO.getInstance().update(esc))
                {
                    Response.Redirect("~/Config/Sucesso.aspx");
                }
            }
            else
            {
                if (EscolaridadeDAO.getInstance().create(esc))
                {
                    Response.Redirect("~/Config/Sucesso.aspx");
                }
            }
        }
        catch (Exception)
        {

            Server.Transfer("~/Config/Erro.aspx");
        }

    }

    protected void txtEscolaridade_TextChanged(object sender, EventArgs e)
    {

    }



    protected void Sequencial_ValueChanged(object sender, EventArgs e)
    {

    }
}
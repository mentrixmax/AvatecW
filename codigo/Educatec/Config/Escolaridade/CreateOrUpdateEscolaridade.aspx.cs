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

    }
   
    protected void btnSalvar_Click(object sender, EventArgs e)
    {
        try
        {
            Escolaridade esc = new Escolaridade();
            esc.DesEscolaridade = txtEscolaridade.Text;
            if (EscolaridadeDAO.getInstance().create(esc))
            {
                Response.Redirect("~/Config/Sucesso.aspx");
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

  
}
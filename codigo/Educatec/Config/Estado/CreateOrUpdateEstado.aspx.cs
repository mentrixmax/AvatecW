using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Config_Estado_CreateOrUpdateEstadoaspx : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
         
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            Estado esc = new Estado();
            esc.DesEstado = txtEstado.Text;
            if (EstadoDAO.getInstance().create(esc))
            {
                Response.Redirect("~/Config/Sucesso.aspx");
            }
        }
        catch (Exception)
        {

            Server.Transfer("~/Config/Erro.aspx");
        }

    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {

    }

    protected void Salvar_Click(object sender, EventArgs e)
    {

    }

   
}


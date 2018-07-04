using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Config_Interesse_CreateOrUpdateInteresse : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {

            if (Request.Params["id"] != null)
            {
                String idS = Request.Params["id"];
                Interesse intersse =
                    InteresseDAO.getInstance().findById(Convert.ToInt32(idS));
                txtInteresse.Text = intersse.DesInteresse;
                Sequencial.Value = idS;
            }
        }
    }

    protected void btnSalvar_Click(object sender, EventArgs e)
    {

        try
        {
            Interesse esc = new Interesse();
            esc.DesInteresse = txtInteresse.Text;
            if (Sequencial.Value != "")
            {
                esc.Sequencial = Convert.ToInt32(Sequencial.Value);

                if (InteresseDAO.getInstance().update(esc))
                {
                    Response.Redirect("~/Config/Sucesso.aspx");
                }
            }
            else
            {
                if (InteresseDAO.getInstance().create(esc))
                {
                    Response.Redirect("~/Config/Sucesso.aspx");
                }
            }
        }
        catch (Exception) {
            
            Server.Transfer("~/Config/Erro.aspx");
        }

    }
    protected void txtInterresse_TextChanged(object sender, EventArgs e)
    {

    }

    protected void Sequencial_ValueChanged(object sender, EventArgs e)
    {

    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Config_Interesse_InteresseHome : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button2_Click(object sender, EventArgs e)
    {   
        try
        {

            dgInteresse.DataSource = InteresseDAO.getInstance().findByParameters(
                new Interesse() { DesInteresse = "%" + txtInteresse.Text + "%" });
            dgInteresse.DataBind();
        }
        catch (Exception) {
            Server.Transfer("~/Config/Erro.aspx");
        }

    }

    protected void Button1_Click(object sender, EventArgs e)
    {

    }

    protected void dgInteresse_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (dgInteresse.SelectedRow != null)
        {
            GridView dg = (GridView)sender;
            
            Sequencial.Value = dgInteresse.SelectedRow.Cells[1].Text;
            btnAlterar.Enabled = true;
            btnExcluir.Enabled = true;
        }
    }

    protected void btnAlterar_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Config/Interesse/CreateOrUpdateInteresse.aspx?id=" + Sequencial.Value);
    }

    protected void dgInteresse_DataBound(object sender, EventArgs e)
    {
        
    }

    protected void dgInteresse_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        e.Row.Cells[1].Visible = false;
    }
}
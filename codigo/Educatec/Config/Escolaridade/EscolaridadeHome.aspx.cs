using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Config_EscolaridadeHome : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
        

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
      
        EscolaridadeDAO dao = EscolaridadeDAO.getInstance();
        dgEscolaridade.DataSource = dao.findByParameters(new Escolaridade() { DesEscolaridade="%"+TxtEscolaridade.Text+"%"});
        dgEscolaridade.DataBind();

       
    }

    protected void Button2_Click(object sender, EventArgs e)
    {

    }

    protected void HiddenField1_ValueChanged(object sender, EventArgs e)
    {


    }

    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        e.Row.Cells[1].Visible = false;
    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

        if (dgEscolaridade.SelectedRow != null)
        {
            GridView dg = (GridView)sender;

            Sequencial.Value = dgEscolaridade.SelectedRow.Cells[1].Text;
            bntAlterar.Enabled = true;
            bntExcluir.Enabled = true;
        }
    }
        

    protected void But_Click(object sender, EventArgs e)
    {

    }

    protected void btnAlterar_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Config/Escolaridade/CreateOrUpdateEscolaridade.aspx?id=" + Sequencial.Value);
    }

    protected void btnIncluir_Click(object sender, EventArgs e)
    {

    }

    protected void btnExcluir_Click(object sender, EventArgs e)
    {

    }

    protected void btnPesquisar_Click(object sender, EventArgs e)
    {

        try
        {

            dgEscolaridade.DataSource = EscolaridadeDAO.getInstance().findByParameters(
                new Escolaridade() { DesEscolaridade = "%" + TxtEscolaridade.Text + "%" });
            dgEscolaridade.DataBind();
        }
        catch (Exception)
        {
            Server.Transfer("~/Config/Erro.aspx");
        }

    }
}
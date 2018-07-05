using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Config_Estado_EstadoHome : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        EstadoDAO dao = EstadoDAO.getInstance();
        dgEstado.DataSource = dao.findAll();
        dgEstado.DataBind();
    }

    protected void Button2_Click(object sender, EventArgs e)
    {

    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (dgEstado.SelectedRow != null)
        {
            GridView dg = (GridView)sender;

            Sequencial.Value = dgEstado.SelectedRow.Cells[1].Text;
            btnAlterar.Enabled = true;
            btnExcluir.Enabled = true;
        }
    }

    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        e.Row.Cells[1].Visible = false;
    }
}
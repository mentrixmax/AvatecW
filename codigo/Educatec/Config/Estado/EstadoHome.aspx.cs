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
        GridView1.DataSource = dao.findAll();
        GridView1.DataBind();
    }
}
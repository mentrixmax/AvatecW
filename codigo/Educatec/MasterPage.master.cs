using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Menfram.Implementation.DAL.SQLDAO conencao = new Menfram.Implementation.DAL.SQLDAO();
        String url = "Data Source=192.168.0.5;" + "Initial Catalog=educatec;" + "User id=sa;" + "Password=root;";
        conencao.ConnectionUrl = url;
        Menfram.Common.Constantes.Conexao = conencao;
    }
}

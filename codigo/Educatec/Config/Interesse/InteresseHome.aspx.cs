﻿using System;
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
}
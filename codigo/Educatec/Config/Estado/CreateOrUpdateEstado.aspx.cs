﻿using System;
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
        Estado esc = new Estado();
        esc.DesEstado = txtEstado.Text;
        EstadoDAO.getInstance().create(esc);


    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {

    }

    protected void Salvar_Click(object sender, EventArgs e)
    {

    }

    protected void TextBox1_TextChanged1(object sender, EventArgs e)
    {

    }
}


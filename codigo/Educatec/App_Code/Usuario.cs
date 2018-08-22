using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Menfram.Entity.Interface;
using Menfram.DAL.Reflection;

/// <summary>
/// Summary description for Usuario
/// </summary>
public class Usuario : IEntity
{
	public Usuario()
	{
		//
		// TODO: Add constructor logic here
		//
	}

    [NoField]
    public string DescriptionComboBox
    {
        get { return ""; }
    }

   [NoField]
    public string Key
    {
        get { return ""; }
    }

    public int? Sequencial
    {
        get;
        set;
    }

    public String Nome { get; set; }

    public String Rua { get; set; }

    public String Bairro { get; set; }

    public String Cidade { get; set; }


    public int? IdEstado
    {
        get;
        set;
    }

    public int? IdEscolaridade
    {
        get;
        set;
    }

    public int? IdInstituicaoOrigem
    {
        get;
        set;
    }

    public String Email { get; set; }

    public String Telefone { get; set; }

    public String Senha { get; set; }
}


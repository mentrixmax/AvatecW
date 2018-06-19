using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Menfram.Entity.Interface;
using Menfram.DAL.Reflection;

/// <summary>
/// Summary description for Escolaridade
/// </summary>
public class Escolaridade: IEntity
{
	public Escolaridade()
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

    [Key(Pk = true, KKey = true)]
    public int? Sequencial
    {
        get;
        set;
    }

    public String DesEscolaridade { get; set; }
}

using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Menfram.Entity.Interface;
using Menfram.DAL.Reflection;

/// <summary>
/// Summary description for Interesse
/// </summary>
public class Interesse: IEntity
{
	public Interesse()
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

    public String DesInteresse { get; set; }
}
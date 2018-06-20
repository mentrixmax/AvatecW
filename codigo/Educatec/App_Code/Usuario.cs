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
}
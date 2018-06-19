using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Menfram.Entity.Interface;
using Menfram.DAL.Reflection;

/// <summary>
/// Summary description for Estado
/// </summary>
public class Estado : IEntity
{
    public Estado()
    { }

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

    [Key(Pk=true, KKey=true)]
    public int? Sequencial
    {
        get;
        set;
    }

    public String DesEstado { get; set; }
}
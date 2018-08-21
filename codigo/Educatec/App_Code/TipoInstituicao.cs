using Menfram.DAL.Reflection;
using Menfram.Entity.Interface;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for TipoDeInstituicao
/// </summary>
public class TipoInstituicao : IEntity
{
    public TipoInstituicao()
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
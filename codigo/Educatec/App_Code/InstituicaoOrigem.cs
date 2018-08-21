using Menfram.DAL.Reflection;
using Menfram.Entity.Interface;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for InstituicaoOrigem
/// </summary>
[Table(TableName = "instituicaoOrigem")]
public class InstituicaoOrigem : IEntity
{
    public InstituicaoOrigem()
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

    public String DesInstituicaoOrigem { get; set; }
}
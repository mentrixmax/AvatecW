using Menfram.DAL.Reflection;
using Menfram.Entity.Interface;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Comentário
/// </summary>
[Table("Comentário")]
public class Comentario : IEntity

{
    public Comentario()
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

    public String DesComentario { get; set; }
    public int? PostID { get; set; }
    public DateTime? Data { get; set; }

}
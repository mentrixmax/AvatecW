using Menfram.DAL.Abstract;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for ComentárioDAO
/// </summary>
public class ComentarioDAO : AbstractDAO<Comentario>
{
    public ComentarioDAO()
    {
        //
        // TODO: Add constructor logic here
        //
    }
    private static ComentarioDAO dao = null;
    public static ComentarioDAO getInstance()
    {
        if (dao == null)
        {
            dao = new ComentarioDAO();

        }
        return dao;

    }

    public override Type getTipo()
    {
        return typeof(Comentario);
    }
}
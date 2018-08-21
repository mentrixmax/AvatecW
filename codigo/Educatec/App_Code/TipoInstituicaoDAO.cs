using Menfram.DAL.Abstract;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for TipoDeInstituicaoDAO
/// </summary>
public class TipoInstituicaoDAO:  AbstractDAO<TipoInstituicao>
{

    
    private TipoInstituicaoDAO()
    {
        //
        // TODO: Add constructor logic here
        //
    }

    private static TipoInstituicaoDAO dao = null;
    public static TipoInstituicaoDAO getInstance()
    {
        if (dao == null)
        {
            dao = new TipoInstituicaoDAO();

        }
        return dao;

    }

    public override Type getTipo()
    {
        return typeof(TipoInstituicao);
    }
}
using Menfram.DAL.Abstract;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for InstituicaoOrigemDAO
/// </summary>
public class InstituicaoOrigemDAO : AbstractDAO<InstituicaoOrigem>
{
    public InstituicaoOrigemDAO()
    {
        //
        // TODO: Add constructor logic here
        //
    }
    private static InstituicaoOrigemDAO dao = null;
    public static InstituicaoOrigemDAO getInstance()
    {
        if (dao == null)
        {
            dao = new InstituicaoOrigemDAO();

        }
        return dao;

    }

    public override Type getTipo()
    {
        return typeof(InstituicaoOrigem);
    }
}
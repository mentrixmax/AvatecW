using Menfram.DAL.Abstract;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for UsuarioDAO
/// </summary>
public class UsuarioDAO : AbstractDAO<Usuario>
{
    private UsuarioDAO()
    {
        //
        // TODO: Add constructor logic here
        //

    }
    private static UsuarioDAO dao = null;
    public static UsuarioDAO getInstance()
    {
        if (dao == null)
        {
            dao = new UsuarioDAO();

        }
        return dao;

    }

    public override Type getTipo()
    {
        return typeof(Usuario);
    }

    /// teste de commit
}

using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Menfram.DAL.Abstract;

/// <summary>
/// Summary description for EscolaridadeDAO
/// </summary>
public class EscolaridadeDAO : AbstractDAO<Escolaridade>
{
    private EscolaridadeDAO()
    {

    }

    private static EscolaridadeDAO dao = null;

    public static EscolaridadeDAO getInstance()
    {
        if (dao == null)
        {
            dao = new EscolaridadeDAO();

        }
        return dao;

    
    }
    public override Type getTipo()
    {
        return typeof(Escolaridade);
    }



}
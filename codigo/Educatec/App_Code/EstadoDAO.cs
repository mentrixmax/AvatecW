using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Menfram.DAL.Abstract;

/// <summary>
/// Summary description for EstadoDAO
/// </summary>
public class EstadoDAO : AbstractDAO<Estado>
{
	public EstadoDAO()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    private EstadoDAO dao = null;
    public EstadoDAO getInstance()
    {
        if (dao == null)
        {
            dao = new EstadoDAO();

        }
        return dao;

    }

    public override Type getTipo()
    {
        return typeof(Estado);
    }
}
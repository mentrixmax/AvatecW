using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Menfram.DAL.Abstract;

/// <summary>
/// Summary description for InteresseDAO
/// </summary>
public class InteresseDAO: AbstractDAO<Interesse>
{
	private InteresseDAO()
	{
		//
		// TODO: Add constructor logic here
		//
	}

    private static InteresseDAO dao = null;
    public static InteresseDAO getInstance()
    {
        if (dao == null)
        {
            dao = new InteresseDAO();

        }
        return dao;

    }

    public override Type getTipo()
    {
        return typeof(Interesse);
    }
}
using Menfram.DAL.Abstract;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for PostDAO
/// </summary>
public class PostDAO : AbstractDAO<PostEntity>
{

    public PostDAO()
    {
        //
        // TODO: Add constructor logic here
        //
    }
    private static PostDAO dao = null;
    public static PostDAO getInstance()
    {
        if (dao == null)
        {
            dao = new PostDAO();

        }
        return dao;

    }

    public override Type getTipo()
    {
        return typeof(PostEntity);
    }
}
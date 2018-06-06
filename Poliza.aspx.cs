using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Poliza : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        { 
            SqlConnection con = new SqlConnection { ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["dbUserConnectionString"].ConnectionString };
            SqlCommand cmd = new SqlCommand("select idPeriodo,(cast(fechainicio as varchar(50))+ ' --> ' + cast(fechafin as varchar(50)) + ' Periodo ' + CAST(idperiodo as varchar(5))) as periodo from vw_CatPeriodo", con);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            sda.Fill(ds);
            DropDownListPeriodo.DataSource = ds;
            DropDownListPeriodo.DataTextField = "Periodo";                            // FieldName of Table in DataBase
            DropDownListPeriodo.DataValueField = "idPeriodo";
            DropDownListPeriodo.DataBind();

        }


    }



    protected void Button1_Click(object sender, EventArgs e)
    {
        LblEtiqueta.Text = DropDownListPeriodo.SelectedValue;
    }
}
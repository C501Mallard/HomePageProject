using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class SearchFA : System.Web.UI.Page
{
    
    protected void Page_Load(object sender, EventArgs e)
    {

        //if (!IsPostBack)
        //{
        //    DropDownList1.SelectedIndex = 0;
        //}

        //SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["constr"].ConnectionString);
        // SqlDataAdapter da = new SqlDataAdapter("select * from FA61 where ClassName=" + DropDownList1.SelectedItem.Text, conn);

        // DataSet ds = new DataSet();

        // da.Fill(ds);

        // Repeater1.DataSource = ds;
        // Repeater1.DataBind();

        //SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["constr"].ConnectionString);
        //SqlDataAdapter da = new SqlDataAdapter("select distinct  �????  from �????添�????��????????61 order by  �???? asc", conn);

        //DataSet ds = new DataSet();

        //da.Fill(ds);
    }
    
    protected string checkEmptyLink(object ob) {
        string typ = ob.ToString();

        if (typ=="") {
            return "�S����ƥi�ѤU��";
        }
        else {
            return "<a  href=\""+ typ + "\">�ɮפU��</a>";
        }
    
    }    
}
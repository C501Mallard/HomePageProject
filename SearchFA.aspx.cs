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
        //SqlDataAdapter da = new SqlDataAdapter("select distinct  憿????  from 憌????瘛餃????抵????????61 order by  憿???? asc", conn);

        //DataSet ds = new DataSet();

        //da.Fill(ds);
    }
    
    protected string checkEmptyLink(object ob) {
        string typ = ob.ToString();

        if (typ=="") {
            return "沒有資料可供下載";
        }
        else {
            return "<a  href=\""+ typ + "\">檔案下載</a>";
        }
    
    }    
}
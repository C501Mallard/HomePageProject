using System;
using System.Collections;
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
        BindRepeater();
    }

    protected string checkEmptyLink(object ob)
    {
        string typ = ob.ToString();

        if (typ == "")
        {
            return "沒有資料可供下載";
        }
        else
        {
            return "<a  href=\"" + typ + "\">檔案下載</a>";
        }
    }

    protected void BindRepeater()
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conStr"].ConnectionString.ToString());
        SqlCommand cmd = new SqlCommand("SELECT * FROM FA61 where ClassName=@ClassName", con);
    
        cmd.Parameters.AddWithValue("ClassName", DropDownList1.Text);

        if (con.State == ConnectionState.Closed)
        {
            con.Open();
        }
        DataTable dt = new DataTable();
        SqlDataAdapter adp = new SqlDataAdapter(cmd);
        adp.Fill(dt);
        PagedDataSource pgitems = new PagedDataSource();
        DataView dv = new DataView(dt);
        pgitems.DataSource = dv;
        pgitems.AllowPaging = true;
        pgitems.PageSize = 10;
        pgitems.CurrentPageIndex = PageNumber;
        if (pgitems.PageCount > 1)
        {
            rptPaging.Visible = true;
            ArrayList pages = new ArrayList();
            for (int i = 0; i < pgitems.PageCount; i++)
                pages.Add((i + 1).ToString());
            rptPaging.DataSource = pages;
            rptPaging.DataBind();
        }
        else
        {
            rptPaging.Visible = false;
        }
        rptResult.DataSource = pgitems;
        rptResult.DataBind();
    }
    public int PageNumber
    {
        get
        {
            if (ViewState["PageNumber"] != null)
                return Convert.ToInt32(ViewState["PageNumber"]);
            else
                return 0;
        }
        set
        {
            ViewState["PageNumber"] = value;
        }
    }
    protected void rptPaging_ItemCommand(object source, RepeaterCommandEventArgs e)
    {
        PageNumber = Convert.ToInt32(e.CommandArgument) - 1;
        BindRepeater();
    }

}
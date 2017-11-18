using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections;


public partial class PlayGame : System.Web.UI.Page
{
    string solution;
    //ArrayList idList = new ArrayList();
    //ArrayList solutionList = new ArrayList();

    protected void Page_Load(object sender, EventArgs e)
    {
        
            //Label l1 = (Label)FV1.FindControl("L1");

            //solution = l1.Text;

            //solutionList.Add(solution);
            //Session["solArrayList"] = solutionList;


        }
    protected void FV1_DataBound(object sender, EventArgs e)
    {


        //Session["Qz_Ans"] = dr["id"].ToString();
        //Session["name"] = dr["name"].ToString();
        int page = FV1.PageIndex + 1;
        int total = FV1.PageCount;
        ((Label)FV1.BottomPagerRow.Cells[0].FindControl("lblPageInfo")).Text = "Page " + page + " of " + total;
    }

    protected void Qz_Item1_CheckBox_CheckedChanged(object sender, EventArgs e)
    {
        CheckBox q1 = (CheckBox)FV1.FindControl("Qz_Item1_CheckBox");
        CheckBox q2 = (CheckBox)FV1.FindControl("Qz_Item2_CheckBox");
        CheckBox q3 = (CheckBox)FV1.FindControl("Qz_Item3_CheckBox");
        CheckBox q4 = (CheckBox)FV1.FindControl("Qz_Item4_CheckBox");
        Button btn = (Button)FV1.FindControl("btn_solution");
        if (q1.Checked || q2.Checked || q3.Checked || q4.Checked)
        {
            btn.Visible = true;
        }
        //idList.Add("1");
        //Session["idArrayList"] = idList;
    }

    protected void Qz_Item2_CheckBox_CheckedChanged(object sender, EventArgs e)
    {
        CheckBox q1 = (CheckBox)FV1.FindControl("Qz_Item1_CheckBox");
        CheckBox q2 = (CheckBox)FV1.FindControl("Qz_Item2_CheckBox");
        CheckBox q3 = (CheckBox)FV1.FindControl("Qz_Item3_CheckBox");
        CheckBox q4 = (CheckBox)FV1.FindControl("Qz_Item4_CheckBox");
        Button btn = (Button)FV1.FindControl("btn_solution");
        if (q1.Checked || q2.Checked || q3.Checked || q4.Checked)
        {
            btn.Visible = true;
        }
        //idList.Add("2");
        //Session["idArrayList"] = idList;
    }

    protected void Qz_Item3_CheckBox_CheckedChanged(object sender, EventArgs e)
    {
        CheckBox q1 = (CheckBox)FV1.FindControl("Qz_Item1_CheckBox");
        CheckBox q2 = (CheckBox)FV1.FindControl("Qz_Item2_CheckBox");
        CheckBox q3 = (CheckBox)FV1.FindControl("Qz_Item3_CheckBox");
        CheckBox q4 = (CheckBox)FV1.FindControl("Qz_Item4_CheckBox");
        Button btn = (Button)FV1.FindControl("btn_solution");
        if (q1.Checked || q2.Checked || q3.Checked || q4.Checked)
        {
            btn.Visible = true;
        }
        //idList.Add("3");
        //Session["idArrayList"] = idList;
    }

    protected void Qz_Item4_CheckBox_CheckedChanged(object sender, EventArgs e)
    {
        CheckBox q1 = (CheckBox)FV1.FindControl("Qz_Item1_CheckBox");
        CheckBox q2 = (CheckBox)FV1.FindControl("Qz_Item2_CheckBox");
        CheckBox q3 = (CheckBox)FV1.FindControl("Qz_Item3_CheckBox");
        CheckBox q4 = (CheckBox)FV1.FindControl("Qz_Item4_CheckBox");
        Button btn = (Button)FV1.FindControl("btn_solution");
        if (q1.Checked || q2.Checked || q3.Checked || q4.Checked)
        {
            btn.Visible = true;
        }
        //idList.Add("4");
        //Session["idArrayList"] = idList;
    }

    protected void btn_solution_Click(object sender, EventArgs e)
    {
        Label l1 = (Label)FV1.FindControl("L1");

        solution = l1.Text;
        l1.Visible = true;
        
    }
}
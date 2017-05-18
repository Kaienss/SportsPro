using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class _Default : System.Web.UI.Page
{
    private DataView incidentsTable;
    Incident inc = new Incident();


    protected void Page_Load(object sender, EventArgs e)
    {
      
            ListBox1.Enabled = false;
            RadioButtonList1.Enabled = false;
            RadioButtonList2.Enabled = false;
            RadioButtonList3.Enabled = false;
            RadioButton13.Enabled = false;
            RadioButton14.Enabled = false;
            TextBox2.Enabled = false;
            CheckBox1.Enabled = false;
     
    }
    
    protected void Button1_Click(object sender, EventArgs e)
    {
        incidentsTable = (DataView)SqlDataSource1.Select(DataSourceSelectArguments.Empty);
        incidentsTable.RowFilter = "CustomerID = " + TextBox1.Text + " And DateClosed Is Not Null";
        if (incidentsTable.Count > 0)
        {
            inc.CustomerIncidentDisplay();       
            ListBox1.Enabled = true;
            RadioButtonList1.Enabled = true;
            RadioButtonList2.Enabled = true;
            RadioButtonList3.Enabled = true;
            RadioButton13.Enabled = true;
            RadioButton14.Enabled = true;
            TextBox2.Enabled = true;
            CheckBox1.Enabled = true;
            for (int i = 0; i < incidentsTable.Count; i++)
            {
                DataRowView row=(DataRowView) incidentsTable[i];
                Incident incident = new Incident();
                incident.IncidentID = Convert.ToInt32(row["IncidentID"]);
                incident.ProductCode = row["ProductCode"].ToString();
                incident.DateClosed = Convert.ToDateTime(row["DateClosed"]);
                incident.Title = row["Title"].ToString();
                ListBox1.Items.Add(new ListItem(incident.CustomerIncidentDisplay(),incident.IncidentID.ToString()));
            }
        }
        else
        {
            lblnoincident.Text = "There are no incidents for that customer.";
        }         
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        if (Page.IsValid)
        {
            Survey survey = new Survey();
            survey.CustomerID = Convert.ToInt32(TextBox1.Text);
            survey.IncidentID = Convert.ToInt32(ListBox1.SelectedIndex);
            if ( RadioButtonList1.SelectedIndex != -1)
            {
                survey.ResponseTime = Convert.ToInt32(RadioButtonList1.SelectedValue);
            }
            if ( RadioButtonList2.SelectedIndex != -1)
            {
                survey.TechEfficiency = Convert.ToInt32(RadioButtonList2.SelectedValue);
            }
            if ( RadioButtonList3.SelectedIndex != -1)
            {
                survey.Resolution = Convert.ToInt32(RadioButtonList3.SelectedValue);
            }
            survey.Comments = TextBox2.Text;
            if (CheckBox1.Checked)
            {
                survey.Contact = true;
                if (RadioButton13.Checked)
                    survey.ContactBy = "Email";
                else
                    survey.ContactBy = "Phone";
                Session.Add("Contact", true);
            }
            else
            {
                survey.Contact = false;
                Session.Add("Contact", false);
            }
            Response.Redirect("SurveyComplete.aspx");
        }
    }
    protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}
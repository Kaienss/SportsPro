using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Contact : System.Web.UI.Page
{
    private contactList contact;
    protected void Page_Load(object sender, EventArgs e)
    {
        contact = contactList.getCust();
        if (!IsPostBack)
            this.DisplayContact();
            
    }
    private void DisplayContact()
    {
        lstContactList.Items.Clear();
        contact cust;
        for (int i = 0; i < contact.Count; i++)
        {
            cust = contact[i];
            lstContactList.Items.Add(cust.display());
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        if (contact.Count > 0) {
            if (lstContactList.SelectedIndex >-1)
            {
                contact.removeAt(lstContactList.SelectedIndex);
                this.DisplayContact();
            }
            else {
                lblDisplay.Text = "Please select a contact!!";
            }
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        if (contact.Count > 0) {
            contact.removeAll();
            lstContactList.Items.Clear();
        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Customer4 : System.Web.UI.Page
{
    private customer selectedCustomer;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            ddlCustomerId.DataBind();
        }
            selectedCustomer = this.getSelectedCustomer();
            lblAddress.Text = selectedCustomer.Address;
            lblEmail.Text = selectedCustomer.Email;
            lblPhone.Text = selectedCustomer.Phone;
            lblState.Text = selectedCustomer.State + "  " + selectedCustomer.ZipCode;
            
        
    }
    private customer getSelectedCustomer() {

        
        DataView customers = (DataView)SqlDataSource1.Select(DataSourceSelectArguments.Empty);
        customers.RowFilter = "CustomerID = '" + ddlCustomerId.SelectedValue.ToString() + "'";
        DataRowView row = (DataRowView)customers[0];

        customer target = new customer();
        target.Name = row["Name"].ToString();
        target.Phone = row["Phone"].ToString();
        target.State = row["State"].ToString();
        target.ZipCode = row["ZipCode"].ToString();
        target.Email = row["Email"].ToString();
        target.Address = row["Address"].ToString();
        return target;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (Page.IsValid)
        {
            contactList cust = contactList.getCust();
            contact contact1 = cust[selectedCustomer.CustomerId];
            cust.addToContact(selectedCustomer);
            Response.Redirect("Contact.aspx", false);
        }
    }
}
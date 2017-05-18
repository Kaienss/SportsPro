using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// contact 的摘要说明
/// </summary>
public class contact
{
	public contact(customer cust)
	{
        this.Customer = cust;
	}
    public customer Customer
    {
        get; set;
    }

    public string display() {
        return this.Customer.Name + ": " + this.Customer.Phone + "; " + this.Customer.Email;
    }
}
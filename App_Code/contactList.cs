using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// contactList 的摘要说明
/// </summary>
public class contactList
{
    private List<contact> contact;
	public contactList()
	{
        contact = new List<contact>();
	}

    public void addToContact(customer c) {
        contact addC = new contact(c);
        contact.Add(addC);
    }

    public void removeAt(int index) {
        contact.RemoveAt(index);
    }

    public int Count
    {
        get { return contact.Count; }
    }

    public void removeAll() {
        contact.Clear();
    }

    public contact this[int index]
    {
        get { return contact[index]; }
        set { contact[index] = value; }
    }

    public contact this[string id]
    {
        get
        {
            foreach (contact c in contact)
                if (c.Customer.CustomerId == id) return c;
            return null;
        }
    }
    public static contactList getCust(){
        contactList Cust = (contactList)HttpContext.Current.Session["Contact"];
        if (Cust == null)
        {
            HttpContext.Current.Session["Contact"] = new contactList();
        }
        return (contactList)HttpContext.Current.Session["Contact"];
    }
}
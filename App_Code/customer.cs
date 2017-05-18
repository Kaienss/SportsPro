using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// </summary>
public class customer
{
    public customer()
    {

    }
    private string customerId;

    public string CustomerId
    {
        get { return customerId; }
        set { customerId = value; }
    }
    private string name;

    public string Name
    {
        get { return name; }
        set { name = value; }
    }
    private string address;

    public string Address
    {
        get { return address; }
        set { address = value; }
    }
    private string city;

    public string City
    {
        get { return city; }
        set { city = value; }
    }
    private string state;

    public string State
    {
        get { return state; }
        set { state = value; }
    }
    private string zipCode;

    public string ZipCode
    {
        get { return zipCode; }
        set { zipCode = value; }
    }
    private string phone;

    public string Phone
    {
        get { return phone; }
        set { phone = value; }
    }
    private string email;

    public string Email
    {
        get { return email; }
        set { email = value; }
    }
   
   
}
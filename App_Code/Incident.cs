﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Incident 的摘要说明
/// </summary>
public class Incident
{
	public Incident()
	{
		
	}
    public int IncidentID { get; set; }
    public int CustomerID { get; set; }
    public string ProductCode { get; set; }
    public int TechID { get; set; }
    public DateTime DateOpened { get; set; }
    public DateTime DateClosed { get; set; }
    public string Title { get; set; }
    public string Description { get; set; }

    public string CustomerIncidentDisplay()
    {
      return "Incident for product " + ProductCode+ " closed " + DateClosed.ToShortDateString()+ " (" + Title + ")";
    }
}
﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Survey 的摘要说明
/// </summary>
public class Survey
{
        public Survey() { }
	    public int CustomerID { get; set; } 
        public int IncidentID { get; set; } 
        public int ResponseTime { get; set; } 
        public int TechEfficiency { get; set; }
        public int Resolution { get; set; } 
        public string Comments { get; set; } 
        public bool Contact { get;set; }
        public string ContactBy { get; set; }
}
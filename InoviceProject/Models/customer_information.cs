
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------


namespace InoviceProject.Models
{

using System;
    using System.Collections.Generic;
    
public partial class customer_information
{

    public customer_information()
    {

        this.order_master = new HashSet<order_master>();

    }


    public decimal CUSTOMER_ID { get; set; }

    public string CUSTOMER_LASTNAME { get; set; }

    public string CUSTOMER_FIRSTNAME { get; set; }

    public string ADDRESS { get; set; }

    public string CITY { get; set; }

    public string PROVINCE { get; set; }

    public string POSTAL_CODE { get; set; }

    public string USER_NAME { get; set; }

    public string PASSWORD { get; set; }

    public string USERTYPE { get; set; }



    public virtual ICollection<order_master> order_master { get; set; }

}

}

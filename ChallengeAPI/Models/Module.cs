//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace ChallengeAPI.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class Module
    {
        public string macAddress { get; set; }
        public Nullable<System.DateTime> dateAssigned { get; set; }
        public string studentAssigned { get; set; }
    
        public virtual Student Student { get; set; }
    }
}

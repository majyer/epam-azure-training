//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace AdventureWorks.DbModel
{
    using System;
    using System.Collections.Generic;
    
    public partial class BusinessEntityAddress1
    {
        public int BusinessEntityID { get; set; }
        public int AddressID { get; set; }
        public int AddressTypeID { get; set; }
        public System.Guid rowguid { get; set; }
        public System.DateTime ModifiedDate { get; set; }
    
        public virtual Address1 Address { get; set; }
        public virtual AddressType1 AddressType { get; set; }
        public virtual BusinessEntity1 BusinessEntity { get; set; }
    }
}

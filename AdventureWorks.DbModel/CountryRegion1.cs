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
    
    public partial class CountryRegion1
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public CountryRegion1()
        {
            this.CountryRegionCurrencies = new HashSet<CountryRegionCurrency>();
            this.SalesTerritories = new HashSet<SalesTerritory>();
            this.StateProvinces = new HashSet<StateProvince1>();
        }
    
        public string CountryRegionCode { get; set; }
        public string Name { get; set; }
        public System.DateTime ModifiedDate { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<CountryRegionCurrency> CountryRegionCurrencies { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<SalesTerritory> SalesTerritories { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<StateProvince1> StateProvinces { get; set; }
    }
}

﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace EntityFrameworkLinq_CV
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class dinamikCVEntities : DbContext
    {
        public dinamikCVEntities()
            : base("name=dinamikCVEntities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<deneyim> deneyim { get; set; }
        public virtual DbSet<hakkimda> hakkimda { get; set; }
        public virtual DbSet<yetenek> yetenek { get; set; }
    }
}

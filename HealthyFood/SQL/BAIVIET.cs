//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace HealthyFood.SQL
{
    using System;
    using System.Collections.Generic;
    
    public partial class BAIVIET
    {
        public int MaBV { get; set; }
        public string author { get; set; }
        public Nullable<System.DateTime> NgayViet { get; set; }
        public string TheLoai { get; set; }
        public string Tag { get; set; }
        public int MaKH { get; set; }
        public string Anh { get; set; }
        public string TieuDe { get; set; }
        public Nullable<bool> DacTrung { get; set; }
        public string NoiDung { get; set; }
        public string Description { get; set; }
        public string Avatar { get; set; }
    
        public virtual KHACHHANG KHACHHANG { get; set; }
    }
}

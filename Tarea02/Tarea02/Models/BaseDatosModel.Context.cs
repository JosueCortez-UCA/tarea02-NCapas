//------------------------------------------------------------------------------
// <auto-generated>
//     Este código se generó a partir de una plantilla.
//
//     Los cambios manuales en este archivo pueden causar un comportamiento inesperado de la aplicación.
//     Los cambios manuales en este archivo se sobrescribirán si se regenera el código.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Tarea02.Models
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class tarea02Entities : DbContext
    {
        public tarea02Entities()
            : base("name=tarea02Entities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<acceso_premier> acceso_premier { get; set; }
        public virtual DbSet<pelicula> pelicula { get; set; }
        public virtual DbSet<persona> persona { get; set; }
        public virtual DbSet<rol> rol { get; set; }
    }
}

//------------------------------------------------------------------------------
// <auto-generated>
//     Este código se generó a partir de una plantilla.
//
//     Los cambios manuales en este archivo pueden causar un comportamiento inesperado de la aplicación.
//     Los cambios manuales en este archivo se sobrescribirán si se regenera el código.
// </auto-generated>
//------------------------------------------------------------------------------

namespace proyectosena.modelos
{
    using System;
    using System.Collections.Generic;
    
    public partial class reportes
    {
        public int idreportes { get; set; }
        public Nullable<int> idtestemple { get; set; }
    
        public virtual test test { get; set; }
    }
}

namespace ocapiWebAPI.Models
{
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;

    [Table("Empresas")]
    public class Empresas
    {
        [DatabaseGeneratedAttribute(DatabaseGeneratedOption.Identity), Key()]
        public int idEmpresa { get; set; }
        public string nit { get; set; }
        public string rut { get; set; }
        public string camaraComercio { get; set; }
        public string digitoVerificacion { get; set; }
        public string razonSocial { get; set; }
        public string correo { get; set; }
        public string direccion { get; set; }
        public string telefono { get; set; }
        public string codigoActividadEcono { get; set; }
    }
}


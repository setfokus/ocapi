using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.EntityFrameworkCore;
using ocapiWebAPI.Models;

namespace ocapiWebAPI.Models
{
    public class ocapiWebAPIContext : DbContext
    {
        public ocapiWebAPIContext (DbContextOptions<ocapiWebAPIContext> options)
            : base(options)
        {
        }
        public DbSet<ocapiWebAPI.Models.Empresas> Empresas { get; set; }
    }
}

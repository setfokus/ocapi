using Microsoft.AspNetCore.Identity;
using System.Collections.Generic;

namespace Ocapi.Security
{
    public class AppIdentityUser : IdentityUser
    {
        public int? Age { get; set; }
    }
}

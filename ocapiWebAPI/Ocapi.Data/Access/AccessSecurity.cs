using Microsoft.AspNetCore.Identity;
using Ocapi.Security;
using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;
using System.Linq;
using Ocapi.Entities.ViewModels;
//using Ocapi.Entities.ViewModels;

namespace Ocapi.Data.Access
{
    public class AccessSecurity : IAccessSecurty
    {
        UserManager<AppIdentityUser> userManager;
        RoleManager<AppIdentityRole> rolesManager;

        public AccessSecurity(UserManager<AppIdentityUser> userManager, RoleManager<AppIdentityRole> rolesManager)
        {
            this.userManager = userManager;
            this.rolesManager = rolesManager;
        }

        public async Task<SecurityViewModel> Login(string userName, string passWord)
        {
            try
            {
                var user = this.userManager.Users.FirstOrDefault(f => f.UserName == userName);

                if (user != null)
                {
                    var rolesUser = await this.userManager.GetRolesAsync(user);
                    //var roles2 = this.rolesManager.Roles.FirstOrDefault(r => r.Name == roles.FirstOrDefault());
                    return new SecurityViewModel { UserName = user.UserName, RoleName = rolesUser.FirstOrDefault() };
                }
                else
                {
                    return null;
                }
            }
            catch (Exception ex)
            {
                throw;
            }
        }
    }
}

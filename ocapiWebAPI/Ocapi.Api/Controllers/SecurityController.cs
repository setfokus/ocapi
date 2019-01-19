using System;
using System.Collections.Generic;
using System.IdentityModel.Tokens.Jwt;
using System.Linq;
using System.Security.Claims;
using System.Text;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc;
using Microsoft.IdentityModel.Tokens;
//using Ocapi.Api.Models;
using Ocapi.Data.Access;
using Ocapi.Entities.ViewModels;
using Ocapi.Security;

// For more information on enabling MVC for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace Ocapi.Api.Controllers
{
    [Route("api/[controller]")]
    public class SecurityController : Controller
    {

        private readonly UserManager<AppIdentityUser> userManager;
        private readonly RoleManager<AppIdentityRole> rolesManager;
        private AccessSecurity accessSecurity;

        public SecurityController(
            UserManager<AppIdentityUser> userManager, RoleManager<AppIdentityRole> rolesManager)
        {
            this.userManager = userManager;
            this.rolesManager = rolesManager;
            this.accessSecurity = new AccessSecurity(this.userManager, this.rolesManager);
        }

        // GET: /<controller>/
        // GET api/values
        [HttpGet]
        public ActionResult<IEnumerable<string>> Get()
        {
            return new string[] { "value1", "value2" };
        }

        // GET: /<controller>/
        [HttpPost]
        //[ValidateAntiForgeryToken]
        //public async Task<IActionResult> Login([FromBody] LoginViewModel model)

        public async Task<IActionResult> LoginAsync([FromBody] LoginViewModel model)
        {
            if (!ModelState.IsValid)
                return View(model);

            var userValidation = await this.accessSecurity.Login(model.Username, model.Password);

            if (userValidation != null)
            {
                var secretKey = new SymmetricSecurityKey(Encoding.UTF8.GetBytes("superSecretKey@345"));

                var signinCredentials = new SigningCredentials(secretKey, SecurityAlgorithms.HmacSha256);

                var claims = new List<Claim>
                {
                    new Claim(ClaimTypes.Name, userValidation.UserName),
                    new Claim(ClaimTypes.Role, userValidation.RoleName)
                };

                var tokeOptions = new JwtSecurityToken(
                    issuer: "http://localhost:5000",
                    audience: "http://localhost:5000",
                    claims: claims,
                    expires: DateTime.Now.AddMinutes(5),
                    signingCredentials: signinCredentials
                );

                var tokenString = new JwtSecurityTokenHandler().WriteToken(tokeOptions);
                return Ok(new { Token = tokenString, menuList = "Este seria" });
            }
            else
            {
                return BadRequest();
            }
        }
    }
}

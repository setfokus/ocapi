using Ocapi.Entities.ViewModels;
using System.Threading.Tasks;
//using Ocapi.Entities.ViewModels;
namespace Ocapi.Data.Access
{
    interface IAccessSecurty
    {
        Task<SecurityViewModel> Login(string userName, string passWord);
    }
}

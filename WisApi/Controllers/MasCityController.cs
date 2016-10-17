using System.Collections.Generic;
using System.Web.Http;
using WisModel;
using WisRepo;
using WisRepo.Interface;

namespace WisApi.Controllers
{
    public class MasCityController : ApiController
    {
        private IMasCityRepository dependencyInjection;

        public MasCityController(IMasCityRepository model)
        {
            this.dependencyInjection = model;
        }

        public ApiModel GetAll()
        {
            return this.dependencyInjection.ReadAll();
        }
    }
}

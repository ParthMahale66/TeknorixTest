using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Teknorix.Data.Interfaces;
using Teknorix.Data.Model;
//using static Teknorix.Data.Model.JobOpeningsModel;

namespace TeknorixAPI.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class JobOpeningController : ControllerBase
    {
        private readonly IJobOpening _jobOpeningQueryRepository;
        public JobOpeningController(IJobOpening JobOpeningQueryRepository)
        {
            _jobOpeningQueryRepository = JobOpeningQueryRepository;
        }

        [HttpPost]
        [Route("InsertJobDetails")]
        [ProducesResponseType(StatusCodes.Status200OK)]
        public async Task<IActionResult> InsertJobDetails(List<JobOpeningsModel> lstJobDetails)
        {

            var data = _jobOpeningQueryRepository.InsertJobDetails(lstJobDetails);
            return Ok(data);
        }

        [HttpPut]
        [Route("Jobs/{ID}")]
        [ProducesResponseType(StatusCodes.Status200OK)]
        public async Task<IActionResult> Jobs(List<JobOpeningsModel> lstJobDtlsUpd, int ID)
        {
            var data = _jobOpeningQueryRepository.Jobs(lstJobDtlsUpd, ID);
            return Ok(data);
        }

        [HttpPost]
        [Route("GetAllJobDtls/list")]
        [ProducesResponseType(StatusCodes.Status200OK)]
        public async Task<List<JobDetailsModel>> GetAllJobDtls(JobParaModel JobDtls)
        {
            return (List<JobDetailsModel>)await _jobOpeningQueryRepository.GetAllJobDtls(JobDtls);
        }


    }
}

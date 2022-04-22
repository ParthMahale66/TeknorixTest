using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Teknorix.Data.Model;

namespace Teknorix.Data.Interfaces
{
    public interface IJobOpening
    {
       
        Task<CommonResponse> InsertJobDetails(List<JobOpeningsModel> lstJobDetails);
      
        Task<CommonResponse> Jobs(List<JobOpeningsModel> lstJobDtlsUpd, int ID);
        Task<List<JobDetailsModel>> GetAllJobDtls(JobParaModel jobDtls);
      
    }
}

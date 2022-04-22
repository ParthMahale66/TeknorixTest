using Dapper;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Teknorix.Data.Interfaces;
using Teknorix.Data.Model;

namespace Teknorix.Data.Repository
{
    public class JobOpeningRepository : IJobOpening
    {
        

        public async Task<CommonResponse> InsertJobDetails(List<JobOpeningsModel> lstJobDetails)
        {
            try
            {
                CommonResponse objResponse = new CommonResponse();
                var parameters = new DynamicParameters();
                if (lstJobDetails != null && lstJobDetails.Count > 0)
                {
                    foreach (var obj in lstJobDetails[0].JobDetail)
                    {
                        SqlConnection sqlconn = new SqlConnection("Data Source=#;Initial Catalog=#;User ID=#;Password=#");
                       
                        SqlCommand sqlcomm = new SqlCommand("dbo.USP_INS_JOBSDETAILS");
                        sqlconn.Open();
                        sqlcomm.Connection = sqlconn;
                        sqlcomm.CommandType = CommandType.StoredProcedure;
                        sqlcomm.Parameters.AddWithValue("@Id", 0);
                        sqlcomm.Parameters.AddWithValue("@Title", obj.Title);
                        sqlcomm.Parameters.AddWithValue("@Description", obj.Description);
                        sqlcomm.Parameters.AddWithValue("@LocationID", obj.LocationID);
                        sqlcomm.Parameters.AddWithValue("@DepartmentID", obj.DepartmentID);
                        sqlcomm.Parameters.AddWithValue("@ClosingDate", obj.ClosingDate);

                        
                        SqlDataReader sdr = sqlcomm.ExecuteReader();
                    }
                }
                return objResponse;
            }
            catch (Exception exp)
            {
                throw new Exception(exp.Message, exp);
            }
        }

        public async Task<CommonResponse> Jobs(List<JobOpeningsModel> lstJobDtlsUpd, int ID)
        {
            try
            {
                CommonResponse objResponse = new CommonResponse();
                var parameters = new DynamicParameters();
                if (lstJobDtlsUpd != null && lstJobDtlsUpd.Count > 0)
                {
                    foreach (var obj in lstJobDtlsUpd[0].JobDetail)
                    {
                        SqlConnection sqlconn = new SqlConnection("Data Source=#;Initial Catalog=#;User ID=#;Password=#");
                      
                        SqlCommand sqlcomm = new SqlCommand("dbo.USP_INS_JOBSDETAILS");
                        sqlconn.Open();
                        sqlcomm.Connection = sqlconn;
                        sqlcomm.CommandType = CommandType.StoredProcedure;
                        sqlcomm.Parameters.AddWithValue("@Id", ID);
                        sqlcomm.Parameters.AddWithValue("@Title", obj.Title);
                        sqlcomm.Parameters.AddWithValue("@Description", obj.Description);
                        sqlcomm.Parameters.AddWithValue("@LocationID", obj.LocationID);
                        sqlcomm.Parameters.AddWithValue("@DepartmentID", obj.DepartmentID);
                        sqlcomm.Parameters.AddWithValue("@ClosingDate", obj.ClosingDate);

                        SqlDataReader sdr = sqlcomm.ExecuteReader();
                    }
                }
                return objResponse;
            }
            catch (Exception exp)
            {
                throw new Exception(exp.Message, exp);
            }
        }

        public async Task<List<JobDetailsModel>> GetAllJobDtls(JobParaModel jobDtls)
        {
            SqlConnection sqlconn = new SqlConnection("Data Source=#;Initial Catalog=#;User ID=#;Password=#");
            SqlCommand sqlcomm = new SqlCommand("dbo.USP_GET_JOBSDETAILS");
            sqlconn.Open();
            sqlcomm.Connection = sqlconn;
            sqlcomm.CommandType = CommandType.StoredProcedure;
            sqlcomm.Parameters.AddWithValue("@LocationId", jobDtls.LocationId);
            sqlcomm.Parameters.AddWithValue("@DepartmentId", jobDtls.DepartmentId);

            SqlDataReader sdr = sqlcomm.ExecuteReader();

            List<JobDetailsModel> lstJobDtls = new List<JobDetailsModel>();
            JobDetailsModel JobDtls = new JobDetailsModel();

            while (sdr.Read())
            {
                JobDtls.JobId = sdr["JO_ID"].ToString();
                JobDtls.Code = sdr["jb_JobDtl_Code"].ToString();
                JobDtls.Title = sdr["JO_Title"].ToString();
                JobDtls.Location = sdr["jb_location_title"].ToString();
                JobDtls.Department = sdr["jb_dep_title"].ToString();
                JobDtls.PostedDate = sdr["jb_JobDtl_PostedDate"].ToString();
                JobDtls.ClosingDate = sdr["JO_ClosingDate"].ToString();
                lstJobDtls.Add(JobDtls);
            }

            return lstJobDtls;
        }

    }
}

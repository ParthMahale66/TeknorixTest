using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Teknorix.Data.Model
{
    public class JobOpeningsModel
    {

        public List<JobDetails> JobDetail { get; set; }
        public List<GetAllDetails> GetAllDetail { get; set; }
    }

    public class JobDetails
    {
        // public int ID { get; set; }
        public string Title { get; set; }
        public string Description { get; set; }
        public int LocationID { get; set; }
        public int DepartmentID { get; set; }
        public string ClosingDate { get; set; }

    }
    public class GetAllDetails
    {
        // public int ID { get; set; }
        //public string Title { get; set; }
        //public string Description { get; set; }
        public int LocationID { get; set; }
        public int DepartmentID { get; set; }
       // public string ClosingDate { get; set; }

    }
}


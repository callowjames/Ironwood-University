using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

//Done By: ISA (Innovative System Analysts)
//F12 PROG1210 RAD Client Server Project

namespace UniversityWeb.Lookup
{
    public partial class CourseLookup : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnManage_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Manage/CourseManage.aspx");
        }

        protected void btnReport_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Report/CourseServiceReport.aspx");
        }
    }
}
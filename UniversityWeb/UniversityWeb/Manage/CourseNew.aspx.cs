using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

//require dlls
using System.Data.Entity;   //Note: must add this dll thru References
using System.Data.Objects;
using System.Data.EntityClient;
using UniversityLibrary;

//Done By: ISA (Innovative System Analysts)
//F12 PROG1210 RAD Client Server Project

namespace UniversityWeb.Manage
{
    public partial class CourseNew : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblMessages.Text = "";
        }
        protected void btnInsert_Click(object sender, EventArgs e)
        {
            try
            {
                Course newCourse = new Course();
                newCourse.Name = txtNewName.Text;
                newCourse.Title = txtNewTitle.Text;
                newCourse.Credits = Convert.ToByte(txtNewCredits.Text);
                newCourse.Department = Convert.ToInt32(txtNewDepartment.Text);

                IronwoodEntities2 context = new IronwoodEntities2();

                context.AddObject("Courses", newCourse);
                context.SaveChanges();

                lblMessages.Text = "Course successfully inserted!";

                txtNewCredits.Text = "";
                txtNewDepartment.Text = "";
                txtNewName.Text = "";
                txtNewTitle.Text = "";
            }

            catch (Exception ex)
            {
                lblMessages.Text = ex.Message;
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Manage/CourseManage.aspx");
        }
    }
}
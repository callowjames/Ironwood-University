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
    public partial class CourseManage : System.Web.UI.Page
    {
        IronwoodEntities2 context = new IronwoodEntities2();
        public int selectedCourseID;

        protected void Page_Load(object sender, EventArgs e)
        {
            load();
            pnlManage.Visible = false;

            selectedCourseID = Convert.ToInt32(ddlExistingCourses.SelectedValue);
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //go back
            Response.Redirect("Default.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            //new course
            Response.Redirect("CourseNew.aspx");
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            //grab selected course from ddl
            var deleteCourse =
                from courses in context.Courses
                where courses.Name == ddlExistingCourses.SelectedItem.Text
                select courses;

            try
            {
                //delete course
                foreach (var course in deleteCourse)
                {
                    context.Courses.DeleteObject(course);
                }
                context.SaveChanges();

                ddlExistingCourses.Items.Clear();
                load();

                lblMessages.Text = "Course successfully deleted.";

            }

            catch (Exception ex)
            {
                lblMessages.Text = ex.Message;
            }
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            try
            {
                //update course information
                Course uniCourse = context.Courses.Where(d => d.ID == selectedCourseID).First();
                uniCourse.Name = txtManageName.Text;
                uniCourse.Title = txtManageTitle.Text;
                uniCourse.Credits = Convert.ToByte(txtManageCredits.Text);
                uniCourse.Department = Convert.ToInt16(txtManageDepartment.Text);

                context.SaveChanges();

                lblMessages.Text = "Course updated successfully.";

                txtManageName.Text = "";
                txtManageTitle.Text = "";
                txtManageCredits.Text = "";
                txtManageDepartment.Text = "";

                pnlManage.Visible = false;
            }

            catch (Exception ex)
            {
                lblMessages.Text = ex.Message;
            }
        }

        protected void btnEdit_Click(object sender, EventArgs e)
        {
            Course course = context.Courses.Where(d => d.ID == selectedCourseID).First();

            txtManageName.Text = course.Name;
            txtManageTitle.Text = course.Title;
            txtManageCredits.Text = Convert.ToString(course.Credits);
            txtManageDepartment.Text = Convert.ToString(course.Department);

            pnlManage.Visible = true;
        }

        private void load()
        {
            //loop through existing courses and add them to ddl
            if (this.ddlExistingCourses.SelectedIndex == -1)
                foreach (Course temp in context.Courses)
                {
                    this.ddlExistingCourses.Items.Add(new ListItem(temp.Name + " " + temp.Title, Convert.ToString(temp.ID)));
                }

            lblMessages.Text = "";
            lblMessages.Text = "";
        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using UniversityLibrary;
using UniversityLibrary.UniversityServiceReportDatasetTableAdapters;

//Done By: ISA (Innovative System Analysts)
//F12 PROG1210 RAD Client Server Project

namespace UniversityWeb.Report
{
    public partial class CourseServiceReport : System.Web.UI.Page
    {
        UniversityLibrary.UniversityServiceReportDataset dsUni = new UniversityServiceReportDataset();
        UniversityLibrary.UniversityServiceReportDatasetTableAdapters.UniversityStudentTableAdapter daStu = new UniversityLibrary.UniversityServiceReportDatasetTableAdapters.UniversityStudentTableAdapter();
        UniversityLibrary.UniversityServiceReportDatasetTableAdapters.UniversityServiceProjectTableAdapter daPro = new UniversityLibrary.UniversityServiceReportDatasetTableAdapters.UniversityServiceProjectTableAdapter();

        UniversityLibrary.UniversityServiceReport report = new UniversityServiceReport();

        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                daStu.Fill(dsUni.UniversityStudent);
                daPro.Fill(dsUni.UniversityServiceProject);

                report.SetDataSource(dsUni);

                this.CrystalReportViewer1.ReportSource = report;
            }
            catch (Exception ex) { lblMessages.Text = ex.Message; }

        }

        protected void btnHome_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Default.aspx");
        }

        protected void btnViewAll_Click(object sender, EventArgs e)
        {
            try
            {
                this.CrystalReportViewer1.ReportSource = report;
            }
            catch (Exception ex) { lblMessages.Text = ex.Message; }
            txtFilter.Text = "";
        }

        protected void btnFilter_Click(object sender, EventArgs e)
        {
            try
            {
                this.CrystalReportViewer1.ReportSource = report;

                this.CrystalReportViewer1.SelectionFormula = "{UniversityStudent.StudentUserID} = '" + txtFilter.Text +"'";
            }
            catch (Exception ex) { lblMessages.Text = ex.Message; }
        }
    }
}
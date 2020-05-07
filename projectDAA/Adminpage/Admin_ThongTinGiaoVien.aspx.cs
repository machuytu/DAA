using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace projectDAA.Adminpage
{
    public partial class Admin_ThongTinGiaoVien : System.Web.UI.Page
    {
        
        System.Globalization.DateTimeFormatInfo dateInfo = new System.Globalization.DateTimeFormatInfo();
        
        protected void Page_Load(object sender, EventArgs e)
        {
            GetData();
        }

        private void GetData()
        {
            AccessData accessData = new AccessData();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = "st_LayThongTinGiaoVienAdmin";
            GridView1.DataSource = accessData.laydulieu(cmd);
            GridView1.DataBind();
        }

        protected void imgthem_Click(object sender, ImageClickEventArgs e)
        {
            
            AccessData accessData = new AccessData();
            DateTime txtngaysinhdate = DateTime.ParseExact(txtngaysinh.Text.ToString().Trim(), "M/dd/yyyy", CultureInfo.InvariantCulture);
            DateTime txtngayvaolamdate = DateTime.ParseExact(txtngayvaolam.Text.ToString().Trim(), "M/dd/yyyy", CultureInfo.InvariantCulture);
            SqlCommand cmd = new SqlCommand();
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = "st_InsertAdminthongtingiaovien";
            cmd.Parameters.Add("magv", SqlDbType.Char, 10).Value = txtmagv.Text.ToString().Trim();
            cmd.Parameters.Add("tengv", SqlDbType.NVarChar, 50).Value = txthoten.Text.ToString().Trim();
            cmd.Parameters.Add("gioitinh", SqlDbType.NVarChar, 10).Value = ddgioitinh.Text.ToString().Trim();
            cmd.Parameters.Add("ngaysinh", SqlDbType.SmallDateTime).Value = txtngaysinhdate;
            cmd.Parameters.Add("diachi", SqlDbType.NVarChar, 50).Value = txtdiachi.Text.ToString().Trim();
            cmd.Parameters.Add("quequan", SqlDbType.NVarChar, 50).Value = txtquequan.Text.ToString().Trim();
            cmd.Parameters.Add("sdt", SqlDbType.NVarChar, 30).Value = txtsdt.Text.ToString().Trim();
            cmd.Parameters.Add("capbac", SqlDbType.NVarChar, 30).Value = dbcapbac.Text.ToString().Trim();
            cmd.Parameters.Add("email", SqlDbType.NVarChar, 40).Value = txtemail.Text.ToString().Trim();
            cmd.Parameters.Add("ngayvaolam", SqlDbType.SmallDateTime).Value = txtngayvaolamdate;
            accessData.ExcuteNonequery_sqlcommnand(cmd);
            GetData();
        }

        protected void imgcapnhat_Click(object sender, ImageClickEventArgs e)
        {
            AccessData ac = new AccessData();
            DateTime txtngaysinhdate = DateTime.ParseExact(txtngaysinh.Text.ToString().Trim(), "M/dd/yyyy", CultureInfo.InvariantCulture);
            DateTime txtngayvaolamdate = DateTime.ParseExact(txtngayvaolam.Text.ToString().Trim(), "M/dd/yyyy", CultureInfo.InvariantCulture);
            SqlCommand cmd = new SqlCommand();
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = "st_UpdateAdminthongtingiaovien";
            cmd.Parameters.Add("magv", SqlDbType.Char, 10).Value = txtmagv.Text.ToString().Trim();
            cmd.Parameters.Add("tengv", SqlDbType.NVarChar, 50).Value = txthoten.Text.ToString().Trim();
            cmd.Parameters.Add("gioitinh", SqlDbType.NVarChar, 10).Value = ddgioitinh.Text.ToString().Trim();
            cmd.Parameters.Add("ngaysinh", SqlDbType.SmallDateTime).Value = txtngaysinhdate;
            cmd.Parameters.Add("diachi", SqlDbType.NVarChar, 50).Value = txtdiachi.Text.ToString().Trim();
            cmd.Parameters.Add("quequan", SqlDbType.NVarChar, 50).Value = txtquequan.Text.ToString().Trim();
            cmd.Parameters.Add("sdt", SqlDbType.NVarChar, 30).Value = txtsdt.Text.ToString().Trim();
            cmd.Parameters.Add("capbac", SqlDbType.NVarChar, 30).Value = dbcapbac.Text.ToString().Trim();
            cmd.Parameters.Add("email", SqlDbType.NVarChar, 40).Value = txtemail.Text.ToString().Trim();
            cmd.Parameters.Add("ngayvaolam", SqlDbType.SmallDateTime).Value = txtngayvaolamdate;
            ac.ExcuteNonequery_sqlcommnand(cmd);
            GetData();
        }
        protected void imgxoa_Click(object sender, ImageClickEventArgs e)
        {
            AccessData ac = new AccessData();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = "st_DeleteAdminthongtingiaovien";
            cmd.Parameters.Add("magv", SqlDbType.Char, 10).Value = txtmagv.Text.ToString().Trim();
            ac.ExcuteNonequery_sqlcommnand(cmd);
            GetData();
        }

        protected void btnreport_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/RPT_GiaoVien.aspx");
        }
    }
}
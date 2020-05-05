using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace projectDAA
{
    public partial class DangNhap : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["idlogin"] = null;
            txtuser.Focus();
        }

        protected void imgdangnhap_Click(object sender, ImageClickEventArgs e)
        {
            MyDBDataContext db = new MyDBDataContext();
            int id = db.st_login(txtuser.Text.Trim(), txtpass.Text.Trim());
            int nhom = db.st_checkAccountGroup(txtuser.Text.Trim(), txtpass.Text.Trim());
            if (id > 0)
            {
                Session["idlogin"] = id;
                if (nhom == 0)
                    Response.Redirect("Administrator.aspx");
                else if (nhom == 1)
                {
                    int idgv = db.st_getgiaovienid(txtuser.Text.Trim());
                    Session["idgiaovien"] = idgv;
                    Response.Redirect("Thongtingiaovien.aspx");
                }
                else
                {
                    int idsv = db.st_getsinhvienid(txtuser.Text.Trim());
                    Session["idsinhvien"] = idsv;
                    Response.Redirect("Thongtincanhan.aspx");
                }
            }
            else
            {
                Response.Write("<script>alert('Đăng nhập thất bại');</script>");
            }
        }
    }
}
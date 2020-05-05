using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace projectDAA
{
    public partial class Administrator1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblngaythang.Text = DateTime.Today.ToString("dd/MM/yyyy");
            lblgio.Text = DateTime.Now.ToShortTimeString();
        }
    }
}
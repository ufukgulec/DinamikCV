using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EntityFrameworkLinq_CV
{
    public partial class yeniyetenek : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        dinamikCVEntities db = new dinamikCVEntities();
        protected void Button1_Click(object sender, EventArgs e)
        {
            yetenek y = new yetenek();
            y.yetenekAd = TextBox1.Text;
            int derece = Convert.ToInt32(TextBox2.Text);
            y.derece = derece;
            db.yetenek.Add(y);
            db.SaveChanges();
            Response.Redirect("becerilerPanel.aspx");
        }
    }
}
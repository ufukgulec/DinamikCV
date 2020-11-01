using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EntityFrameworkLinq_CV
{
    public partial class yenideneyim : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        dinamikCVEntities db = new dinamikCVEntities();
        protected void Button1_Click(object sender, EventArgs e)
        {
            deneyim d= new deneyim();
            d.deneyim1 = TextBox1.Text;
            d.aciklama = TextBox2.Text;
            db.deneyim.Add(d);
            db.SaveChanges();
            Response.Redirect("deneyimlerPanel.aspx");
        }
    }
}
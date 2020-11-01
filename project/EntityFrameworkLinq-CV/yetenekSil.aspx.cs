using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EntityFrameworkLinq_CV
{
    public partial class yetenekSil : System.Web.UI.Page
    {
        dinamikCVEntities db = new dinamikCVEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            int x = Convert.ToInt32(Request.QueryString["id"]);
            var beceri = db.yetenek.Find(x);
            db.yetenek.Remove(beceri);
            db.SaveChanges();
            Response.Redirect("becerilerPanel.aspx");
        }
    }
}
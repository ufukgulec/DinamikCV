using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EntityFrameworkLinq_CV
{
    public partial class yetenekGüncelle : System.Web.UI.Page
    {
        dinamikCVEntities db = new dinamikCVEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            int x = Convert.ToInt32(Request.QueryString["id"]);
            if (Page.IsPostBack == false)
            {
                var ytnk = db.yetenek.Find(x);
                TextBox1.Text = ytnk.yetenekAd;
                TextBox2.Text = ytnk.derece.ToString();
            }


        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int x = Convert.ToInt32(Request.QueryString["id"]);
            var ytnk = db.yetenek.Find(x);
            ytnk.yetenekAd = TextBox1.Text;
            ytnk.derece = Convert.ToInt32(TextBox2.Text);

            db.SaveChanges();
            Response.Redirect("becerilerPanel.aspx");
        }
    }
}
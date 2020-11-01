using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EntityFrameworkLinq_CV
{
    public partial class index : System.Web.UI.Page
    {
        dinamikCVEntities db = new dinamikCVEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            RepeaterAbout.DataSource = db.hakkimda.ToList();
            RepeaterAbout.DataBind();
            DataListDeneyimler.DataSource = db.deneyim.ToList();
            DataListDeneyimler.DataBind();
            DataListYetenek.DataSource = db.yetenek.ToList();
            DataListYetenek.DataBind();
        }
    }
}
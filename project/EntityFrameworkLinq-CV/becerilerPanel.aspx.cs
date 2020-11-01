using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EntityFrameworkLinq_CV
{
    public partial class becerilerPanel : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            dinamikCVEntities db = new dinamikCVEntities();
            Repeater1.DataSource = db.yetenek.ToList();
            Repeater1.DataBind();
        }
    }
}
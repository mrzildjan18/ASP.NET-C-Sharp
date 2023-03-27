using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MODULE2_PERFORMANCE
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Page on load COR show false
            printCOR.Visible = false;
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            // Page button click COR show true
            printCOR.Visible = true;

            // Values text boxes to the corresponding labels
            String stud_name = TextBox1.Text;
            Label2.Text = stud_name;

            String stud_id = TextBox2.Text;
            Label1.Text = stud_id;

            String stud_sect = TextBox3.Text;
            Label3.Text = stud_sect;
        }
    }
}
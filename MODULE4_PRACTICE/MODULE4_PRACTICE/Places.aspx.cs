using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MODULE4_PRACTICE
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnConvert_Click(object sender, EventArgs e)
        {
            // Value from text box and convert to int32
            int num = Convert.ToInt32(TextBox1.Text);

            // Calculation for places
            int hund = num / 100;
            int ten = (num / 10) % 10;
            int one = num % 10;

            // Print text after calculating the places
            hunds.Text = hund.ToString();
            tens.Text = ten.ToString();
            ones.Text = one.ToString();
        }
    }
}
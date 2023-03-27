using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PRACTICE_PROBLEM
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            showOutput.Visible = false;
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            showOutput.Visible = true;

            // Initialize counters and input variable
            int countZeroNumbers = 0;
            int countPositiveNumbers = 0;
            int countNegativeNumbers = 0;
            int num;

            // Check if user input is valid and not equal to 9999
            if (int.TryParse(txtNum.Text, out num) && num != 9999)
            {
                // Enter loop to process user input
                do
                {
                    // Update counters based on user input
                    if (num == 0)
                    {
                        countZeroNumbers++;
                    }
                    else if (num < 0)
                    {
                        countNegativeNumbers++;
                    }
                    else if (num > 0)
                    {
                        countPositiveNumbers++;
                    }

                    // Clear input fields
                    txtNum.Text = "";

                } while (int.TryParse(txtNum.Text, out num) && num != 9999);
            }

            // Display results in corresponding labels
            lblZeroNumbers.Text = countZeroNumbers.ToString();
            lblNegativeNumbers.Text = countNegativeNumbers.ToString();
            lblPositiveNumbers.Text = countPositiveNumbers.ToString();
        }
    }
}
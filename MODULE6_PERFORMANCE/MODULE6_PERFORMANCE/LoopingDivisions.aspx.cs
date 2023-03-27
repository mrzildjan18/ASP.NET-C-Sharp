using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MODULE6_PRACTICE
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Visible false onpage load
            divResult.Visible = false;
        }

        protected void btnCompute_Click(object sender, EventArgs e)
        {
            // Visible true onclick button
            divResult.Visible = true;

            // Get the value from TextBox
            int firstNum = Convert.ToInt32(txtFirstNum.Text);
            int secondNum = Convert.ToInt32(txtSecondNum.Text);

            // Initialize variable and values
            int quotient = 0;
            bool isNegativeQuotient = false;

            // Determine the sign of the result
            if (firstNum < 0 && secondNum > 0 || firstNum > 0 && secondNum < 0)
            {
                isNegativeQuotient = true;
            }

            // Convert positive values for the division calculation
            if (firstNum < 0)
            {
                firstNum = -firstNum;
            }
            if (secondNum < 0)
            {
                secondNum = -secondNum;
            }

            // While loop compute using repeated subraction
            while (firstNum >= secondNum)
            {
                // Increment quotient every subtraction done
                firstNum -= secondNum;
                quotient++;
            }

            // Get the remaining integers
            int remainder = firstNum;

            // Apply the sign to the quotient
            if (isNegativeQuotient)
            {
                quotient = -quotient;
                remainder = -remainder;
            }

            // Display all values after computations
            displayQuotient.Text = quotient.ToString();
            displayRemainder.Text = remainder.ToString();
        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MODULE4_PERFORMANCE
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnConvert_Click(object sender, EventArgs e)
        {
            // Get the amount and amount tendered from the text boxes
            int amount = Convert.ToInt32(TextBox1.Text);
            int amountTendered = Convert.ToInt32(TextBox2.Text);

            // Convert the amounts to double and calculate the change   
            double price = amount / 100.0;
            double tendered = amountTendered / 100.0;
            double change = (amountTendered - amount) / 100.0;

            // Display the amount, amount tendered, and change in text label
            displayAmount.Text = price.ToString("0.00");
            displayAmountTendered.Text = tendered.ToString("0.00");
            displayChange.Text = change.ToString("0.00");

            // Calculate the number of 20 bill and display in text label
            int twentyBill = (int)(change / 20);
            change = change % 20;
            twentyPesos.Text = twentyBill.ToString();

            // Calculate the number of 10 bill and display in text label
            int tenBill = (int)(change / 10);
            change = change % 10;
            tenPesos.Text = tenBill.ToString();

            // Calculate the number of 5 bill and display in text label
            int fiveBill = (int)(change / 5);
            change = change % 5;
            fivePesos.Text = fiveBill.ToString();

            // Calculate the number of 1 bill and display in text label
            int oneBill = (int)(change / 1);
            change = change % 1;
            onePesos.Text = oneBill.ToString();

            // Calculate the number of 0.25 bill and display in text label
            int twentyfiveCentavoBill = (int)(change / 0.25);
            change = change % 0.25;
            twentyFiveCentavo.Text = twentyfiveCentavoBill.ToString();

            // Calculate the number of 0.10 bill and display in text label
            int tenCentavoBill = (int)(change / 0.10);
            change = change % 0.10;
            tenCentavo.Text = tenCentavoBill.ToString();

            // Calculate the number of 0.10 bill and display in text label
            int fiveCentavoBill = (int)(change / 0.05);
            change = change % 0.05;
            fiveCentavo.Text = fiveCentavoBill.ToString();
        }
    }
}
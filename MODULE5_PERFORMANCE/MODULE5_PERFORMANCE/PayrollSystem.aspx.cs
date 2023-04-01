using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MODULE5_PERFORMANCE
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // On Page Load Hide Payslip
            paySlip.Visible = false;
        }

        protected void btnCalculate_Click(object sender, EventArgs e)
        {
            // On Button Click Display Payslip
            paySlip.Visible = true;

            // Declare and Initialize Variables
            double overtimeHours = 0.00;
            double ratePerDay = 0.00;
            double withholdingTax = 0.00;
            double sssDeduction = 0.00;
            double philHealthDeduction = 0.00;
            double pagIbigDeduction = 0.00;
            double totalDeduction = 0.00;
            double grossEarnings = 0.00;
            double netEarnings = 0.00;
            double hoursWorked = 0.00;

            // Display Employee First Name and Lastname
            string firstName = txtFirstName.Text;
            string lastName = txtLastName.Text;
            displayFullName.Text = firstName + ' ' + lastName;

            // Inputted Total Hours Worked and Display
            hoursWorked = Convert.ToInt32(txtHoursWorked.Text);
            displayHoursWorked.Text = hoursWorked.ToString();

            // Determine Rate Per Day Divided Hour Rate of Philippines
            // Display Civil Status
            string employeeStatus = ddlEmployeeType.SelectedValue;
            switch (employeeStatus)
            {
                case "R":
                    displayEmployeeStatus.Text = "Regular";
                    ratePerDay = 490.88 / 8;
                    break;
                case "P":
                    displayEmployeeStatus.Text = "Probationary";
                    ratePerDay = 420.30 / 8;
                    break;
                case "C":
                    displayEmployeeStatus.Text = "Casual";
                    ratePerDay = 380.56 / 8;
                    break;
                default:
                    displayEmployeeStatus.Text = "Part Timer";
                    ratePerDay = 300.10 / 8;
                    break;
            }
            displayratePerDay.Text = ratePerDay.ToString("0.00");

            // Calculate Basic Pay and Display
            double basicPay = 120 * ratePerDay;
            displayBasicPay.Text = basicPay.ToString("0.00");

            // Calculate Overtime Pay and Display
            if (hoursWorked > 120)
            {
                overtimeHours = (hoursWorked - 120) * ratePerDay * 1.5;
            }
            displayOverTimePay.Text = overtimeHours.ToString("0.00");

            // Calculate Gross Earnings and Display
            grossEarnings = basicPay + overtimeHours;
            displayGrossEarnings.Text = grossEarnings.ToString("0.00");

            // Calculate Withholding Tax and Display
            string civilStatus = ddlCivilStatus.SelectedValue;
            switch (civilStatus)
            {
                case "S":
                    displayCivilStatus.Text = "Single";
                    withholdingTax = grossEarnings * 0.1575;
                    break;
                case "M":
                    displayCivilStatus.Text = "Married";
                    withholdingTax = grossEarnings * 0.1012;
                    break;
                case "W":
                    displayCivilStatus.Text = "Widowed";
                    withholdingTax = grossEarnings * 0.1235;
                    break;
                default:
                    withholdingTax = grossEarnings * 0.126;
                    break;
            }
            displayWithholdingTax.Text = withholdingTax.ToString("0.00");

            // Calculate SSS Deduction and Display
            if (grossEarnings >= 12000)
            {
                sssDeduction = grossEarnings * 0.115;
            }
            else if (grossEarnings < 9500)
            {
                sssDeduction = grossEarnings * 0.0916;
            }
            else
            {
                sssDeduction = grossEarnings * 0.105;
            }
            displaySSSDeduction.Text = sssDeduction.ToString("0.00");

            // Calculate Philhealth Deduction and Display
            if (grossEarnings >= 12000)
            {
                philHealthDeduction = 420;
            }
            else if (grossEarnings < 9500)
            {
                philHealthDeduction = 290;
            }
            else
            {
                philHealthDeduction = 380;
            }
            displayPhilHealthDeduction.Text = philHealthDeduction.ToString("0.00");

            // Calculate PagIbig Deduction and Display
            if (ddlCivilStatus.SelectedValue == "S")
            {
                pagIbigDeduction = grossEarnings * 0.0275;
                
            }
            else if (ddlCivilStatus.SelectedValue == "M")
            {
                pagIbigDeduction = grossEarnings * 0.0375;
            }
            else
            {
                pagIbigDeduction = grossEarnings * 0.0255;
            }
            displayPagIbigDeduction.Text = pagIbigDeduction.ToString("0.00");

            // Calculate Total Deductions and Display
            totalDeduction = withholdingTax + sssDeduction + philHealthDeduction + pagIbigDeduction;
            displayTotalDeductions.Text = totalDeduction.ToString("0.00");

            // Calculate Net Earnings and Display
            netEarnings = grossEarnings - totalDeduction;
            displayNetEarnings.Text = netEarnings.ToString("0.00");
        }

        protected void btnReset_Click(object sender, EventArgs e)
        {
            //Reset textboxes to blank
            txtFirstName.Text = "";
            txtLastName.Text = "";
            txtHoursWorked.Text = "";

            //Reset radio buttons to unchecked
            rblMaleStatus.Checked = false;
            rblFemaleStatus.Checked = false;

            //Reset dropdown list to the first option
            ddlCivilStatus.SelectedIndex = 0;
            ddlEmployeeType.SelectedIndex = 0;
        }

        protected void rblMaleStatus_CheckedChanged(object sender, EventArgs e)
        {
            // Check Selected Radio Button and Display
            if (rblMaleStatus.Checked == true)
            {
                displayGender.Text = "Male";
            }
        }

        protected void rblFemaleStatus_CheckedChanged(object sender, EventArgs e)
        {
            // Check Selected Radio Button and Display
            if (rblFemaleStatus.Checked == true)
            {
                displayGender.Text = "Female";
            }
        }
    }
}
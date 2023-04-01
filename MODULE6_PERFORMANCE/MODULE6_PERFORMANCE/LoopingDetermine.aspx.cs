using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MODULE6_PERFORMANCE
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Visible false onpage load
            divDetermine.Visible = false;
        }
        protected void btnDetermine_Click(object sender, EventArgs e)
        {
            // Visible true onclick button
            divDetermine.Visible = true;

            // Get the value from TextBox
            int num = Convert.ToInt32(txtNum.Text);

            // Determine Prime Numbers
            // Initialize variable and values
            // If condition and for loop to calculate and determine Prime Numbers
            bool isPrime = true;
            if (num <= 1) 
            {
                isPrime = false;
            }
            else
            {
                for (int i = 2; i <= num / 2; i++)
                {
                    if (num % i == 0)
                    {
                        isPrime = false;
                        break;
                    }
                }
            }

            // Display if its Prime Number or Not
            if (isPrime)
            {
                lblPrimeNumber.Text = " is a Prime Number";
            }
            else
            {
                lblPrimeNumber.Text = " is not a Prime Number";
            }

            // Determine Perfect Numbers
            // Initialize variable and values
            // For loop and if condition to calculate and determine Perfect Number
            int perfectSum = 0;
            for (int i = 1; i < num; i++)
            {
                if (num % i == 0)
                {
                    perfectSum += i;
                }
            }

            // Display if its a Perfect Number or Not
            if (perfectSum == num)
            {
                lblPerfectNumber.Text = " is a Perfect Number";
            }
            else
            {
                lblPerfectNumber.Text = " is not a Perfect Number";
            }

            // Determine Strong Numbers
            // Initialize variable and values
            // While loop and foor loop to calculate and determine Strong Number
            int strongSum = 0;
            int strongTemp = num;
            while (strongTemp > 0)
            {
                int strongDigit = strongTemp % 10;
                int strongFactorial = 1;

                for (int i = strongDigit; i > 0; i--)
                {
                    strongFactorial *= i;
                }

                strongSum += strongFactorial;
                strongTemp /=  10;
            }

            // Display if its a Strong Number or Not
            if (strongSum == num)
            {
                lblStrongNumber.Text = " is a Strong number";
            }
            else
            {
                lblStrongNumber.Text = " is not a Strong number";
            }

            // Factorial Numbers Calculation
            // Initialize variable and values
            // For loop to calculate the Factorial Numbers
            long factorialNumber = 1L;
            for (int i = 1; i <= num; i++)
            {
                factorialNumber *= i;
            }

            // Display the calculated Factorial Numbers
            lblFactorial.Text = factorialNumber.ToString();

            // Determine Palindrome Numbers
            // Initialize variable and values
            // While loop to calculate and determine the Palindrome Numbers
            int palindromeReverse = 0;
            int palindromeTemp = num;
            while (palindromeTemp > 0)
            {
                int remainder = palindromeTemp % 10;
                palindromeReverse = palindromeReverse * 10 + remainder;
                palindromeTemp /= 10;
            }

            // Display if its a Palindrome Number or Not
            if (num == palindromeReverse)
            {
                lblPalindrome.Text = " is a Palindrome number";
            }
            else
            {
                lblPalindrome.Text = " is not a Palindrome number ";
            }
        }
    }
}
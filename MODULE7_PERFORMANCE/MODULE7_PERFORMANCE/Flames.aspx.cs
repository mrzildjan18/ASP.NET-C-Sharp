using System;
using System.Collections.Generic;
using System.Data.SqlTypes;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MODULE7_PERFORMANCE
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Hide the div on page load
            divCompatibility.Visible = false;
        }

        protected void btnCompatibilityV1_Click(object sender, EventArgs e)
        {
            // Show the div on button click
            divCompatibility.Visible = true;

            // Get the names from the textboxes
            string yourName = txtYourName.Text.ToUpper().Replace(" ", "");
            string crushName = txtCrushName.Text.ToUpper().Replace(" ", "");

            // Declare the FLAMES game
            string flamesGame = "FLAMES";

            // Declare the count of the names
            int countNames = yourName.Length + crushName.Length;

            // Loop through the names and remove the same letters
            for (int i = 0; i < yourName.Length; i++)
            {
                for (int j = 0; j < crushName.Length; j++)
                {
                    if (yourName[i] == crushName[j])
                    {
                        countNames -= 2;
                        yourName = yourName.Remove(i, 1);
                        crushName = crushName.Remove(j, 1);
                        i--;
                        break;
                    }
                }
            }

            // Display the names and the remaining letters
            lblYourName.Text = yourName;
            lblCrushName.Text = crushName;
            lblLetters.Text =  "Total Remaining Letters: " + countNames.ToString();

            // Get the remaining letters and display the status
            int remainingLetters = countNames % flamesGame.Length;

            // Switch statement to display the status
            switch (remainingLetters)
            {
                case 1:
                    lblStatus.Text = "Friends";
                    break;
                case 2:
                    lblStatus.Text = "Lovers";
                    break;
                case 3:
                    lblStatus.Text = "Admirers";
                    break;
                case 4:
                    lblStatus.Text = "Marriage";
                    break;
                case 5:
                    lblStatus.Text = "Enemies";
                    break;
                case 6:
                case 0:
                    lblStatus.Text = "Secret Lovers";
                    break;
                default:
                    lblStatus.Text = "No Match or Invalid Input!";
                    break;
            }
            // Display the changelogs version
            lblChangelogs.Text = "Version 1: <br />  This version of FLAMES will delete all pairs and count the remaining letters.";
        }

        protected void btnCompatibilityV2_Click(object sender, EventArgs e)
        {
            // Show the div on button click
            divCompatibility.Visible = true;

            // Get the names from the textboxes
            string yourName = txtYourName.Text.ToUpper().Replace(" ", "");
            string crushName = txtCrushName.Text.ToUpper().Replace(" ", "");

            // Declare the FLAMES game
            string flamesGame = "FLAMES";

            // Declare the removed letters
            int removedLetters = 0;

            // Loop through the names and remove the same letters
            for (int i = 0; i < yourName.Length; i++)
            {
                for (int j = 0; j < crushName.Length; j++)
                {
                    if (yourName[i] == crushName[j])
                    {
                        removedLetters += 2;
                        yourName = yourName.Remove(i, 1);
                        crushName = crushName.Remove(j, 1);
                        i--;
                        break;
                    }
                }
            }

            // Display the names and the removed letters
            lblYourName.Text = yourName;
            lblCrushName.Text = crushName;
            lblLetters.Text = "Total Remove Letters: " + removedLetters.ToString();

            // Get the removed letters and display the status
            int removedTotal = removedLetters % flamesGame.Length;

            // Switch statement to display the status
            switch (removedTotal)
            {
                case 1:
                    lblStatus.Text = "Friends";
                    break;
                case 2:
                    lblStatus.Text = "Lovers";
                    break;
                case 3:
                    lblStatus.Text = "Admirers";
                    break;
                case 4:
                    lblStatus.Text = "Marriage";
                    break;
                case 5:
                    lblStatus.Text = "Enemies";
                    break;
                case 6:
                case 0:
                    lblStatus.Text = "Secret Lovers";
                    break;
                default:
                    lblStatus.Text = "No Match or Invalid Input!";
                    break;
            }
            // Display the changelogs version
            lblChangelogs.Text = "Version 2: <br />  This version of FLAMES will delete all pairs and count the deleted letters.";
        }

        protected void btnCompatibilityV3_Click(object sender, EventArgs e)
        {
            // Show the div on button click
            divCompatibility.Visible = true;

            // Get the names from the textboxes
            string yourName = txtYourName.Text.ToUpper().Replace(" ", "");
            string crushName = txtCrushName.Text.ToUpper().Replace(" ", "");
            
            // Declare the FLAMES game
            string flamesGame = "FLAMES";

            // Loop through the names and replace all the same letters
            for (int i = 0; i < yourName.Length; i++)
            {
                char temp1 = yourName[i];
                for (int j = 0; j < crushName.Length; j++)
                {
                    char temp2 = crushName[j];
                    if (temp1 == temp2)
                    {
                        yourName = yourName.Replace(temp1, 'X');
                        crushName = crushName.Replace(temp2, 'X');
                    }
                }
            }

            // Declare the removed letters
            int removeCount = 0;

            // Loop through the names and remove the same letters
            for (int i = 0; i < yourName.Length; i++)
            {
                if (yourName[i] == 'X')
                {
                    yourName = yourName.Remove(i, 1);
                    removeCount++;
                    i--;
                }
            }

            // Loop through the names and remove the same letters
            for (int j = 0; j < crushName.Length; j++)
            {
                if (crushName[j] == 'X')
                {
                    crushName = crushName.Remove(j, 1);
                    removeCount++;
                    j--;
                }
            }

            // Display the names and the removed letters
            lblYourName.Text = yourName;
            lblCrushName.Text = crushName;

            // Get the removed letters and display the status
            int remainingLetters = yourName.Length + crushName.Length;
            lblLetters.Text = "Total Remaining Letters: " + remainingLetters;

            // Get the remaining letters and display the status
            int remainLetters = remainingLetters % flamesGame.Length;

            // Switch statement to display the status
            switch (remainLetters)
            {
                case 1:
                    lblStatus.Text = "Friends";
                    break;
                case 2:
                    lblStatus.Text = "Lovers";
                    break;
                case 3:
                    lblStatus.Text = "Admirers";
                    break;
                case 4:
                    lblStatus.Text = "Marriage";
                    break;
                case 5:
                    lblStatus.Text = "Enemies";
                    break;
                case 6:
                case 0:
                    lblStatus.Text = "Secret Lovers";
                    break;
                default:
                    lblStatus.Text = "No Match or Invalid Input!";
                    break;
            }
            // Display the changelogs version
            lblChangelogs.Text = "Version 3: <br />  This version of FLAMES will delete all pairs and all possible remaining letters in pairs and count the remaining letters.";
        }

        protected void btnCompatibilityV4_Click(object sender, EventArgs e)
        {
            // Show the div on button click
            divCompatibility.Visible = true;

            // Get the names from the textboxes
            string yourName = txtYourName.Text.ToUpper().Replace(" ", "");
            string crushName = txtCrushName.Text.ToUpper().Replace(" ", "");
            
            // Declare the FLAMES game
            string flamesGame = "FLAMES";

            // Loop through the names and replace all the same letters
            for (int i = 0; i < yourName.Length; i++)
            {
                char temp1 = yourName[i];
                for (int j = 0; j < crushName.Length; j++)
                {
                    char temp2 = crushName[j];
                    if (temp1 == temp2)
                    {
                        yourName = yourName.Replace(temp1, 'X');
                        crushName = crushName.Replace(temp2, 'X');
                    }
                }
            }

            // Declare the removed letters
            int removeCount = 0;

            // Loop through the names and remove the same letters
            for (int i = 0; i < yourName.Length; i++)
            {
                if (yourName[i] == 'X')
                {
                    yourName = yourName.Remove(i, 1);
                    removeCount++;
                    i--;
                }
            }

            // Loop through the names and remove the same letters
            for (int j = 0; j < crushName.Length; j++)
            {
                if (crushName[j] == 'X')
                {
                    crushName = crushName.Remove(j, 1);
                    removeCount++;
                    j--;
                }
            }

            // Display the names and the removed letters
            lblYourName.Text = yourName;
            lblCrushName.Text = crushName;
            lblLetters.Text = "Total Remove Letters: " + removeCount; ;

            // Get the removed letters and display the status
            int removeLetters = removeCount % flamesGame.Length;

            // Switch statement to display the status
            switch (removeLetters)
            {
                case 1:
                    lblStatus.Text = "Friends";
                    break;
                case 2:
                    lblStatus.Text = "Lovers";
                    break;
                case 3:
                    lblStatus.Text = "Admirers";
                    break;
                case 4:
                    lblStatus.Text = "Marriage";
                    break;
                case 5:
                    lblStatus.Text = "Enemies";
                    break;
                case 6:
                case 0:
                    lblStatus.Text = "Secret Lovers";
                    break;
                default:
                    lblStatus.Text = "No Match or Invalid Input!";
                    break;
            }
            // Display the changelogs version
            lblChangelogs.Text = "Version 4: <br />  This version of FLAMES will delete all pairs and all possible remaining letters in pairs and count the deleted letters.";
        }

        protected void btnReset_Click(object sender, EventArgs e)
        {
            // Reset all the fields
            divCompatibility.Visible = false;
            txtYourName.Text = "";
            txtCrushName.Text = "";
            lblChangelogs.Text = "";
            lblYourName.Text = "";
            lblCrushName.Text = "";
            lblLetters.Text = "";
            lblStatus.Text = "";
        }
    }
}
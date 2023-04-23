using System;
using System.Data;
using System.Data.SqlClient;
using System.Globalization;
using System.Linq;
using System.Web.UI.WebControls;

namespace FORM_BANK_ACCOUNT
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        string connectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\ZILD\source\repos\FORM_BANK_ACCOUNT\App_Data\FormAccount.mdf;Integrated Security=True";
        protected void Page_Load(object sender, EventArgs e)
        {
            // If the page is not in postback mode
            if (!IsPostBack)
            {
                PopulateCountries();
            }
        }
        private void PopulateCountries()
        {
            // Clear existing items in the countries dropdown list
            ddlCountries.Items.Clear();

            // Add a default 'Select Country' option to the countries dropdown list
            ddlCountries.Items.Add(new ListItem("Select Country", ""));

            // Get a list of RegionInfo objects representing all the specific cultures
            var countries = System.Globalization.CultureInfo.GetCultures(System.Globalization.CultureTypes.SpecificCultures)
                            .Select(x => new System.Globalization.RegionInfo(x.LCID))
                            .Distinct()
                            .OrderBy(x => x.DisplayName);

            // Loop through the countries list and add each country to the countries dropdown list
            foreach (var country in countries)
            {
                ddlCountries.Items.Add(new ListItem(country.DisplayName, country.EnglishName));
            }
        }

        protected void cvTerms_ServerValidate(object source, ServerValidateEventArgs args)
        {
            args.IsValid = chkTerms.Checked;
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            string lastName = txtLname.Text;
            string firstName = txtFname.Text;
            string middleName = txtMname.Text;
            DateTime birthDate;
            string gender = ddlGender.SelectedValue;
            string nationality = txtNationality.Text;
            string maritalStatus = ddlStatus.SelectedValue;
            string citizenShip = txtCitizenship.Text;
            string religion = ddlReligions.SelectedValue;
            string placeBirth = txtPlaceBirth.Text;
            string addressLineOne = txtAddressLineOne.Text;
            string addressLineTwo = txtAddressLineTwo.Text;
            string city = txtCity.Text;
            string stateProvinceRegion = txtStateProvinceRegion.Text;
            string zipCode = txtZipCode.Text;
            string country = ddlCountries.SelectedValue;
            string telephoneNo = txtTelephoneNo.Text;
            string mobileNo = txtMobileNo.Text;
            string emailAddress = txtEmailAdd.Text;
            string countryCode = txtCountryCode.Text;
            string sourceFounds = ddlSourceFunds.SelectedValue;
            string OtherSourceFunds = txtOtherSourceFunds.Text;
            string employmentStatus = ddlEmploymentStatus.SelectedValue;
            string OtherEmploymentStatus = txtOtherEmploymentStatus.Text;
            string IDType = ddlIDType.SelectedValue;
            string OtherID = txtOtherID.Text;
            string accountType = ddlAccountType.SelectedValue;
            string Others = txtOthers.Text;
            string mothersLastname = txtMothersLname.Text;
            string mothersFirstname = txtMothersFname.Text;
            string mothersMiddlename = txtMothersMname.Text;
            string mothersOccupation = txtMothersOccupation.Text;
            string fathersLastname = txtFathersLname.Text;
            string fathersFirstname = txtFathersFname.Text;
            string fathersMiddlename = txtFathersMname.Text;
            string fathersOccupation = txtFathersOccupation.Text;

            try
            {
                if (DateTime.TryParseExact(txtBirthdate.Text, "MM-dd-yyyy", CultureInfo.InvariantCulture, DateTimeStyles.None, out birthDate))
                {
                    // SqlConnection to Database
                    using (SqlConnection con = new SqlConnection(connectionString))
                    {
                        //  Open database connection 
                        con.Open();

                        // Insert queries to database
                        string query = "INSERT INTO FormAccount (lastName, firstName, middleName, birthDate, gender, nationality, maritalStatus, citizenShip, religion, placeBirth, addressLineOne, addressLineTwo, city, stateProvinceRegion, zipCode, country, telephoneNo, mobileNo, emailAddress, countryCode, sourceFounds, OtherSourceFunds, employmentStatus, OtherEmploymentStatus, IDType, OtherID, accountType, Others, mothersLastname, mothersFirstname, mothersMiddlename, mothersOccupation, fathersLastname, fathersFirstname, fathersMiddlename, fathersOccupation) " +
                                        "VALUES (@lastName, @firstName, @middleName, @birthDate, @gender, @nationality, @maritalStatus, @citizenShip, @religion, @placeBirth, @addressLineOne, @addressLineTwo, @city, @stateProvinceRegion, @zipCode, @country, @telephoneNo, @mobileNo, @emailAddress, @countryCode, @sourceFounds, @OtherSourceFunds, @employmentStatus, @OtherEmploymentStatus, @IDType, @OtherID, @accountType, @Others, @mothersLastname, @mothersFirstname, @mothersMiddlename, @mothersOccupation, @fathersLastname, @fathersFirstname, @fathersMiddlename, @fathersOccupation)";

                        using (SqlCommand cmd = new SqlCommand(query, con))
                        {
                            cmd.Parameters.AddWithValue("@lastName", lastName);
                            cmd.Parameters.AddWithValue("@firstName", firstName);
                            cmd.Parameters.AddWithValue("@middleName", middleName);
                            cmd.Parameters.AddWithValue("@birthDate", birthDate);
                            cmd.Parameters.AddWithValue("@gender", gender);
                            cmd.Parameters.AddWithValue("@nationality", nationality);
                            cmd.Parameters.AddWithValue("@maritalStatus", maritalStatus);
                            cmd.Parameters.AddWithValue("@citizenShip", citizenShip);
                            cmd.Parameters.AddWithValue("@religion", religion);
                            cmd.Parameters.AddWithValue("@placeBirth", placeBirth);
                            cmd.Parameters.AddWithValue("@addressLineOne", addressLineOne);
                            cmd.Parameters.AddWithValue("@addressLineTwo", addressLineTwo);
                            cmd.Parameters.AddWithValue("@city", city);
                            cmd.Parameters.AddWithValue("@stateProvinceRegion", stateProvinceRegion);
                            cmd.Parameters.AddWithValue("@zipCode", zipCode);
                            cmd.Parameters.AddWithValue("@country", country);
                            cmd.Parameters.AddWithValue("@telephoneNo", telephoneNo);
                            cmd.Parameters.AddWithValue("@mobileNo", mobileNo);
                            cmd.Parameters.AddWithValue("@emailAddress", emailAddress);
                            cmd.Parameters.AddWithValue("@countryCode", countryCode);
                            cmd.Parameters.AddWithValue("@sourceFounds", sourceFounds);
                            cmd.Parameters.AddWithValue("@OtherSourceFunds", OtherSourceFunds);
                            cmd.Parameters.AddWithValue("@employmentStatus", employmentStatus);
                            cmd.Parameters.AddWithValue("@OtherEmploymentStatus", OtherEmploymentStatus);
                            cmd.Parameters.AddWithValue("@IDType", IDType);
                            cmd.Parameters.AddWithValue("@OtherID", OtherID);
                            cmd.Parameters.AddWithValue("@accountType", accountType);
                            cmd.Parameters.AddWithValue("@Others", Others);
                            cmd.Parameters.AddWithValue("@mothersLastname", mothersLastname);
                            cmd.Parameters.AddWithValue("@mothersFirstname", mothersFirstname);
                            cmd.Parameters.AddWithValue("@mothersMiddlename", mothersMiddlename);
                            cmd.Parameters.AddWithValue("@mothersOccupation", mothersOccupation);
                            cmd.Parameters.AddWithValue("@fathersLastname", fathersLastname);
                            cmd.Parameters.AddWithValue("@fathersFirstname", fathersFirstname);
                            cmd.Parameters.AddWithValue("@fathersMiddlename", fathersMiddlename);
                            cmd.Parameters.AddWithValue("@fathersOccupation", fathersOccupation);

                            int rowsAffect = cmd.ExecuteNonQuery();
                            if (rowsAffect > 0)
                            {
                                Response.Write("Sucessfully Added!");
                            }
                        }
                        // Closing connection to the database
                        con.Close();
                    }
                }
            }
            catch (Exception ex)
            {
                Response.Write("Error Message: " + ex);
            }
        }

        protected void btnReset_Click(object sender, EventArgs e)
        {

        }
    }
}
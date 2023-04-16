using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FORM_BANK_ACCOUNT
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // If the page is not in postback mode
            if (!IsPostBack)
            {
                PopulateCountries();
            }

            // Set birthdate textbox attributes
            TextBox txtBirthdate = (TextBox)FindControl("txtBirthdate");
            txtBirthdate.Attributes["min"] = "1900-01-01";
            txtBirthdate.Attributes["max"] = DateTime.Today.ToString("yyyy-MM-dd");
            txtBirthdate.Attributes["required"] = "required";
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

        protected void btnSubmit_Click(object sender, EventArgs e)
        {

        }

        protected void btnReset_Click(object sender, EventArgs e)
        {

        }
    }
}
<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="FORM_BANK_ACCOUNT.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <style type="text/css">
        .centered {
            margin-right: auto;
            margin-left: auto;
            width: 991px;
        }

        .div {
            width: 100%;
            max-width: 800px;
            min-width: 300px;
            background-color: #f2f2f2;
        }

        .hidden-radio input[type="radio"] {
            display: none;
        }

        @media (max-width: 767px) {
            .my-div {
                font-size: 16px;
            }
        }

        @media (max-width: 480px) {
            .my-div {
                font-size: 14px;
            }
        }

        .auto-style1 {
            width: 100%;
            margin-top: 28px;
        }

        .auto-style2 {
            width: 265px;
        }

        .auto-style8 {
            color: #FFFFFF;
            font-size: xx-large;
        }

        .auto-style9 {
            color: #FFFFFF;
        }

        .auto-style10 {
            width: 265px;
            color: #FFFFFF;
        }

        input[type="text"], select, #txtBirthdate {
            display: block;
            width: 100%;
            padding: 5px;
            margin: 0;
            box-sizing: border-box;
        }

        .auto-style11 {
            font-size: x-large;
            color: #FFFFFF;
            text-align: center;
        }

        .auto-style13 {
            color: #FFFFFF;
            height: 22px;
            text-align: center;
            font-size: x-large;
        }

        .auto-style14 {
            font-size: large;
        }

        .auto-style17 {
            width: 265px;
            height: 70px;
        }

        .auto-style18 {
            width: 265px;
            color: #FFFFFF;
            height: 52px;
        }

        .auto-style20 {
            color: #FFFFFF;
            text-align: left;
        }

        .auto-style23 {
            font-size: medium;
            font-weight: bold;
        }

        .auto-style24 {
            font-size: medium;
            font-weight: bold;
            margin-left: 0px;
        }

        .auto-style25 {
            text-align: right;
        }

        .auto-style26 {
            color: #D3C153;
        }

        .auto-style27 {
            color: #D3C153;
            font-size: medium;
        }
    </style>
    <title></title>
</head>
<body style="background: #610005;">
    <form id="form1" runat="server">
        <div class="div centered">
            <table class="auto-style1" style="border: 1px solid white; background-color: #B70D1A; margin-bottom: 30px">
                <tr>
                    <td colspan="2" style="text-align: center" class="auto-style8"><strong>PERSONAL BANK INFOMATION FORM</strong></td>
                </tr>
                <tr>
                    <td colspan="2" style="background-color: #C58F45" class="auto-style11"><strong>Personal Details</strong></td>
                </tr>
                <tr>
                    <td class="auto-style17">
                        <span class="auto-style9">Last Name:</span>
                        <asp:TextBox ID="txtLname" runat="server" Placeholder="First Name"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvLname" runat="server" ErrorMessage="Please enter your last name" ControlToValidate="txtLname" CssClass="auto-style26"></asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style17">
                        <span class="auto-style9">First Name:</span>
                        <asp:TextBox ID="txtFname" runat="server" Placeholder="Last Name"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvFname" runat="server" ErrorMessage="Please enter your first name" ControlToValidate="txtFname" CssClass="auto-style26"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <span class="auto-style9">Middle Name:</span>
                        <asp:TextBox ID="txtMname" runat="server" Placeholder="Middle Name"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfMname" runat="server" ErrorMessage="Please enter your middle name" ControlToValidate="txtMname" CssClass="auto-style26"></asp:RequiredFieldValidator>
                    </td>
                    <td>
                        <span class="auto-style9">Birthdate:</span>
                        <asp:TextBox ID="txtBirthdate" runat="server" type="date" min="" max="" required=""></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvtxtBirthdate" runat="server" ErrorMessage="Please enter your birthdate" ControlToValidate="txtBirthdate" CssClass="auto-style26"></asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="cvBirthdate" runat="server" ErrorMessage="Please enter a valid date" Operator="DataTypeCheck" Type="Date" ControlToValidate="txtBirthdate" CssClass="auto-style26"></asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2"><span class="auto-style9">Gender:</span><asp:DropDownList ID="ddlGender" runat="server">
                            <asp:ListItem Value="">Choose Gender</asp:ListItem>
                            <asp:ListItem>Male</asp:ListItem>
                            <asp:ListItem>Female</asp:ListItem>
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="rfvGender" runat="server" ErrorMessage="Please select gender" InitialValue="" ControlToValidate="ddlGender" CssClass="auto-style26"></asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style10">Nationality:
                        <asp:TextBox ID="txtNationality" runat="server" Placeholder="Nationality"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvNationality" runat="server" ErrorMessage="Please enter your nationality" ControlToValidate="txtNationality" CssClass="auto-style26"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style18">Marital Status:
                        <asp:DropDownList ID="ddlStatus" runat="server">
                            <asp:ListItem Value="">Choose Status</asp:ListItem>
                            <asp:ListItem>Single</asp:ListItem>
                            <asp:ListItem>Married</asp:ListItem>
                            <asp:ListItem>Divorced</asp:ListItem>
                            <asp:ListItem>Widowed</asp:ListItem>
                            <asp:ListItem>Separated</asp:ListItem>
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="rfvStatus" runat="server" ErrorMessage="Please select marital status" InitialValue="" ControlToValidate="ddlStatus" CssClass="auto-style26"></asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style18">Citizenship:
                        <asp:TextBox ID="txtCitizenship" runat="server" Placeholder="Citizenship"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvCitizenship" runat="server" ErrorMessage="Please enter your citizenship" ControlToValidate="txtCitizenship" CssClass="auto-style26"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style10">Religion:
                        <asp:DropDownList ID="ddlReligions" runat="server">
                            <asp:ListItem Value="">Choose Religion</asp:ListItem>
                            <asp:ListItem Text="Buddhism" Value="Buddhism" />
                            <asp:ListItem Text="Christianity" Value="Christianity" />
                            <asp:ListItem Text="Hinduism" Value="Hinduism" />
                            <asp:ListItem Text="Islam" Value="Islam" />
                            <asp:ListItem Text="Judaism" Value="Judaism" />
                            <asp:ListItem Text="Sikhism" Value="Sikhism" />
                            <asp:ListItem Text="Adventist" Value="Adventist" />
                            <asp:ListItem Text="Iglesia" Value="Iglesia" />
                            <asp:ListItem Text="Born Again" Value="BornAgain" />
                            <asp:ListItem Text="Other" Value="Other" />
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="rfvReligions" runat="server" ErrorMessage="Please select religion" InitialValue="" ControlToValidate="ddlReligions" CssClass="auto-style26"></asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style10">Place of Birth:
                        <asp:TextBox ID="txtPlaceBirth" runat="server" Placeholder="Place of Birth"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvPlaceBirth" runat="server" ErrorMessage="Please enter your place of birth" ControlToValidate="txtPlaceBirth" CssClass="auto-style26"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style11" colspan="2" style="background-color: #C58F45">
                        <strong>Residential Address</strong></td>
                </tr>
                <tr>
                    <td class="auto-style10">Adress Line 1:
                        <asp:TextBox ID="txtAddressLineOne" runat="server" Placeholder="Adress Line 1"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvAddressLineOne" runat="server" ErrorMessage="Please enter your address line 1" ControlToValidate="txtAddressLineOne" CssClass="auto-style26"></asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style10">Adress Line 2:
                        <asp:TextBox ID="txtAddressLineTwo" runat="server" Placeholder="Adress Line 2 (Optional)" ></asp:TextBox>
                        <br />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style10">City:
                        <asp:TextBox ID="txtCity" runat="server" Placeholder="City"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvCity" runat="server" ErrorMessage="Please enter your city" ControlToValidate="txtCity" CssClass="auto-style26"></asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style10">State / Province/ Region: 
                        <asp:TextBox ID="txtStateProvinceRegion" runat="server" Placeholder="State / Province/ Region"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvStateProvinceRegion" runat="server" ErrorMessage="Please enter state / province / region" ControlToValidate="txtStateProvinceRegion" CssClass="auto-style26"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style10">Zip Code:
                        <asp:TextBox ID="txtZipCode" runat="server" Placeholder="Zip Code"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvZipCode" runat="server" ErrorMessage="Please enter zip code" ControlToValidate="txtZipCode" CssClass="auto-style26"></asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style10">Country:
                    <asp:DropDownList ID="ddlCountries" runat="server" />
                        <asp:RequiredFieldValidator ID="rfvCountries" runat="server" ErrorMessage="Please select country" InitialValue="" ControlToValidate="ddlCountries" CssClass="auto-style26"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style11" colspan="2" style="background-color: #C58F45"><strong>Contact Details</strong></td>
                </tr>
                <tr>
                    <td class="auto-style10">Telephone No.
                        <asp:TextBox ID="txtTelephoneNo" runat="server" Placeholder="Telephone No."></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvTelephoneNo" runat="server" ErrorMessage="Please enter your telephone number" ControlToValidate="txtTelephoneNo" CssClass="auto-style26"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="revTelephoneNo" runat="server" ErrorMessage="Please enter valid number" ValidationExpression="^\d+$" ControlToValidate="txtTelephoneNo" CssClass="auto-style26"></asp:RegularExpressionValidator>
                    </td>
                    <td class="auto-style10">Mobile No.
                        <asp:TextBox ID="txtMobileNo" runat="server" Placeholder="Mobile No."></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvMobileNo" runat="server" ErrorMessage="Please enter your mobile number" ControlToValidate="txtMobileNo" CssClass="auto-style26"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="revMobileNo" runat="server" ErrorMessage="Please enter valid number" ValidationExpression="^\d+$" ControlToValidate="txtMobileNo" CssClass="auto-style26"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style10">Email Address:
                        <asp:TextBox ID="txtEmailAdd" runat="server" Placeholder="Email Address"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvEmailAdd" runat="server" ErrorMessage="Please enter your email address" ControlToValidate="txtEmailAdd" CssClass="auto-style26"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="revEmailAdd" runat="server" ErrorMessage="Please enter valid email address" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="txtEmailAdd" CssClass="auto-style26"></asp:RegularExpressionValidator>
                    </td>
                    <td class="auto-style10">
                        <br />
                        Country Code:
                        <asp:TextBox ID="txtCountryCode" runat="server" Placeholder="Country Code"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvCountryCode" runat="server" ErrorMessage="Please enter your country code" ControlToValidate="txtCountryCode" CssClass="auto-style26"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="revCountryCode" runat="server" ErrorMessage="Please enter a valid country code, including a plus sign (+) followed by 2-3 digits" ValidationExpression="^\+\d{2,3}$" ControlToValidate="txtCountryCode" CssClass="auto-style26"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style11" colspan="2" style="background-color: #C58F45"><strong>Financial Details</strong></td>
                </tr>
                <tr>
                    <td class="auto-style9">Source of Funds:<br />
                        <asp:DropDownList ID="ddlSourceFunds" runat="server" onchange="toggleOtherSourceFundsTextBox();">
                            <asp:ListItem Value="">Select Source of Founds</asp:ListItem>
                            <asp:ListItem>Employment</asp:ListItem>
                            <asp:ListItem>Business</asp:ListItem>
                            <asp:ListItem>Pension</asp:ListItem>
                            <asp:ListItem Value="OtherSourceFunds">Others</asp:ListItem>
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="rfvSourceFunds" runat="server" ErrorMessage="Please select source of funds" InitialValue="" ControlToValidate="ddlSourceFunds" CssClass="auto-style26"></asp:RequiredFieldValidator>
                        <asp:TextBox ID="txtOtherSourceFunds" runat="server" Style="display: none;" Placeholder="If others, please specify."></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvOtherSourceFunds" runat="server" ErrorMessage="Please enter other source of funds" ControlToValidate="txtOtherSourceFunds" CssClass="auto-style26"></asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style9">
                        <br />
                        Employment Status: 
                        <asp:DropDownList ID="ddlEmploymentStatus" runat="server" onchange="toggleOtherEmploymentStatusTextBox();">
                            <asp:ListItem Value="">Employment Status</asp:ListItem>
                            <asp:ListItem>Employed</asp:ListItem>
                            <asp:ListItem>Self-employed</asp:ListItem>
                            <asp:ListItem>Retired</asp:ListItem>
                            <asp:ListItem>Student</asp:ListItem>
                            <asp:ListItem Value="Others">Others</asp:ListItem>
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="rfvEmploymentStatus" runat="server" ErrorMessage="Please select employment status" InitialValue="" ControlToValidate="ddlEmploymentStatus" CssClass="auto-style26"></asp:RequiredFieldValidator>
                        <asp:TextBox ID="txtOtherEmploymentStatus" runat="server" Style="display: none;" Placeholder="If others, please specify."></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvOtherEmploymentStatus" runat="server" ErrorMessage="Please enter other employment status" ControlToValidate="txtOtherEmploymentStatus" CssClass="auto-style26"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style11" colspan="2" style="background-color: #C58F45"><strong>ID Type</strong></td>
                </tr>
                <tr>
                    <td class="auto-style9" colspan="2">
                        <span class="auto-style9">ID Type:</span>
                        <asp:DropDownList ID="ddlIDType" runat="server" onchange="toggleOtherIDTextBox();">
                            <asp:ListItem Value="">Select ID Type</asp:ListItem>
                            <asp:ListItem Text="SSS" Value="SSS ID" />
                            <asp:ListItem Text="TIN" Value="TIN ID" />
                            <asp:ListItem Text="PRC" Value="PRC ID" />
                            <asp:ListItem Text="GSIS" Value="GSIS ID" />
                            <asp:ListItem Text="UMID" Value="UMID" />
                            <asp:ListItem Text="Voters" Value="Voter's ID" />
                            <asp:ListItem Text="Postal" Value="Postal ID" />
                            <asp:ListItem Text="Passport" Value="Passport" />
                            <asp:ListItem Text="PhilHealth" Value="PhilHealth ID" />
                            <asp:ListItem Text="Driver's License" Value="Driver's License" />
                            <asp:ListItem Text="Others" Value="OtherID" />
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="rfvIDType" runat="server" ErrorMessage="Please select id type" ControlToValidate="ddlIDType"></asp:RequiredFieldValidator>
                        <span class="auto-style9">
                            <asp:TextBox ID="txtOtherID" runat="server" Style="display: none;" Placeholder="If Other ID, please specify."></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvOtherID" runat="server" ErrorMessage="Please enter your other id type" ControlToValidate="txtOtherID"></asp:RequiredFieldValidator>
                        </span>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style13">
                        <span class="auto-style14">Front ID Picture:</span>
                        <asp:FileUpload ID="fupFrontID" runat="server" />
                        <asp:RequiredFieldValidator ID="rfvFrontID" runat="server" ErrorMessage="Please upload front id" ControlToValidate="fupFrontID" CssClass="auto-style27"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="revFrontID" runat="server" ErrorMessage="Invalid file format. Please upload a PNG, JPG, or JPEG image file" ValidationExpression="^.*\.(png|PNG|jpg|JPG|jpeg|JPEG)$" ControlToValidate="fupFrontID" CssClass="auto-style27"></asp:RegularExpressionValidator>
                    </td>
                    <td class="auto-style13">
                        <span class="auto-style14">Back ID Picture:</span>
                        <asp:FileUpload ID="fupBackID" runat="server" />
                        <asp:RequiredFieldValidator ID="rfvBackID" runat="server" ErrorMessage="Please upload back id" ControlToValidate="fupBackID" CssClass="auto-style27"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="revBackID" runat="server" ErrorMessage="Invalid file format. Please upload a PNG, JPG, or JPEG image file" ValidationExpression="^.*\.(png|PNG|jpg|JPG|jpeg|JPEG)$" ControlToValidate="fupBackID" CssClass="auto-style27"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style13" colspan="2" style="background-color: #C58F45"><strong>Account Type</strong></td>
                </tr>
                <tr>
                    <td colspan="2">
                        <span class="auto-style9">Account Type:</span>
                        <asp:DropDownList ID="ddlAccountType" runat="server" onchange="toggleOtherAccountTypeTextBox();">
                            <asp:ListItem Value="">Select Account Type</asp:ListItem>
                            <asp:ListItem Value="Savings">Savings</asp:ListItem>
                            <asp:ListItem Value="Current">Current</asp:ListItem>
                            <asp:ListItem Value="TimeAccount">Time Account</asp:ListItem>
                            <asp:ListItem Value="Others">Others</asp:ListItem>
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="rfvAccountType" runat="server" ErrorMessage="Please select account type" InitialValue="" ControlToValidate="ddlAccountType" CssClass="auto-style26"></asp:RequiredFieldValidator>
                        <span class="auto-style9">
                            <asp:TextBox ID="txtOthers" runat="server" Style="display: none;" Placeholder="If Others, please specify."></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvOthers" runat="server" ErrorMessage="Please enter other account type" ControlToValidate="txtOthers" CssClass="auto-style26"></asp:RequiredFieldValidator>
                        </span>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style11" colspan="2" style="background-color: #C58F45"><strong>Additional Information</strong></td>
                </tr>
                <tr>
                    <td class="auto-style10">Mother&#39;s Last Name:
                        <asp:TextBox ID="txtMothersLname" runat="server" Placeholder="Mother's Last Name:"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvMothersLname" runat="server" ErrorMessage="Please enter mother's last name" ControlToValidate="txtMothersLname" CssClass="auto-style26"></asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style10">Mother&#39;s First Name:
                        <asp:TextBox ID="txtMothersFname" runat="server" Placeholder="Mother's First Name"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvMothersFname" runat="server" ErrorMessage="Please enter mother's first name" ControlToValidate="txtMothersFname" CssClass="auto-style26"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style10">Mother&#39;s Middle Name:<asp:TextBox ID="txtMothersMname" runat="server" Placeholder="Mother's Middle Name"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvMothersMname" runat="server" ErrorMessage="Please enter mother's middle name" ControlToValidate="txtMothersMname" CssClass="auto-style26"></asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style10">Occupation:
                        <asp:TextBox ID="txtMothersOccupation" runat="server" Placeholder="Occupation"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvMothersOccupation" runat="server" ErrorMessage="Please enter mother's occupation" ControlToValidate="txtMothersOccupation" CssClass="auto-style26"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style10">Father&#39;s Last Name:
                        <asp:TextBox ID="txtFathersLname" runat="server" Placeholder="Father's Last Name"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvFathersLname" runat="server" ErrorMessage="Please enter father's last name" ControlToValidate="txtFathersLname" CssClass="auto-style26"></asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style10">Father&#39;s First Name:
                        <asp:TextBox ID="txtFathersFname" runat="server" Placeholder="Father's First Name"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvFathersFname" runat="server" ErrorMessage="Please enter father's first name" ControlToValidate="txtFathersFname" CssClass="auto-style26"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style10">Father&#39;s Middle Name:
                        <asp:TextBox ID="txtFathersMname" runat="server" Placeholder="Father's Middle Name:"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvFathersMname" runat="server" ErrorMessage="Please enter father's middle name" ControlToValidate="txtFathersMname" CssClass="auto-style26"></asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style10">Occupation:
                        <asp:TextBox ID="txtFathersOccupation" runat="server" Placeholder="Occupation"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvFathersOccupation" runat="server" ErrorMessage="Please enter father's occupation" ControlToValidate="txtFathersOccupation" CssClass="auto-style26"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style25">
                        <asp:Button ID="btnSubmit" runat="server" BackColor="#C58F45" BorderColor="#730007" BorderStyle="Solid" BorderWidth="3px" CssClass="auto-style23" ForeColor="White" Height="48px" Text="Submit" Width="166px" Style="margin: 30px 30px 0px 0px;" OnClick="btnSubmit_Click" />
                    </td>
                    <td class="auto-style20"><strong>
                        <asp:Button ID="btnReset" runat="server" BackColor="#C58F45" BorderColor="#730007" BorderStyle="Solid" BorderWidth="4px" ClientIDMode="Static" CssClass="auto-style24" ForeColor="White" Height="48px" Text="Reset" Width="166px" Style="margin: 30px 0px 0px 30px;" OnClick="btnReset_Click" />
                    </strong></td>
                </tr>
            </table>
        </div>
        <script>
            function toggleOtherAccountTypeTextBox() {
                var ddlAccountType = document.getElementById('<%= ddlAccountType.ClientID %>');
                var txtOthers = document.getElementById('<%= txtOthers.ClientID %>');
                var isOthersSelected = false;

                if (ddlAccountType.value === "Others") {
                    isOthersSelected = true;
                }

                if (isOthersSelected) {
                    txtOthers.style.display = "inline";
                } else {
                    txtOthers.style.display = "none";
                }
            }
            function toggleOtherIDTextBox() {
                var ddlIDType = document.getElementById('<%= ddlIDType.ClientID %>');
                var txtOtherID = document.getElementById('<%= txtOtherID.ClientID %>');
                var isOtherIDSelected = false;

                if (ddlIDType.value === "OtherID") {
                    isOtherIDSelected = true;
                }

                if (isOtherIDSelected) {
                    txtOtherID.style.display = "inline";
                } else {
                    txtOtherID.style.display = "none";
                }
            }
            function toggleOtherSourceFundsTextBox() {
                var ddlSourceFunds = document.getElementById('<%= ddlSourceFunds.ClientID %>');
                var txtOtherSourceFunds = document.getElementById('<%= txtOtherSourceFunds.ClientID %>');
                var isOtherFundsSelected = false;

                if (ddlSourceFunds.value === "OtherSourceFunds") {
                    isOtherFundsSelected = true;
                }

                if (isOtherFundsSelected) {
                    txtOtherSourceFunds.style.display = "inline";
                } else {
                    txtOtherSourceFunds.style.display = "none";
                }
            }
            function toggleOtherEmploymentStatusTextBox() {
                var ddlEmploymentStatus = document.getElementById('<%= ddlEmploymentStatus.ClientID %>');
                var txtOtherEmploymentStatus = document.getElementById('<%= txtOtherEmploymentStatus.ClientID %>');
                var isOtherEmploymentSelected = false;

                if (ddlEmploymentStatus.value === "Others") {
                    isOtherEmploymentSelected = true;
                }

                if (isOtherEmploymentSelected) {
                    txtOtherEmploymentStatus.style.display = "inline";
                } else {
                    txtOtherEmploymentStatus.style.display = "none";
                }
            }
        </script>
    </form>
</body>
</html>

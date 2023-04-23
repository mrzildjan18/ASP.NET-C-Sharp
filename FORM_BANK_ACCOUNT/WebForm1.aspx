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
            border: 1px solid white;
            background-color: #FCFFEC;
            margin-bottom: 30px;
            box-shadow: 0px 0px 10px 0px rgba(0, 0, 0, 0.1);
            transition: all 0.3s ease;
        }

            .auto-style1:hover {
                box-shadow: 0px 4px 20px 0px rgba(0, 0, 0, 0.2);
                transform: translateY(-4px);
            }

        .auto-style2 {
            width: 265px;
        }

        .auto-style8 {
            color: #000000;
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
            background-color: transparent;
            outline: none;
            border: none;
            display: block;
            border-bottom: 2px solid #B70D1A;
            width: 100%;
            padding: 5px;
            margin: 0;
            box-sizing: border-box;
        }

        .required-asterisk {
            color: red;
        }

        .auto-style11 {
            font-size: x-large;
            color: #FFFFFF;
            text-align: center;
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

        .auto-style28 {
            font-size: x-large;
            color: #FFFFFF;
            text-align: center;
            height: 31px;
        }

        .auto-style29 {
            width: 265px;
            color: #FFFFFF;
            height: 70px;
        }

        .auto-style31 {
            color: #FFFFFF;
            text-align: center;
        }

        .auto-style32 {
            color: #0066FF;
        }

        .auto-style33 {
            color: #FF0000;
        }
    </style>
    <title></title>
</head>
<body style="background: #B70D1A;">
    <form id="form1" runat="server">
        <div class="div centered">
            <table class="auto-style1">
                <tr>
                    <td colspan="2" style="text-align: center" class="auto-style8"><strong>PERSONAL BANK INFOMATION FORM</strong></td>
                </tr>
                <tr>
                    <td colspan="2" style="background-color: #C58F45" class="auto-style28"><strong>Personal Details</strong></td>
                </tr>
                <tr>
                    <td class="auto-style17">
                        <br />
                        <span class="required-asterisk">*</span>
                        <asp:TextBox ID="txtLname" runat="server" Placeholder="First Name"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvLname" runat="server" ErrorMessage="Please enter your last name" ControlToValidate="txtLname" CssClass="auto-style33"></asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style17">
                        <br />
                        <span class="required-asterisk">*</span>
                        <asp:TextBox ID="txtFname" runat="server" Placeholder="Last Name"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvFname" runat="server" ErrorMessage="Please enter your first name" ControlToValidate="txtFname" CssClass="auto-style33"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <span class="required-asterisk">*</span>
                        <asp:TextBox ID="txtMname" runat="server" Placeholder="Middle Name"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfMname" runat="server" ErrorMessage="Please enter your middle name" ControlToValidate="txtMname" CssClass="auto-style33"></asp:RequiredFieldValidator>
                    </td>
                    <td>
                        <span class="required-asterisk">*</span>
                        <asp:TextBox ID="txtBirthdate" runat="server" type="text" pattern="\d{2}-\d{2}-\d{4}" Placeholder="Birthdate (mm-dd-yyyy)" onkeypress="return isNumberKey(event)"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvBirthdate" runat="server" ControlToValidate="txtBirthdate" ErrorMessage="Please enter a birthdate" CssClass="auto-style33"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="revBirthdate" runat="server" ControlToValidate="txtBirthdate" ErrorMessage="Please enter a valid format mm-dd-yyyy" ValidationExpression="\d{2}-\d{2}-\d{4}" CssClass="auto-style33"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <span class="required-asterisk">*</span>
                        <asp:DropDownList ID="ddlGender" runat="server">
                            <asp:ListItem Value="">Choose Gender</asp:ListItem>
                            <asp:ListItem>Male</asp:ListItem>
                            <asp:ListItem>Female</asp:ListItem>
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="rfvGender" runat="server" ErrorMessage="Please select gender" InitialValue="" ControlToValidate="ddlGender" CssClass="auto-style33"></asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style10">
                        <span class="required-asterisk">*</span>
                        <asp:TextBox ID="txtNationality" runat="server" Placeholder="Nationality"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvNationality" runat="server" ErrorMessage="Please enter your nationality" ControlToValidate="txtNationality" CssClass="auto-style33"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style18">
                        <span class="required-asterisk">*</span>
                        <asp:DropDownList ID="ddlStatus" runat="server">
                            <asp:ListItem Value="">Choose Status</asp:ListItem>
                            <asp:ListItem>Single</asp:ListItem>
                            <asp:ListItem>Married</asp:ListItem>
                            <asp:ListItem>Divorced</asp:ListItem>
                            <asp:ListItem>Widowed</asp:ListItem>
                            <asp:ListItem>Separated</asp:ListItem>
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="rfvStatus" runat="server" ErrorMessage="Please select marital status" InitialValue="" ControlToValidate="ddlStatus" CssClass="auto-style33"></asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style18">
                        <span class="required-asterisk">*</span>
                        <asp:TextBox ID="txtCitizenship" runat="server" Placeholder="Citizenship"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvCitizenship" runat="server" ErrorMessage="Please enter your citizenship" ControlToValidate="txtCitizenship" CssClass="auto-style33"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style10">
                        <span class="required-asterisk">*</span>
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
                        <asp:RequiredFieldValidator ID="rfvReligions" runat="server" ErrorMessage="Please select religion" InitialValue="" ControlToValidate="ddlReligions" CssClass="auto-style33"></asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style10">
                        <span class="required-asterisk">*</span>
                        <asp:TextBox ID="txtPlaceBirth" runat="server" Placeholder="Place of Birth"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvPlaceBirth" runat="server" ErrorMessage="Please enter your place of birth" ControlToValidate="txtPlaceBirth" CssClass="auto-style33"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style11" colspan="2" style="background-color: #C58F45">
                        <strong>Residential Address</strong></td>
                </tr>
                <tr>
                    <td class="auto-style10">
                        <br />
                        <span class="required-asterisk">*</span>
                        <asp:TextBox ID="txtAddressLineOne" runat="server" Placeholder="Adress Line 1"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvAddressLineOne" runat="server" ErrorMessage="Please enter your address line 1" ControlToValidate="txtAddressLineOne" CssClass="auto-style33"></asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style10">
                        <br />
                        <br />
                        <asp:TextBox ID="txtAddressLineTwo" runat="server" Placeholder="Adress Line 2 (Optional)"></asp:TextBox>
                        <br />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style10">
                        <span class="required-asterisk">*</span>
                        <asp:TextBox ID="txtCity" runat="server" Placeholder="City"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvCity" runat="server" ErrorMessage="Please enter your city" ControlToValidate="txtCity" CssClass="auto-style33"></asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style10">
                        <span class="required-asterisk">*</span>
                        <asp:TextBox ID="txtStateProvinceRegion" runat="server" Placeholder="State / Province/ Region"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvStateProvinceRegion" runat="server" ErrorMessage="Please enter state / province / region" ControlToValidate="txtStateProvinceRegion" CssClass="auto-style33"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style10">
                        <span class="required-asterisk">*</span>
                        <asp:TextBox ID="txtZipCode" runat="server" Placeholder="Zip Code"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvZipCode" runat="server" ErrorMessage="Please enter zip code" ControlToValidate="txtZipCode" CssClass="auto-style33"></asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style10">
                        <span class="required-asterisk">*</span>
                        <asp:DropDownList ID="ddlCountries" runat="server" />
                        <asp:RequiredFieldValidator ID="rfvCountries" runat="server" ErrorMessage="Please select country" InitialValue="" ControlToValidate="ddlCountries" CssClass="auto-style33"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style11" colspan="2" style="background-color: #C58F45"><strong>Contact Details</strong></td>
                </tr>
                <tr>
                    <td class="auto-style10">
                        <br />
                        <br />
                        <asp:TextBox ID="txtTelephoneNo" runat="server" Placeholder="Telephone No."></asp:TextBox>
                        <br />
                    </td>
                    <td class="auto-style10">
                        <br />
                        <span class="required-asterisk">*</span>
                        <asp:TextBox ID="txtMobileNo" runat="server" Placeholder="Mobile No."></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvMobileNo" runat="server" ErrorMessage="Please enter your mobile number" ControlToValidate="txtMobileNo" CssClass="auto-style33"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="revMobileNo" runat="server" ErrorMessage="Please enter valid number" ValidationExpression="^\d+$" ControlToValidate="txtMobileNo" CssClass="auto-style33"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style29">
                        <span class="required-asterisk">*</span>
                        <asp:TextBox ID="txtEmailAdd" runat="server" Placeholder="Email Address"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvEmailAdd" runat="server" ErrorMessage="Please enter your email address" ControlToValidate="txtEmailAdd" CssClass="auto-style33"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="revEmailAdd" runat="server" ErrorMessage="Please enter valid email address" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="txtEmailAdd" CssClass="auto-style33"></asp:RegularExpressionValidator>
                    </td>
                    <td class="auto-style29">
                        <br />
                        <span class="required-asterisk">*</span>
                        <asp:TextBox ID="txtCountryCode" runat="server" Placeholder="Mobile No. Country Code"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvCountryCode" runat="server" ErrorMessage="Please enter your country code" ControlToValidate="txtCountryCode" CssClass="auto-style33"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="revCountryCode" runat="server" ErrorMessage="Enter a valid country code: (+) 2-3 digits." ValidationExpression="^\+\d{2,3}$" ControlToValidate="txtCountryCode" CssClass="auto-style33"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style11" colspan="2" style="background-color: #C58F45"><strong>Financial Details</strong></td>
                </tr>
                <tr>
                    <td class="auto-style9">
                        <span class="required-asterisk">*</span>
                        <asp:DropDownList ID="ddlSourceFunds" runat="server" onchange="toggleOtherSourceFundsTextBox();">
                            <asp:ListItem Value="">Select Source of Founds</asp:ListItem>
                            <asp:ListItem>Employment</asp:ListItem>
                            <asp:ListItem>Business</asp:ListItem>
                            <asp:ListItem>Pension</asp:ListItem>
                            <asp:ListItem Value="OtherSourceFunds">Others</asp:ListItem>
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="rfvSourceFunds" runat="server" ErrorMessage="Please select source of funds" InitialValue="" ControlToValidate="ddlSourceFunds" CssClass="auto-style33"></asp:RequiredFieldValidator>
                        <asp:TextBox ID="txtOtherSourceFunds" runat="server" Style="display: none;" Placeholder="If others, please specify."></asp:TextBox>
                        <%--<asp:RequiredFieldValidator ID="rfvOtherSourceFunds" runat="server" ErrorMessage="Please enter other source of funds" ControlToValidate="txtOtherSourceFunds" CssClass="auto-style33"></asp:RequiredFieldValidator>--%>
                    </td>
                    <td class="auto-style9">
                        <br />
                        <span class="required-asterisk">*</span>
                        <asp:DropDownList ID="ddlEmploymentStatus" runat="server" onchange="toggleOtherEmploymentStatusTextBox();">
                            <asp:ListItem Value="">Employment Status</asp:ListItem>
                            <asp:ListItem>Employed</asp:ListItem>
                            <asp:ListItem>Self-employed</asp:ListItem>
                            <asp:ListItem>Retired</asp:ListItem>
                            <asp:ListItem>Student</asp:ListItem>
                            <asp:ListItem Value="Others">Others</asp:ListItem>
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="rfvEmploymentStatus" runat="server" ErrorMessage="Please select employment status" InitialValue="" ControlToValidate="ddlEmploymentStatus" CssClass="auto-style33"></asp:RequiredFieldValidator>
                        <asp:TextBox ID="txtOtherEmploymentStatus" runat="server" Style="display: none;" Placeholder="If others, please specify."></asp:TextBox>
                        <%--<asp:RequiredFieldValidator ID="rfvOtherEmploymentStatus" runat="server" ErrorMessage="Please enter other employment status" ControlToValidate="txtOtherEmploymentStatus" CssClass="auto-style33"></asp:RequiredFieldValidator>--%>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style11" style="background-color: #C58F45"><strong>ID Type</strong></td>
                    <td class="auto-style11" style="background-color: #C58F45"><strong>Account Type</strong></td>
                </tr>
                <tr>
                    <td class="auto-style9">
                        <br />
                        <span class="required-asterisk">*</span>
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
                        <asp:RequiredFieldValidator ID="rfvIDType" runat="server" ErrorMessage="Please select id type" ControlToValidate="ddlIDType" CssClass="auto-style33"></asp:RequiredFieldValidator>
                        <span class="auto-style9">
                            <asp:TextBox ID="txtOtherID" runat="server" Style="display: none;" Placeholder="If Other ID, please specify."></asp:TextBox>
                            <%--<asp:RequiredFieldValidator ID="rfvOtherID" runat="server" ErrorMessage="Please enter your other id type" ControlToValidate="txtOtherID" CssClass="auto-style33"></asp:RequiredFieldValidator>--%>
                        </span>
                    </td>
                    <td class="auto-style9">
                        <br />
                        <span class="required-asterisk">*</span>
                        <asp:DropDownList ID="ddlAccountType" runat="server" onchange="toggleOtherAccountTypeTextBox();">
                            <asp:ListItem Value="">Select Account Type</asp:ListItem>
                            <asp:ListItem Value="Savings">Savings</asp:ListItem>
                            <asp:ListItem Value="Current">Current</asp:ListItem>
                            <asp:ListItem Value="TimeAccount">Time Account</asp:ListItem>
                            <asp:ListItem Value="Others">Others</asp:ListItem>
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="rfvAccountType" runat="server" ErrorMessage="Please select account type" InitialValue="" ControlToValidate="ddlAccountType" CssClass="auto-style33"></asp:RequiredFieldValidator>
                        <span class="auto-style9">
                            <asp:TextBox ID="txtOthers" runat="server" Style="display: none;" Placeholder="If Others, please specify."></asp:TextBox>
                            <%--<asp:RequiredFieldValidator ID="rfvOthers" runat="server" ErrorMessage="Please enter other account type" ControlToValidate="txtOthers" CssClass="auto-style33"></asp:RequiredFieldValidator>--%>
                        </span>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style11" colspan="2" style="background-color: #C58F45"><strong>Additional Information</strong></td>
                </tr>
                <tr>
                    <td class="auto-style10">
                        <br />
                        <span class="required-asterisk">*</span>
                        <asp:TextBox ID="txtMothersLname" runat="server" Placeholder="Mother's Last Name:"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvMothersLname" runat="server" ErrorMessage="Please enter mother's last name" ControlToValidate="txtMothersLname" CssClass="auto-style33"></asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style10">
                        <br />
                        <span class="required-asterisk">*</span>
                        <asp:TextBox ID="txtMothersFname" runat="server" Placeholder="Mother's First Name"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvMothersFname" runat="server" ErrorMessage="Please enter mother's first name" ControlToValidate="txtMothersFname" CssClass="auto-style33"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style10">
                        <br />
                        <asp:TextBox ID="txtMothersMname" runat="server" Placeholder="Mother's Middle Name"></asp:TextBox>
                        <br />
                    </td>
                    <td class="auto-style10">
                        <br />
                        <asp:TextBox ID="txtMothersOccupation" runat="server" Placeholder="Occupation"></asp:TextBox>
                        <br />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style10">
                        <span class="required-asterisk">*</span>
                        <asp:TextBox ID="txtFathersLname" runat="server" Placeholder="Father's Last Name"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvFathersLname" runat="server" ErrorMessage="Please enter father's last name" ControlToValidate="txtFathersLname" CssClass="auto-style33"></asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style10">
                        <span class="required-asterisk">*</span>
                        <asp:TextBox ID="txtFathersFname" runat="server" Placeholder="Father's First Name"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvFathersFname" runat="server" ErrorMessage="Please enter father's first name" ControlToValidate="txtFathersFname" CssClass="auto-style33"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style10">
                        <br />
                        <asp:TextBox ID="txtFathersMname" runat="server" Placeholder="Father's Middle Name:"></asp:TextBox>
                        <br />
                    </td>
                    <td class="auto-style10">
                        <br />
                        <asp:TextBox ID="txtFathersOccupation" runat="server" Placeholder="Occupation"></asp:TextBox>
                        <br />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style31" colspan="2">
                        <span class="required-asterisk">
                            <br />
                            *</span>
                        <asp:CheckBox ID="chkTerms" runat="server" Text="I have read and agree to the following terms and conditions." CssClass="auto-style32" />
                        <br />
                        <asp:CustomValidator ID="cvTerms" runat="server"
                            ErrorMessage="You must agree to the terms and conditions" Display="Dynamic"
                            ForeColor="Red" ValidationGroup="terms" ClientValidationFunction="validateCheckBox" OnServerValidate="cvTerms_ServerValidate"></asp:CustomValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style25">
                        <asp:Button ID="btnSubmit" runat="server" BackColor="#C58F45" BorderColor="#730007" BorderStyle="Solid" BorderWidth="2px" CssClass="auto-style23" ForeColor="White" Height="48px" Text="Submit" Width="166px" Style="margin: 25px 30px 20px 0px;" OnClick="btnSubmit_Click" />
                    </td>
                    <td class="auto-style20"><strong>
                        <asp:Button ID="btnReset" runat="server" BackColor="#C58F45" BorderColor="#730007" BorderStyle="Solid" BorderWidth="2px" ClientIDMode="Static" CssClass="auto-style24" ForeColor="White" Height="48px" Text="Reset" Width="166px" Style="margin: 25px 0px 20px 30px;" OnClick="btnReset_Click" />
                    </strong></td>
                </tr>
            </table>
        </div>
        <script type="text/javascript">
            function validateCheckBox(sender, args) {
                var chkTerms = document.getElementById('<%= chkTerms.ClientID %>');
                args.IsValid = chkTerms.checked;
            }
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
                function isNumberKey(evt) {
                    var charCode = (evt.which) ? evt.which : event.keyCode;
                    if (charCode != 45 && charCode > 31 && (charCode < 48 || charCode > 57)) {
                        return false;
                    }
                    return true;
                }
            }
        </script>
    </form>
</body>
</html>

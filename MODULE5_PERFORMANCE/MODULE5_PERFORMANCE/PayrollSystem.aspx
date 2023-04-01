<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PayrollSystem.aspx.cs" Inherits="MODULE5_PERFORMANCE.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            border-style: solid;
            border-width: 3px;
            padding: 1px 4px;
            height: 1026px;
            text-align: left;
            width: 484px;
        }
        .auto-style3 {
            font-size: xx-large;
        }
        .auto-style4 {
            margin-left: 0px;
        }
        .auto-style5 {
            margin-left: 13px;
        }
        .auto-style6 {
            width: 100%;
            height: 465px;
        }
        .auto-style7 {
            width: 264px;
        }
        .auto-style8 {
            font-size: large;
        }
        .auto-style9 {
            width: 264px;
            height: 26px;
        }
        .auto-style10 {
            height: 26px;
        }
    </style>
</head>
<body style="width: 497px; height: 1010px; margin-left: 427px; margin-top: 46px">
    <form id="form1" runat="server">
        <div class="auto-style1">
            <h1 style="text-align:center">Payroll System</h1>
            <br />
            First Name:
            <asp:TextBox ID="txtFirstName" runat="server"></asp:TextBox>
            <br />
            <br />
            Last Name:
            <asp:TextBox ID="txtLastName" runat="server"></asp:TextBox>
            <br />
            <br />
            Gender:
            <asp:RadioButton ID="rblMaleStatus" runat="server" value="Male" Text="Male" GroupName="gender" OnCheckedChanged="rblMaleStatus_CheckedChanged" />
            &nbsp;&nbsp;&nbsp;
            <asp:RadioButton ID="rblFemaleStatus" runat="server" value="Female" Text="Female" GroupName="gender" OnCheckedChanged="rblFemaleStatus_CheckedChanged" />
            <br />
            <br />
            Civil Status:
            <asp:DropDownList ID="ddlCivilStatus" runat="server">
                <asp:ListItem Value="S">Single</asp:ListItem>
                <asp:ListItem Value="M">Married</asp:ListItem>
                <asp:ListItem Value="W">Widowed</asp:ListItem>
            </asp:DropDownList>
            <br />
            <br />
            Hours Worked:
            <asp:TextBox ID="txtHoursWorked" runat="server" type="number" step="0.1" max="1000"></asp:TextBox>
            <br />
            <br />
            Employee Status:
            <asp:DropDownList ID="ddlEmployeeType" runat="server">
                <asp:ListItem Value="R">Regular</asp:ListItem>
                <asp:ListItem Value="P">Probationary</asp:ListItem>
                <asp:ListItem Value="C">Casual</asp:ListItem>
                <asp:ListItem Value="PT">Part Timer</asp:ListItem>
            </asp:DropDownList>
            <br />
            <br />
            <br />
            <asp:Button ID="btnCalculate" runat="server" Text="Calculate" CssClass="auto-style5" OnClick="btnCalculate_Click" /> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnReset" runat="server" Text="Reset" CssClass="auto-style4" OnClick="btnReset_Click" />
            <br />
            <br />
            <br />
            <div id="paySlip" runat="server">
            <table id="tablePaySlip" runat="server" class="auto-style6">
                <caption class="auto-style3">
                    <strong>Employee Payslip</strong></caption>
                <tr>
                    <td class="auto-style8" colspan="2">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style8" colspan="2"><strong>Employee Information</strong></td>
                </tr>
                <tr>
                    <td class="auto-style7">Fullname: </td>
                    <td>
                        <asp:Label ID="displayFullName" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7">Gender: </td>
                    <td>
                        <asp:Label ID="displayGender" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7">Civil Status: </td>
                    <td>
                        <asp:Label ID="displayCivilStatus" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7">Employee Status: </td>
                    <td>
                        <asp:Label ID="displayEmployeeStatus" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7">Hours Worked: </td>
                    <td>
                        <asp:Label ID="displayHoursWorked" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7">Rate per Hour:</td>
                    <td>
                        <asp:Label ID="displayratePerDay" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style8" colspan="2"><strong>Earnings</strong></td>
                </tr>
                <tr>
                    <td class="auto-style9">Basic Pay: </td>
                    <td class="auto-style10">
                        <asp:Label ID="displayBasicPay" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7">Overtime Pay: </td>
                    <td>
                        <asp:Label ID="displayOverTimePay" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style8" colspan="2"><strong>Deductions</strong></td>
                </tr>
                <tr>
                    <td class="auto-style7">Withholding Tax: </td>
                    <td>
                        <asp:Label ID="displayWithholdingTax" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7">SSS: </td>
                    <td>
                        <asp:Label ID="displaySSSDeduction" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7">PhilHealth: </td>
                    <td>
                        <asp:Label ID="displayPhilHealthDeduction" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7">PagIbig: </td>
                    <td>
                        <asp:Label ID="displayPagIbigDeduction" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style7"><strong>Gross Earnings: </strong></td>
                    <td>
                        <asp:Label ID="displayGrossEarnings" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7"><strong>Total Deductions: </strong></td>
                    <td>
                        <asp:Label ID="displayTotalDeductions" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style7"><strong>Net Earnings: </strong></td>
                    <td>
                        <asp:Label ID="displayNetEarnings" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
            </table>
          </div>
        </div>
      <br />
      <br />
    </form>
</body>
</html>

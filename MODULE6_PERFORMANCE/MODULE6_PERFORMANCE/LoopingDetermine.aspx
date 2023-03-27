<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoopingDetermine.aspx.cs" Inherits="MODULE6_PERFORMANCE.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            font-weight: bold;
            margin-left: 155px;
        }
        .auto-style2 {
            border-style: solid;
            border-width: 3px;
        }
    </style>
</head>
<body style="width: 335px; margin-left: 492px; margin-top: 157px">
    <form id="form1" runat="server">
        <div class="auto-style2">
            <h1 style="text-align:center">Looping Determine</h1>
            Input a positive integer: <strong> <asp:TextBox ID="txtNum" runat="server"></asp:TextBox>
            </strong>
            <br />
            <br />
            <strong>
            <asp:Button ID="btnDetermine" runat="server" Text="Determine" CssClass="auto-style1" OnClick="btnDetermine_Click" />
            </strong>
            <br />
            <br />
            <div id="divDetermine" runat="server">
                <h2>Result: </h2>
                Prime Number: 
                <strong> 
                <asp:Label ID="lblPrimeNumber" runat="server" Text=""></asp:Label>
                </strong>
                <br />
                Perfect Number: 
                <strong> 
                <asp:Label ID="lblPerfectNumber" runat="server" Text=""></asp:Label>
                </strong>
                <br />
                Strong Number: 
                <strong> 
                <asp:Label ID="lblStrongNumber" runat="server" Text=""></asp:Label>
                </strong>
                <br />
                Factorial: 
                <strong> 
                <asp:Label ID="lblFactorial" runat="server" Text=""></asp:Label>
                </strong>
                <br />
                Palindrome: 
                <strong> 
                <asp:Label ID="lblPalindrome" runat="server" Text=""></asp:Label>
                </strong>
            </div>
        </div>
    </form>
</body>
</html>

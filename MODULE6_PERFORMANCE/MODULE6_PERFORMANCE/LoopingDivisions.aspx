<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoopingDivisions.aspx.cs" Inherits="MODULE6_PRACTICE.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            margin-left: 199px;
        }
        .auto-style2 {
            margin-left: 4px;
        }
        .auto-style3 {
        }
    </style>
</head>
<body style="border-style: solid; border-width: 3px; padding: 1px 4px; width: 387px; margin-left: 480px; margin-top: 83px; height: 317px;">
    <form id="form1" runat="server">
        <div class="auto-style3">
            <h1 style="text-align:center">Looping Division</h1>
            Input the 1st positive integers: 
            <asp:TextBox ID="txtFirstNum" runat="server"></asp:TextBox>
            <br />
            <br />
            Input the 2nd positive interger: 
            <asp:TextBox ID="txtSecondNum" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="btnCompute" runat="server" Text="Compute" CssClass="auto-style1" OnClick="btnCompute_Click" />
            <br />
            <br />
            <div id="divResult" runat="server">
                <h2>Result:</h2>
                <strong>Quotient: 
                <asp:Label ID="displayQuotient" runat="server" Text=""></asp:Label>
                <br />
                Remainder: 
                <asp:Label ID="displayRemainder" runat="server" Text=""></asp:Label>
                </strong>
            </div>
        </div>
    </form>
</body>
</html>

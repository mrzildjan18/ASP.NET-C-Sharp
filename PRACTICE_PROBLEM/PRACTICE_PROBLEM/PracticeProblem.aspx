<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PracticeProblem.aspx.cs" Inherits="PRACTICE_PROBLEM.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Enter a Number: <asp:TextBox ID="txtNum" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" />
            <br />
            <br />
            <div id="showOutput" runat="server">
            Zero Numbers: 
            <asp:Label ID="lblZeroNumbers" runat="server" Text=""></asp:Label>
            <br />
            Negative Numbers: 
            <asp:Label ID="lblNegativeNumbers" runat="server" Text=""></asp:Label>
            <br />
            Positive Numbers: 
            <asp:Label ID="lblPositiveNumbers" runat="server" Text=""></asp:Label>
            </div>
        </div>
    </form>
</body>
</html>

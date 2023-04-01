<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Flames.aspx.cs" Inherits="MODULE7_PERFORMANCE.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            margin-left: 65px;
            font-weight: bold;
        }
        .auto-style2 {
            border-style: solid;
            border-width: 3px;
            padding: 1px 4px;
        }
        .auto-style3 {
            font-size: large;
        }
        .auto-style4 {
            font-weight: bold;
        }
    </style>
</head>
<body style="width: 402px; height: 449px; margin-left: 475px; margin-top: 30px">
    <form id="form1" runat="server">
        <div class="auto-style2">
            <h1 style="text-align:center">F.L.A.M.E.S</h1>
            <b>[1] Full Name: </b> 
            <asp:TextBox ID="txtYourName" runat="server" CssClass="auto-style4" Width="152px"></asp:TextBox>
            <b>
            <br />
            <br />
            [2] Full Name: </b> 
            <asp:TextBox ID="txtCrushName" runat="server" CssClass="auto-style4" Width="151px"></asp:TextBox>
            <br />
            <br />
            <strong>
            <asp:Button ID="btnCompatibilityV1" runat="server" Text="Compatibility V1" Width="116px" CssClass="auto-style1" OnClick="btnCompatibilityV1_Click" />
            <asp:Button ID="btnCompatibilityV2" runat="server" Text="Compatibility V2" style="margin-left: 22px" Width="118px" CssClass="auto-style4" OnClick="btnCompatibilityV2_Click" />
            <br />
            <br />
            <asp:Button ID="btnCompatibilityV3" runat="server" Text="Compatibility V3" style="margin-left: 66px" Width="116px" CssClass="auto-style4" OnClick="btnCompatibilityV3_Click" />
            <asp:Button ID="btnCompatibilityV4" runat="server" Text="Compatibility V4" style="margin-left: 21px" Width="119px" CssClass="auto-style4" OnClick="btnCompatibilityV4_Click" />
            </strong>
            <br />
            <strong>
            <br />
            <asp:Button ID="btnReset" runat="server" style="margin-left: 170px; font-weight: 700;" Text="Reset" OnClick="btnReset_Click" />
            <br />
            </strong>
            <br />
            <div id="divCompatibility" runat="server">
                <h2>Changelogs: </h2>
                <asp:Label ID="lblChangelogs" runat="server" Text="" style="font-weight: 700; font-size: medium"></asp:Label>
                <h2>Result: </h2>
                <strong>Name 1: <asp:Label ID="lblYourName" runat="server" Text="" style="font-size: large"></asp:Label>
                <br />
                Name 2: <asp:Label ID="lblCrushName" runat="server" Text="" style="font-size: large"></asp:Label>
                </strong>
                <br />
                <asp:Label ID="lblLetters" runat="server" Text="" style="font-weight: 700; font-size: large"></asp:Label>
                <br />
                <span class="auto-style3"><strong>Status of Flames: 
                </strong> 
                </span> 
                <strong>
                <asp:Label ID="lblStatus" runat="server" Text="" CssClass="auto-style3"></asp:Label>
                </strong>
            </div>
        </div>
    </form>
</body>
</html>

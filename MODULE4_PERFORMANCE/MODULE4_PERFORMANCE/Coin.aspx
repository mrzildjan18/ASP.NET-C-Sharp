<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Coin.aspx.cs"
Inherits="MODULE4_PERFORMANCE.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
  <head runat="server">
    <title></title>
    <style type="text/css">
      .auto-style1 {
        width: 100%;
        height: 226px;
        border-style: solid;
        border-width: 2px;
        padding: 1px 4px;
      }
      .auto-style3 {
        text-align: right;
        width: 432px;
      }
      .auto-style5 {
        text-align: right;
        width: 432px;
        height: 27px;
      }
      .auto-style6 {
        height: 27px;
      }
      .auto-style7 {
        text-align: center;
        height: 27px;
        font-size: xx-large;
      }
      .auto-style8 {
        border-style: solid;
        border-width: 3px;
        margin-top: 0px;
      }
      .auto-style9 {
        text-align: center;
        font-size: x-large;
      }
      .auto-style10 {
        height: 24px;
      }
    </style>
  </head>
  <body
    style="width: 947px; height: 436px; margin-left: 189px; margin-top: 81px"
  >
    <form id="form1" runat="server">
      <div class="auto-style8">
        <table class="auto-style1">
          <tr>
            <td class="auto-style7" colspan="2">
              <strong>CTU - Canteen | Point of Sale (POS)</strong>
            </td>
          </tr>
          <tr>
            <td class="auto-style5">Input Amount</td>
            <td class="auto-style6">
              <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
          </tr>
          <tr>
            <td class="auto-style3">Amount Tendered</td>
            <td>
              <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </td>
          </tr>
          <tr>
            <td class="auto-style3">
              <asp:Button
                ID="btnConvert"
                runat="server"
                Text="Convert"
                OnClick="btnConvert_Click"
              />
            </td>
            <td>&nbsp;</td>
          </tr>
          <tr>
            <td class="auto-style10" colspan="2"></td>
          </tr>
          <tr>
            <td class="auto-style3">Amount:</td>
            <td>
              <asp:Label ID="displayAmount" runat="server"></asp:Label>
            </td>
          </tr>
          <tr>
            <td class="auto-style3">Tendered Amount:</td>
            <td>
              <asp:Label ID="displayAmountTendered" runat="server"></asp:Label>
            </td>
          </tr>
          <tr>
            <td class="auto-style3">Change:</td>
            <td>
              <asp:Label ID="displayChange" runat="server"></asp:Label>
            </td>
          </tr>
          <tr>
            <td colspan="2">&nbsp;</td>
          </tr>
          <tr>
            <td class="auto-style9" colspan="2">
              <strong>Coin Denomination</strong>
            </td>
          </tr>
          <tr>
            <td class="auto-style3">20:</td>
            <td>
              <asp:Label ID="twentyPesos" runat="server"></asp:Label>
            </td>
          </tr>
          <tr>
            <td class="auto-style3">10:</td>
            <td>
              <asp:Label ID="tenPesos" runat="server"></asp:Label>
            </td>
          </tr>
          <tr>
            <td class="auto-style3">5:</td>
            <td>
              <asp:Label ID="fivePesos" runat="server"></asp:Label>
            </td>
          </tr>
          <tr>
            <td class="auto-style3">1:</td>
            <td>
              <asp:Label ID="onePesos" runat="server"></asp:Label>
            </td>
          </tr>
          <tr>
            <td class="auto-style3">0.25:</td>
            <td>
              <asp:Label ID="twentyFiveCentavo" runat="server"></asp:Label>
            </td>
          </tr>
          <tr>
            <td class="auto-style3">0.10:</td>
            <td>
              <asp:Label ID="tenCentavo" runat="server"></asp:Label>
            </td>
          </tr>
          <tr>
            <td class="auto-style3">0.05:</td>
            <td>
              <asp:Label ID="fiveCentavo" runat="server"></asp:Label>
            </td>
          </tr>
        </table>
      </div>
    </form>
  </body>
</html>

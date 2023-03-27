<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Places.aspx.cs"
Inherits="MODULE4_PRACTICE.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
  <head runat="server">
    <title></title>
    <style type="text/css">
      .auto-style1 {
        border-style: solid;
        border-width: 2px;
        padding: 1px 4px;
      }
      .auto-style2 {
        width: 99%;
        height: 228px;
      }
      .auto-style3 {
            text-align: right;
            width: 394px;
        }
      </style>
  </head>
  <body
    style="width: 783px; height: 234px; margin-left: 280px; margin-top: 95px"
  >
    <form id="form1" runat="server">
      <div class="auto-style1">
        <table class="auto-style2">
          <tr>
            <td class="auto-style3"><strong>Input 3-digit integer </strong></td>
            <td>
              <strong>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
              </strong>
            </td>
          </tr>
          <tr>
            <td class="auto-style3">
              <strong>
                  <asp:Button ID="btnConvert" runat="server" Text="Convert" OnClick="btnConvert_Click" />
              </strong>
            </td>
            <td><strong></strong></td>
          </tr>
          <tr>
            <td class="auto-style3">
              <strong>Hundred&#39;s Place:&nbsp; </strong>
            </td>
            <td>
              <strong>
                <asp:Label ID="hunds" runat="server"></asp:Label>
              </strong>
            </td>
          </tr>
          <tr>
            <td class="auto-style3"><strong>Ten&#39;s Place: </strong></td>
            <td>
              <strong>
                <asp:Label ID="tens" runat="server"></asp:Label>
              </strong>
            </td>
          </tr>
          <tr>
            <td class="auto-style3"><strong>One&#39;s Plane: </strong></td>
            <td>
              <strong>
                <asp:Label ID="ones" runat="server"></asp:Label>
              </strong>
            </td>
          </tr>
        </table>
      </div>
    </form>
  </body>
</html>

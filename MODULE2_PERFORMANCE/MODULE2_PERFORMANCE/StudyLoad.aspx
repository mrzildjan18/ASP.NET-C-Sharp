<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StudyLoad.aspx.cs"
Inherits="MODULE2_PERFORMANCE.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
  <head runat="server">
    <title></title>
    <style type="text/css">
      .auto-style1 {
        width: 100%;
      }
      .auto-style7 {
        width: 150px;
      }
      .auto-style9 {
        font-size: xx-large;
      }
      .auto-style11 {
        width: 761px;
        text-align: center;
        font-size: 20pt;
      }
      .auto-style12 {
        width: 761px;
      }
      .auto-style16 {
        text-align: right;
        width: 430px;
        height: 27px;
      }
      .auto-style28 {
        width: 100%;
        height: 276px;
      }
      .auto-style49 {
        width: 86px;
        height: 27px;
      }
      .auto-style50 {
        width: 106px;
        height: 27px;
      }
      .auto-style51 {
        width: 430px;
        height: 27px;
      }
      .auto-style52 {
        width: 70px;
        height: 27px;
      }
      .auto-style53 {
        width: 125px;
        height: 27px;
      }
      .auto-style54 {
        width: 73px;
        height: 27px;
      }
      .auto-style55 {
        width: 80px;
        height: 27px;
      }
      .auto-style56 {
        width: 30px;
        height: 27px;
      }
      .auto-style57 {
        height: 27px;
      }
      .auto-style58 {
        text-align: right;
        height: 27px;
      }
      .auto-style59 {
        text-align: left;
        height: 27px;
      }
      .auto-style60 {
        font-size: 14pt;
      }
      .auto-style62 {
        width: 761px;
        font-size: 14pt;
      }
      .auto-style65 {
        width: 275px;
        font-size: 14pt;
      }
      .auto-style67 {
        margin-left: 38px;
      }
      .auto-style68 {
        margin-left: 12px;
      }
      .auto-style69 {
        margin-left: 0px;
      }
        .auto-style71 {
            margin-left: 182px;
        }
    </style>
  </head>
  <body>
    <form id="form1" runat="server">
      <h1>Student's Information</h1>
      Student's Name: &nbsp
      <asp:TextBox
        ID="TextBox1"
        runat="server"
        CssClass="auto-style68"
        Width="170px"
      ></asp:TextBox
      ><br />
      <br />
      ID Number: &nbsp
      <asp:TextBox
        ID="TextBox2"
        runat="server"
        CssClass="auto-style67"
        Width="170px"
      ></asp:TextBox
      ><br />
      <br />
      Degree & Section: &nbsp
      <asp:TextBox
        ID="TextBox3"
        runat="server"
        CssClass="auto-style69"
        Width="170px"
      ></asp:TextBox
      ><br />
      <br />
        <asp:Button ID="btnSubmit" runat="server" Text="Submit" CssClass="auto-style71" OnClick="btnSubmit_Click" /><br />
      <br />

      <div id="printCOR" runat="server">
        <table class="auto-style1">
          <tr>
            <td class="auto-style7" rowspan="3">
              <asp:Image
                ID="Image1"
                runat="server"
                Height="150px"
                ImageUrl="/logo.png"
                Width="150px"
              />
            </td>
            <td>Cebu Technological University-Main Campus</td>
          </tr>
          <tr>
            <td>R. Palma St., Cebu City</td>
          </tr>
          <tr>
            <td>mis@ctu.edu.ph</td>
          </tr>
        </table>
        <table class="auto-style1">
          <caption class="auto-style9">
            <strong>CERTIFICATE OF REGISTRATION</strong>
          </caption>
          <tr>
            <td class="auto-style65">Cebu Technological University-Main</td>
            <td class="auto-style11">
              <strong><font size="5">2nd Semester SY 2022-2023</font></strong>
            </td>
            <td>&nbsp;</td>
          </tr>
          <tr>
            <td class="auto-style65">Campus</td>
            <td class="auto-style62">&nbsp;</td>
            <td class="auto-style60">2/11/2023 1:49:54 AM</td>
          </tr>
          <tr>
            <td class="auto-style65">
              <span class="auto-style60">ID Number: </span>
              <asp:Label
                ID="Label1"
                runat="server"
                CssClass="auto-style60"
              ></asp:Label>
            </td>
            <td class="auto-style12">
              <span class="auto-style60">Name: </span>
              <asp:Label
                ID="Label2"
                runat="server"
                CssClass="auto-style60"
              ></asp:Label>
            </td>
            <td>
              <span class="auto-style60">Section: </span>
              <asp:Label
                ID="Label3"
                runat="server"
                CssClass="auto-style60"
              ></asp:Label>
            </td>
          </tr>
        </table>
        <table class="auto-style28">
          <tr>
            <td class="auto-style49" style="border: 1px solid #000000">
              SECTION
            </td>
            <td class="auto-style50" style="border: 1px solid #000000">
              SUBJECT
            </td>
            <td class="auto-style51" style="border: 1px solid #000000">
              DESCRIPTION
            </td>
            <td class="auto-style52" style="border: 1px solid #000000">UNIT</td>
            <td class="auto-style53" style="border: 1px solid #000000">TIME</td>
            <td class="auto-style54" style="border: 1px solid #000000">DAY</td>
            <td class="auto-style55" style="border: 1px solid #000000">ROOM</td>
            <td class="auto-style56">&nbsp;</td>
            <td class="auto-style57" style="border: 1px solid #000000">FEE</td>
            <td class="auto-style59" style="border: 1px solid #000000">
              AMOUNT
            </td>
          </tr>
          <tr>
            <td class="auto-style49" style="border: 1px solid #000000">
              CS102
            </td>
            <td class="auto-style50" style="border: 1px solid #000000">
              PC 223
            </td>
            <td class="auto-style51" style="border: 1px solid #000000">
              INTEGRATIVE PROGRAMMING AND TECHNOLOGIES 1
            </td>
            <td class="auto-style52" style="border: 1px solid #000000">3.00</td>
            <td class="auto-style53" style="border: 1px solid #000000">
              9-12nn/10-12nn
            </td>
            <td class="auto-style54" style="border: 1px solid #000000">M/T</td>
            <td class="auto-style55" style="border: 1px solid #000000">
              IT 201
            </td>
            <td class="auto-style56">&nbsp;</td>
            <td class="auto-style57" style="border: 1px solid #000000">
              Tuition
            </td>
            <td class="auto-style58" style="border: 1px solid #000000">
              3300.00
            </td>
          </tr>
          <tr>
            <td class="auto-style49" style="border: 1px solid #000000">
              CS103
            </td>
            <td class="auto-style50" style="border: 1px solid #000000">
              PC 224
            </td>
            <td class="auto-style51" style="border: 1px solid #000000">
              NETWORKING 1
            </td>
            <td class="auto-style52" style="border: 1px solid #000000">3.00</td>
            <td class="auto-style53" style="border: 1px solid #000000">
              10-12nn/9-12nn
            </td>
            <td class="auto-style54" style="border: 1px solid #000000">Th/F</td>
            <td class="auto-style55" style="border: 1px solid #000000">
              ST 302
            </td>
            <td class="auto-style56"></td>
            <td class="auto-style57" style="border: 1px solid #000000">
              Computer Lab Fee
            </td>
            <td class="auto-style58" style="border: 1px solid #000000">0.00</td>
          </tr>
          <tr>
            <td class="auto-style49" style="border: 1px solid #000000">
              CS104
            </td>
            <td class="auto-style50" style="border: 1px solid #000000">
              CC 225
            </td>
            <td class="auto-style51" style="border: 1px solid #000000">
              INFORMATION MANAGEMENT (LEC)
            </td>
            <td class="auto-style52" style="border: 1px solid #000000">2.00</td>
            <td class="auto-style53" style="border: 1px solid #000000">
              1-3pm
            </td>
            <td class="auto-style54" style="border: 1px solid #000000">M</td>
            <td class="auto-style55" style="border: 1px solid #000000">
              IT 401
            </td>
            <td class="auto-style56">&nbsp;</td>
            <td class="auto-style57" style="border: 1px solid #000000">
              Athletics Fee
            </td>
            <td class="auto-style58" style="border: 1px solid #000000">
              200.00
            </td>
          </tr>
          <tr>
            <td class="auto-style49" style="border: 1px solid #000000">
              CS105
            </td>
            <td class="auto-style50" style="border: 1px solid #000000">
              CC 225L
            </td>
            <td class="auto-style51" style="border: 1px solid #000000">
              INFORMATION MANAGEMENT (LAB)
            </td>
            <td class="auto-style52" style="border: 1px solid #000000">
              3.00&nbsp;
            </td>
            <td class="auto-style53" style="border: 1px solid #000000">
              1-4pm
            </td>
            <td class="auto-style54" style="border: 1px solid #000000">TWTh</td>
            <td class="auto-style55" style="border: 1px solid #000000">
              IT 401
            </td>
            <td class="auto-style56">&nbsp;</td>
            <td class="auto-style57" style="border: 1px solid #000000">
              Computer Fee
            </td>
            <td class="auto-style58" style="border: 1px solid #000000">
              400.00
            </td>
          </tr>
          <tr>
            <td class="auto-style49" style="border: 1px solid #000000">
              CS106
            </td>
            <td class="auto-style50" style="border: 1px solid #000000">
              P ELEC 3
            </td>
            <td class="auto-style51" style="border: 1px solid #000000">
              PROFESSIONAL ELECTIVE 3
            </td>
            <td class="auto-style52" style="border: 1px solid #000000">3.00</td>
            <td class="auto-style53" style="border: 1px solid #000000">
              8-10am/7-10am
            </td>
            <td class="auto-style54" style="border: 1px solid #000000">W/Th</td>
            <td class="auto-style55" style="border: 1px solid #000000">
              IT 301
            </td>
            <td class="auto-style56">&nbsp;</td>
            <td class="auto-style57" style="border: 1px solid #000000">
              Cultural Fee
            </td>
            <td class="auto-style58" style="border: 1px solid #000000">
              150.00
            </td>
          </tr>
          <tr>
            <td class="auto-style49" style="border: 1px solid #000000">
              CS107
            </td>
            <td class="auto-style50" style="border: 1px solid #000000">AP 3</td>
            <td class="auto-style51" style="border: 1px solid #000000">
              ASP.NET
            </td>
            <td class="auto-style52" style="border: 1px solid #000000">3.00</td>
            <td class="auto-style53" style="border: 1px solid #000000">
              7-9am/7-10am
            </td>
            <td class="auto-style54" style="border: 1px solid #000000">M/T</td>
            <td class="auto-style55" style="border: 1px solid #000000">
              ST 303
            </td>
            <td class="auto-style56">&nbsp;</td>
            <td class="auto-style57" style="border: 1px solid #000000">
              Development Fee
            </td>
            <td class="auto-style58" style="border: 1px solid #000000">
              3040.00
            </td>
          </tr>
          <tr>
            <td class="auto-style49" style="border: 1px solid #000000">
              AS932
            </td>
            <td class="auto-style50" style="border: 1px solid #000000">
              GEC-TCW
            </td>
            <td class="auto-style51" style="border: 1px solid #000000">
              THE CONTEMPORARY WORLD
            </td>
            <td class="auto-style52" style="border: 1px solid #000000">3.00</td>
            <td class="auto-style53" style="border: 1px solid #000000">
              4-5pm
            </td>
            <td class="auto-style54" style="border: 1px solid #000000">MWF</td>
            <td class="auto-style55" style="border: 1px solid #000000">
              CAS IB 109
            </td>
            <td class="auto-style56">&nbsp;</td>
            <td class="auto-style57" style="border: 1px solid #000000">
              Development Fee
            </td>
            <td class="auto-style58" style="border: 1px solid #000000">
              90.00
            </td>
          </tr>
          <tr>
            <td class="auto-style49" style="border: 1px solid #000000">
              AS933
            </td>
            <td class="auto-style50" style="border: 1px solid #000000">PE 4</td>
            <td class="auto-style51" style="border: 1px solid #000000">
              PHYSICAL EDUCATION 4
            </td>
            <td class="auto-style52" style="border: 1px solid #000000">2.00</td>
            <td class="auto-style53" style="border: 1px solid #000000">
              7-9am
            </td>
            <td class="auto-style54" style="border: 1px solid #000000">F</td>
            <td class="auto-style55" style="border: 1px solid #000000">
              GROUND
            </td>
            <td class="auto-style56">&nbsp;</td>
            <td class="auto-style57" style="border: 1px solid #000000">
              Development Fee
            </td>
            <td class="auto-style58" style="border: 1px solid #000000">
              350.00
            </td>
          </tr>
          <tr>
            <td class="auto-style49" style="border: 1px solid #000000">
              &nbsp;
            </td>
            <td class="auto-style50" style="border: 1px solid #000000">
              &nbsp;
            </td>
            <td class="auto-style16" style="border: 1px solid #000000">
              Total Units:&nbsp;
            </td>
            <td class="auto-style52" style="border: 1px solid #000000">
              22.00
            </td>
            <td class="auto-style53" style="border: 1px solid #000000">
              &nbsp;
            </td>
            <td class="auto-style54" style="border: 1px solid #000000">
              &nbsp;
            </td>
            <td class="auto-style55" style="border: 1px solid #000000">
              &nbsp;
            </td>
            <td class="auto-style56">&nbsp;</td>
            <td class="auto-style57" style="border: 1px solid #000000">
              Medical and Dental Fee
            </td>
            <td class="auto-style58" style="border: 1px solid #000000">
              200.00
            </td>
          </tr>
          <tr>
            <td class="auto-style49">&nbsp;</td>
            <td class="auto-style50">&nbsp;</td>
            <td class="auto-style51">&nbsp;</td>
            <td class="auto-style52">&nbsp;</td>
            <td class="auto-style53">&nbsp;</td>
            <td class="auto-style54">&nbsp;</td>
            <td class="auto-style55">&nbsp;</td>
            <td class="auto-style56">&nbsp;</td>
            <td class="auto-style57" style="border: 1px solid #000000">
              Registration Fee
            </td>
            <td class="auto-style58" style="border: 1px solid #000000">
              50.00
            </td>
          </tr>
          <tr>
            <td class="auto-style49">&nbsp;</td>
            <td class="auto-style50">&nbsp;</td>
            <td class="auto-style51">&nbsp;</td>
            <td class="auto-style52">&nbsp;</td>
            <td class="auto-style53">&nbsp;</td>
            <td class="auto-style54">&nbsp;</td>
            <td class="auto-style55">&nbsp;</td>
            <td class="auto-style56">&nbsp;</td>
            <td class="auto-style58" style="border: 1px solid #000000">
              Total Charges:
            </td>
            <td class="auto-style58" style="border: 1px solid #000000">
              7780.00
            </td>
          </tr>
        </table>
      </div>
    </form>
  </body>
</html>

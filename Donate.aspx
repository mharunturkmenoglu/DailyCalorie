﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Donate.aspx.cs" Inherits="DailyCalorie.Donate" UnobtrusiveValidationMode="None" %>

<!DOCTYPE html>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">

    <title></title>
    <style type="text/css">
        .auto-style1 {
            margin-left: 0px;
            height: 683px;
            text-align: left;
        }
        .auto-style2 {
            height: 133px;
        }
    </style>
</head>
<body>
<body style="background-image:url('images/donateBackground.png');             
             background-size:cover">
    <form id="form1" runat="server">
        <div>
         <div class="auto-style2">

             <br />
&nbsp;&nbsp;
             <asp:Label ID="lblTitle" runat="server" Font-Bold="True" Font-Size="70px" ForeColor="#CC0000" Text="DONATE US"></asp:Label>

        </div>
        <div class="auto-style1">
       
            &nbsp;&nbsp;<br />
            &nbsp;<asp:Image ID="imgCard_Type" runat="server" Height="70px" Width="120px" />
            <asp:Image ID="imgCard_Type0" runat="server" Height="70px" Width="120px" />
            <asp:Image ID="imgCard_Type1" runat="server" Height="70px" Width="120px" />
            <asp:Image ID="imgCard_Type2" runat="server" Height="70px" Width="120px" />
            <br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            &nbsp; &nbsp;<asp:Label ID="Label2" runat="server" BackColor="#99CCFF" Text="Card Number" Font-Size="Large"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            &nbsp; &nbsp;<asp:TextBox ID="txtCredit_Card_Number" runat="server" Height="31px" Width="200px" OnTextChanged="txtCredit_Card_Number_TextChanged" AutoPostBack="True" BackColor="White" BorderWidth="2px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="lblHataMesaji" runat="server" Text="Label" Visible="False"></asp:Label>
            <br />
            <br />
            &nbsp; <asp:Label ID="Label4" runat="server" BackColor="#99CCFF" Text="Month" Font-Size="Large"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;<asp:Label ID="Label5" runat="server" BackColor="#99CCFF" Text="Year" Font-Size="Large"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:Label ID="Label3" runat="server" BackColor="#99CCFF" Text="cvv" Font-Size="Large"></asp:Label>
            <br />
            &nbsp;&nbsp;<asp:TextBox ID="txtMonth" runat="server" Height="31px" Width="40px" BorderWidth="2px"></asp:TextBox>
&nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Invalid Month" ValidationExpression="^([1-9]|1[0-2])$" ControlToValidate="txtMonth"></asp:RegularExpressionValidator>
            &nbsp;&nbsp;&nbsp;<asp:TextBox ID="txtYear" runat="server" Height="31px" Width="40px" BorderWidth="2px"></asp:TextBox>
            &nbsp;&nbsp;
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Invalid Year" ValidationExpression="^((2[2-9])|([3-4][0-9]))$" ControlToValidate="txtYear"></asp:RegularExpressionValidator>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="txtCVV" runat="server" Height="31px" Width="40px" BorderWidth="2px"></asp:TextBox>
            &nbsp;
            <asp:RegularExpressionValidator ID="regCVV" runat="server" ErrorMessage="Invalid CVV" ValidationExpression="^([0-9]{3,4})$" ControlToValidate="txtCVV"></asp:RegularExpressionValidator>
            <br />
            <br />
            &nbsp;
            <asp:Label ID="Label6" runat="server" BackColor="#99CCFF" Text="Name Surname" Font-Size="Large"></asp:Label>
            <br />
            &nbsp;
            <asp:TextBox ID="txtName" runat="server" Height="31px" Width="215px" BorderWidth="2px"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ErrorMessage="Invalid Name Surname" ValidationExpression="^[a-zA-ZöçşığüÖÇŞİĞÜ,]+(\s{0,1}[a-zA-ZöçşığüÖÇŞİĞÜ, ])*$" ControlToValidate="txtName"></asp:RegularExpressionValidator>
            <br />
            <br />
            <br />
&nbsp;&nbsp;
            <asp:Label ID="lblAmount" runat="server" BackColor="#99CCFF" Text="Amount" Font-Size="Large"></asp:Label>
            <br />
&nbsp;&nbsp;
            
            
            <br />
            &nbsp;&nbsp;
            <asp:DropDownList ID="dropdownlistAmount" runat="server">
                <asp:ListItem Value="5"></asp:ListItem>
                <asp:ListItem Value="10"></asp:ListItem>
                <asp:ListItem Value="15"></asp:ListItem>
                <asp:ListItem Value="30"></asp:ListItem>
                <asp:ListItem Value="50"></asp:ListItem>
                <asp:ListItem Value="100"></asp:ListItem>
                <asp:ListItem Value="500"></asp:ListItem>
            </asp:DropDownList>
            <br />
            <br />
            
            &nbsp;&nbsp;<asp:Label ID="Label7" runat="server" Text="Press the button if there is no wrong information and error" BackColor="#99CCFF" BorderWidth="1px" Font-Italic="True"></asp:Label>
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button1" runat="server" Text="DONATE" OnClick="Button1_Click" BackColor="#99CCFF" BorderWidth="2px" Font-Bold="True" Height="50px" Width="100px" />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
        </div>
    </form>
</body>

</html>
<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Calorie.aspx.cs" Inherits="DailyCalorie.Calorie" %>

<!DOCTYPE html>

<html lang="en">
  <head>
    <title>Calorie Calculator</title>
    <meta property="og:title" content="Full Purple Parrot" />
    <meta property="twitter:card" content="summary_large_image" />
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />

    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta charset="utf-8" />
    <meta property="twitter:card" content="summary_large_image" />
    <style data-tag="reset-style-sheet">
      html {  line-height: 1.15;}body {  margin: 0;}* {  box-sizing: border-box;  border-width: 0;  border-style: solid;}p,li,ul,pre,div,h1,h2,h3,h4,h5,h6 {  margin: 0;  padding: 0;}button,input,optgroup,select,textarea {  font-family: inherit;  font-size: 100%;  line-height: 1.15;  margin: 0;}button,select {  text-transform: none;}button,[type="button"],[type="reset"],[type="submit"] {  -webkit-appearance: button;}button::-moz-focus-inner,[type="button"]::-moz-focus-inner,[type="reset"]::-moz-focus-inner,[type="submit"]::-moz-focus-inner {  border-style: none;  padding: 0;}button:-moz-focus,[type="button"]:-moz-focus,[type="reset"]:-moz-focus,[type="submit"]:-moz-focus {  outline: 1px dotted ButtonText;}a {  color: inherit;  text-decoration: inherit;}input {  padding: 2px 4px;}img {  display: block;}
    </style>
    <style data-tag="default-style-sheet">
      html {
        font-family: Inter;
        font-size: 16px;
      }

      body {
        font-weight: 400;
        font-style:normal;
        text-decoration: none;
        text-transform: none;
        letter-spacing: normal;
        line-height: 1.15;
        color: var(--dl-color-gray-black);
        background-color: var(--dl-color-gray-white);

      }
    </style>
    <link
      rel="stylesheet"
      href="https://fonts.googleapis.com/css2?family=Inter:wght@100;200;300;400;500;600;700;800;900&display=swap"
      data-tag="font"
    />
    <link rel="stylesheet" href="./style.css" />
  </head>
  <body>
      <form id="form1" runat="server">
    <div>
      <link href="./home.css" rel="stylesheet" />

      <div class="home-container">
        <div class="home-container01">
          <h1 class="home-text">Calorie Calculator</h1>
        </div>
        <div class="home-container02">
          <span class="home-text1">Weight</span>&nbsp;
            <asp:TextBox ID="weightTextbox" runat="server" CssClass="input"></asp:TextBox>
        </div>
        <div class="home-container03">
          <span class="home-text2">Height</span>
            <asp:TextBox ID="heightTextbox" runat="server" CssClass="input"></asp:TextBox>
        </div>
        <div class="home-container04">
          <span class="home-text3">Age</span>
            <asp:TextBox ID="ageTextbox" runat="server" CssClass="input"></asp:TextBox>
        </div>
        <div class="home-container05">
          <span class="home-text4" runat="server" >Gender</span>&nbsp;
            <asp:ListBox ID="genderListbox" runat="server" Rows="1">
                <asp:ListItem Value="0">Male</asp:ListItem>
                <asp:ListItem Value="1">Female</asp:ListItem>
            </asp:ListBox>
        </div>
        <div class="home-container06">
          <span class="home-text5" runat="server" >Workouts Per Week</span>&nbsp;
            <asp:ListBox ID="workoutsListBox" runat="server" Height="62px" Rows="1" Width="215px">
                <asp:ListItem Value="0">No Workouts</asp:ListItem>
                <asp:ListItem Value="1">1-3 Workouts Per Week</asp:ListItem>
                <asp:ListItem Value="2">4-6 Workouts Per Week</asp:ListItem>
                <asp:ListItem Value="3">7-9 Workouts Per Week</asp:ListItem>
                <asp:ListItem Value="4">Heavy Workouts Every Day</asp:ListItem>
            </asp:ListBox>
        </div>
        <div class="home-container07">
            <asp:Button ID="calculateButton" runat="server" OnClick="calculateButton_Click" Text="Calculate" Width="113px" Height="42px" />
        </div>
        <div class="home-container08">
          <h1 id="calorietext" class="home-text6" runat="server" >Your Daily Calorie Is:</h1>
        </div>
        <div class="home-container09">
          <img
            src="https://images.unsplash.com/photo-1539136788836-5699e78bfc75?crop=entropy&amp;cs=tinysrgb&amp;fit=max&amp;fm=jpg&amp;ixid=Mnw5MTMyMXwwfDF8c2VhcmNofDU2fHxmb29kfGVufDB8fHx8MTY1NDcyMjg2MA&amp;ixlib=rb-1.2.1&amp;q=80&amp;w=500"
            alt="image"
            class="home-image"
          />
        </div>
        <div class="home-container10">
            <asp:Button ID="backButton" runat="server" Height="49px" Text="Go Back" Width="154px" OnClick="backButton_Click" />
        </div>
      </div>
    </div>
      </form>
  </body>
</html>

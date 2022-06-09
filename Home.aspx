<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="DailyCalorie.Login" %>

<!DOCTYPE html>
<html style="font-size: 16px;">
  <head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="utf-8">
    <meta name="keywords" content="Healthy Eating">
    <meta name="description" content="">
    <title>Page 1</title>
    <link rel="stylesheet" href="nicepage.css" media="screen">
<link rel="stylesheet" href="Page-1.css" media="screen">
    <script class="u-script" type="text/javascript" src="jquery-1.9.1.min.js" defer=""></script>
    <script class="u-script" type="text/javascript" src="nicepage.js" defer=""></script>
    <meta name="generator" content="Nicepage 4.12.16, nicepage.com">
    <link id="u-theme-google-font" rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i|Open+Sans:300,300i,400,400i,500,500i,600,600i,700,700i,800,800i">
    <link id="u-page-google-font" rel="stylesheet" href="https://fonts.googleapis.com/css?family=Playfair+Display:400,400i,500,500i,600,600i,700,700i,800,800i,900,900i">
    
    
    <script type="application/ld+json">{
		"@context": "http://schema.org",
		"@type": "Organization",
		"name": ""
}</script>
    <meta name="theme-color" content="#05a1f6">
    <meta property="og:title" content="Page 1">
    <meta property="og:type" content="website">
  </head>
  <body class="u-body u-xl-mode"><header class="u-clearfix u-header u-header" id="sec-fe09"><div class="u-clearfix u-sheet u-sheet-1">
        <nav class="u-menu u-menu-dropdown u-offcanvas u-menu-1">
          <div class="menu-collapse" style="font-size: 1rem; letter-spacing: 0px; font-weight: 700; text-transform: uppercase;">
            <a class="u-border-2 u-border-active-black u-border-hover-palette-1-base u-border-no-left u-border-no-right u-border-no-top u-button-style u-custom-left-right-menu-spacing u-custom-padding-bottom u-custom-top-bottom-menu-spacing u-nav-link u-text-active-black u-text-grey-90 u-text-hover-grey-90" href="#">
              <svg class="u-svg-link" viewBox="0 0 24 24"><use xlink:href="#menu-hamburger"></use></svg>
              <svg class="u-svg-content" version="1.1" id="menu-hamburger" viewBox="0 0 16 16" x="0px" y="0px" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns="http://www.w3.org/2000/svg"><g><rect y="1" width="16" height="2"></rect><rect y="7" width="16" height="2"></rect><rect y="13" width="16" height="2"></rect>
</g></svg>
            </a>
          </div>
          <div class="u-custom-menu u-nav-container">
            <ul class="u-nav u-spacing-30 u-unstyled u-nav-1"><li class="u-nav-item"><a class="u-border-2 u-border-active-black u-border-hover-palette-1-base u-border-no-left u-border-no-right u-border-no-top u-button-style u-nav-link u-text-active-black u-text-grey-90 u-text-hover-grey-90" href="home.aspx" style="padding: 10px 0px;">Home</a>
</li><li class="u-nav-item"><a class="u-border-2 u-border-active-black u-border-hover-palette-1-base u-border-no-left u-border-no-right u-border-no-top u-button-style u-nav-link u-text-active-black u-text-grey-90 u-text-hover-grey-90" href="Donate.aspx" style="padding: 10px 0px;">Donate</a>
</li><li class="u-nav-item"><a class="u-border-2 u-border-active-black u-border-hover-palette-1-base u-border-no-left u-border-no-right u-border-no-top u-button-style u-nav-link u-text-active-black u-text-grey-90 u-text-hover-grey-90" href="FoodList.aspx" style="padding: 10px 0px;">Food List</a>
</li><li class="u-nav-item"><a class="u-border-2 u-border-active-black u-border-hover-palette-1-base u-border-no-left u-border-no-right u-border-no-top u-button-style u-nav-link u-text-active-black u-text-grey-90 u-text-hover-grey-90" href="Calorie.aspx" style="padding: 10px 0px;">Calorie Calculator</a>
</li></ul>
          </div>
          <div class="u-custom-menu u-nav-container-collapse">
            <div class="u-black u-container-style u-inner-container-layout u-opacity u-opacity-95 u-sidenav">
              <div class="u-inner-container-layout u-sidenav-overflow">
                <div class="u-menu-close"></div>
                <ul class="u-align-center u-nav u-popupmenu-items u-unstyled u-nav-2"><li class="u-nav-item"><a class="u-button-style u-nav-link" href="home.html">Home</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link">Donate</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link">Food List</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link">Calorie Calculator</a>
</li></ul>
              </div>
            </div>
            <div class="u-black u-menu-overlay u-opacity u-opacity-70"></div>
          </div>
        </nav><!--shopping_cart-->
        <a href="Cart.aspx" class="u-shopping-cart u-shopping-cart-1" href="#"><span class="u-icon u-shopping-cart-icon"><svg class="u-svg-link" preserveAspectRatio="xMidYMin slice" viewBox="0 0 16 16" style=""><use xlink:href="#svg-7702"></use></svg><svg class="u-svg-content" viewBox="0 0 16 16" x="0px" y="0px" id="svg-7702"><path d="M14.5,3l-2.1,5H6.1L5.9,7.6L4,3H14.5 M0,0v1h2.1L5,8l-2,4h11v-1H4.6l1-2H13l3-7H3.6L2.8,0H0z M12.5,13
	c-0.8,0-1.5,0.7-1.5,1.5s0.7,1.5,1.5,1.5s1.5-0.7,1.5-1.5S13.3,13,12.5,13L12.5,13z M4.5,13C3.7,13,3,13.7,3,14.5S3.7,16,4.5,16
	S6,15.3,6,14.5S5.3,13,4.5,13L4.5,13z"></path></svg>
        <span class="u-icon-circle u-palette-1-base u-shopping-cart-count"  style="font-size: 0.75rem;"><!--shopping_cart_count-->2<!--/shopping_cart_count--></span>
    </span>
        </a><!--/shopping_cart-->
      </div></header>
    <section class="u-clearfix u-image u-section-1" id="carousel_8b57">
      <div class="u-clearfix u-sheet u-sheet-1">
        <div class="u-clearfix u-layout-wrap u-layout-wrap-1">
          <div class="u-gutter-0 u-layout">
            <div class="u-layout-row">
              <div class="u-container-style u-hidden-sm u-hidden-xs u-layout-cell u-left-cell u-opacity u-opacity-50 u-palette-1-base u-size-9 u-layout-cell-1">
                <div class="u-container-layout u-container-layout-1"></div>
              </div>
              <div class="u-container-style u-layout-cell u-right-cell u-size-51 u-layout-cell-2">
                <div class="u-container-layout u-valign-top-xs u-container-layout-2">
                  <h1 class="u-custom-font u-font-playfair-display u-text u-text-palette-1-base u-title u-text-1" spellcheck="false">Healthy <b>Eating</b>
                  </h1>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
    
    
    <footer class="u-align-center u-clearfix u-footer u-grey-80 u-footer" id="sec-9ddf"><div class="u-align-left u-clearfix u-sheet u-sheet-1"></div></footer>
  </body>
</html>

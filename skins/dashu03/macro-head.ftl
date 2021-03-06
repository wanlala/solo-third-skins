<#--

    Solo - A small and beautiful blogging system written in Java.
    Copyright (c) 2010-2019, b3log.org & hacpai.com

    This program is free software: you can redistribute it and/or modify
    it under the terms of the GNU Affero General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU Affero General Public License for more details.

    You should have received a copy of the GNU Affero General Public License
    along with this program.  If not, see <https://www.gnu.org/licenses/>.

-->
<#macro head title>
<meta charset="utf-8" />
<title>${title}</title>
<#nested>
<meta name="author" content="B3log Team" />
<meta name="generator" content="B3log" />
<meta name="copyright" content="B3log" />
<meta name="revised" content="B3log, ${year}" />
<meta http-equiv="Window-target" content="_top" />
<link href="${servePath}/blog-articles-feed.do" title="ATOM" type="application/atom+xml" rel="alternate" />
<link rel="stylesheet" href="${staticServePath}/skins/${skinDirName}/css/bootstrap.css" type="text/css" media="" title="no title" charset="utf-8"/>
<link href="${staticServePath}/skins/${skinDirName}/css/bootstrap-responsive.css" rel="stylesheet">
<link href="${staticServePath}/skins/${skinDirName}/css/main.css" rel="stylesheet">
<link rel="icon" type="image/png" href="${staticServePath}/favicon.png" />
<style>
#footer {
width: 100%;
margin: 40px 0 0 0;
padding: 30px 0 30px 0 ;
min-height: 40px;
background-color: #1C1C1C;
color: #EEE;
font-size: 11px;
}

/* GLOBAL STYLES
-------------------------------------------------- */
/* Padding below the footer and lighter body text */

body {
  color: #5a5a5a;
}



/* CUSTOMIZE THE NAVBAR
-------------------------------------------------- */

/* Special class on .container surrounding .navbar, used for positioning it into place. */
.navbar-wrapper {
  position: relative;
  z-index: 10;
  margin-top: 20px;
  margin-bottom: -90px; /* Negative margin to pull up carousel. 90px is roughly margins and height of navbar. */
}

/* Remove border and change up box shadow for more contrast */
.navbar .navbar-inner {
  border: 0;
  -webkit-box-shadow: 0 2px 10px rgba(0,0,0,.25);
     -moz-box-shadow: 0 2px 10px rgba(0,0,0,.25);
          box-shadow: 0 2px 10px rgba(0,0,0,.25);
}

/* Downsize the brand/project name a bit */
.navbar .brand {
  padding: 14px 20px 16px; /* Increase vertical padding to match navbar links */
  font-size: 16px;
  font-weight: bold;
  text-shadow: 0 -1px 0 rgba(0,0,0,.5);
}

/* Navbar links: increase padding for taller navbar */
.navbar .nav > li > a {
  padding: 15px 20px;
}

/* Offset the responsive button for proper vertical alignment */
.navbar .btn-navbar {
  margin-top: 10px;
}



/* CUSTOMIZE THE NAVBAR
-------------------------------------------------- */

/* Carousel base class */
.carousel {
  margin-bottom: 60px;
}

.carousel .container {
  position: absolute;
  right: 0;
  bottom: 0;
  left: 0;
}

.carousel-control {
  background-color: transparent;
  border: 0;
  font-size: 120px;
  margin-top: 0;
  text-shadow: 0 1px 1px rgba(0,0,0,.4);
}

.carousel .item {
  height: 500px;
}
.carousel img {
  min-width: 100%;
  height: 500px;
}

.carousel-caption {
  background-color: transparent;
  position: static;
  max-width: 550px;
  padding: 0 20px;
  margin-bottom: 100px;
}
.carousel-caption h1,
.carousel-caption .lead {
  margin: 0;
  line-height: 1.25;
  color: #fff;
  text-shadow: 0 1px 1px rgba(0,0,0,.4);
}
.carousel-caption .btn {
  margin-top: 10px;
}



/* MARKETING CONTENT
-------------------------------------------------- */

/* Center align the text within the three columns below the carousel */
.marketing .span4 {
  text-align: center;
}
.marketing h2 {
  font-weight: normal;
}
.marketing .span4 p {
  margin-left: 10px;
  margin-right: 10px;
}


/* Featurettes
------------------------- */

.featurette-divider {
  margin: 80px 0; /* Space out the Bootstrap <hr> more */
}
.featurette {
  padding-top: 120px; /* Vertically center images part 1: add padding above and below text. */
  overflow: hidden; /* Vertically center images part 2: clear their floats. */
}
.featurette-image {
  margin-top: -120px; /* Vertically center images part 3: negative margin up the image the same amount of the padding to center it. */
}

/* Give some space on the sides of the floated elements so text doesn't run right into it. */
.featurette-image.pull-left {
  margin-right: 40px;
}
.featurette-image.pull-right {
  margin-left: 40px;
}

/* Thin out the marketing headings */
.featurette-heading {
  font-size: 50px;
  font-weight: 300;
  line-height: 1;
  letter-spacing: -1px;
}



/* RESPONSIVE CSS
-------------------------------------------------- */

@media (max-width: 979px) {

  .container.navbar-wrapper {
    margin-bottom: 0;
    width: auto;
  }
  .navbar-inner {
    border-radius: 0;
    margin: -20px 0;
  }

  .carousel .item {
    height: 500px;
  }
  .carousel img {
    width: auto;
    height: 500px;
  }

  .featurette {
    height: auto;
    padding: 0;
  }
  .featurette-image.pull-left,
  .featurette-image.pull-right {
    display: block;
    float: none;
    max-width: 40%;
    margin: 0 auto 20px;
  }
}


@media (max-width: 767px) {

  .navbar-inner {
    margin: -20px;
  }

  .carousel {
    margin-left: -20px;
    margin-right: -20px;
  }
  .carousel .container {

  }
  .carousel .item {
    height: 300px;
  }
  .carousel img {
    height: 300px;
  }
  .carousel-caption {
    width: 65%;
    padding: 0 70px;
    margin-bottom: 40px;
  }
  .carousel-caption h1 {
    font-size: 30px;
  }
  .carousel-caption .lead,
  .carousel-caption .btn {
    font-size: 18px;
  }

  .marketing .span4 + .span4 {
    margin-top: 40px;
  }

  .featurette-heading {
    font-size: 30px;
  }
  .featurette .lead {
    font-size: 18px;
    line-height: 1.5;
  }

}
</style>

${htmlHead}
</#macro>
Sliver template v.2 | 2011-10-30
===

## Name: Sliver 2011

Left/right 4 Sidebar Theme for Serendipity Blog system [S9y] (http://www.s9y.org/)

Date: 2011-08-12

Original based on S9y standard theme [Bulletproof] (http://www.s9y.org/) and [Boilerplate-2] (http://html5boilerplate.com/)

Author: Ian

## Requirement:

Serendipity: 1.6 and up

## About:

* Sidebars left, Sidebars right, no Sidebars via templates config.
* Additional middle, top, footer Sidebars via admin panel plugin section.

## Setup:

Sliver uses HTML5 and CSS3 features and ships with some external libs (for example PIE).

* Please copy the PIE.htc file in js/libs/ to your domain root /, to let MS-IE 6/7/8 versions benefit from CSS3 borders, shadows, gradient features
* Both dirs (/sliver and /default_new) are supposed to be copied to your template dir /serendipity/templates. 
* Sliver has multiple options to configure your template, as using jquery, google analytics etc. 

## Structure:

Sliver comes with nearly full boilerplate supported template root files, as there are 

    .htaccess (which has an activated mod_rewrite option to turn www.domain.ext into domain.ext)
	404.html (unused)
	humans.txt 
	robots.txt 

All Boilerplate and Sliver includement files (like js, css) are found in these dirs.

    js/*
	js/libs/*
	css/*

Sliver also adds some backend CSS additions to the default admin styles in `admin/style.css` .

## Attention:

* The new_default dir is a dependency template of Sliver and both dirs and are not supposed to be used standalone.

## Tweaking:

* The Archives page supports an additional staticpage file text & link for further or internal archive listings. Please customize and enable them in lang files.
* This template is not supposed to use header images. It makes use of some pre-configured `<pre` and `<code` CSS styles to be used out the box (see `sliver_styles.css`).
* If you need to set some (google) webfonts, please investigate the header part of `index.tpl`.
* It is supposed to include your own JavaScript additions into `js/scripts.js` and `css/user.css` (enable user stylesheets in template config)

## Errors:

If you experience curious problems in conjunction with Serendipity .htaccess settings, have a look in Slivers .htaccess file too.

## Endorsement: 

This Template still is a work in progress.

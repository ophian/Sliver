Sliver template v.2 | 2011-10-30
===

## Name: Sliver 2011

Left/right 4 Sidebar Theme for Serendipity Blog system [S9y] (http://www.s9y.org/)

Date: 2011-08-12

Original based on S9y standard theme [Bulletproof] (http://www.s9y.org/) and a rock-solid default for HTML5 awesome [Boilerplate-2] (http://html5boilerplate.com/)

Author: Ian

## Requirement:

Serendipity: 1.6 and up

## Why:

* Developing very slowly, but already usable, HTML5 will become the new standard of the good old HTML and XHTML web. 
* All modern browsers support it more or less. With boilerplates help, we already can use it in the wild.
* Its most outstanding feature allows every document element in HTML5 to have a corresponding JavaScript API, that describes how that element should behave in response to user actions and other events. Its up to you how to use them in this template.

## About:

* Sidebars left, Sidebars right, no Sidebars via templates config.
* Additional middle, top, footer Sidebars via admin panel plugin section.
* Use new HTML5 semantic as general structure wrappers, be ready for new media elements, offering rich, interactive experience, and use new CSS3 features

## Setup:

Sliver uses HTML5 and CSS3 features and ships with some external libs (for example PIE).

* **File:** Please copy the PIE.htc file in Sliver/js/libs/ to your domain root /, to let MS-IE <9 benefit from CSS3 borders, shadows, gradient features
* **Dir:** Both dirs (`/sliver` and `/default_new`) are supposed to be copied to your template dir `/serendipity/templates`. 
* **Config:** Sliver has multiple options to configure your template, as using jquery, google analytics etc. 

## Structure:

Sliver comes with nearly full boilerplate supported template root files, as there are 

    .htaccess (added Slivers AddType text/x-component .htc)
	404.html (unused)
	humans.txt 
	robots.txt 

All Boilerplate and Sliver includement files (like js, css) are found in these dirs.

    js/*
	js/libs/*
	css/*

Sliver also adds some backend CSS additions to the default admin styles in `admin/style.css`. It also has a `backend_templates` dir, with a preset Sliver ready `default_staticpage_backend.tpl` file.

## Attention:

* The new_default dir is a dependency template of Sliver and both dirs and are not supposed to be used standalone!
* This template is not supposed to use any header images.
* The `index.tpl` file has included a prompt to install Chrome Frame by default for IE6 users.
* The `.htaccess` file has an activated mod_rewrite option to turn `www.domain.ext` into `domain.ext`.

## Tweaking:

* **Archive:** The Archives page supports an additional staticpage file text & link for further or internal archive listings. Please customize and enable them in lang files and as your archive staticpage.
* **Code:** This template makes use of some pre-configured `<pre` and `<code` CSS styles to be used out the box (see `sliver_styles.css`).
* **Fonts:** If you need to set some (google) webfonts, please investigate the header part of `index.tpl`.
* **Customize:** It is supposed to include your own JavaScript additions into `js/scripts.js` and `css/user.css` (enable user stylesheets in template config)

## Errors:

If you experience curious problems in conjunction with Serendipity .htaccess settings, have a look in Slivers .htaccess file too.

## Endorsement: 

This Template still is a work in progress.

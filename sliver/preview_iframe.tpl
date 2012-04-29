<!doctype html>
<!--[if lt IE 7]> <html class="no-js lt-ie9 lt-ie8 lt-ie7" xml:lang="{$lang}" lang="{$lang}"> <![endif]-->
<!--[if IE 7]>    <html class="no-js lt-ie9 lt-ie8" xml:lang="{$lang}" lang="{$lang}"> <![endif]-->
<!--[if IE 8]>    <html class="no-js lt-ie9" xml:lang="{$lang}" lang="{$lang}"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js" xml:lang="{$lang}" lang="{$lang}"> <!--<![endif]-->
<head>
    <meta charset="{$head_charset}">
    {* Use the .htaccess and remove these lines to avoid edge case issues. More info: h5bp.com/b/378 *}
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="Powered-By" content="Serendipity v.{$head_version}">
    {* Mobile viewport optimized: h5bp.com/viewport *}
    <meta name="viewport" content="width=device-width">

    <title>{$CONST.SERENDIPITY_ADMIN_SUITE}</title>

{if $template_option.webfonts == 'droid'}
    <link  rel="stylesheet" href="http://fonts.googleapis.com/css?family=Droid+Sans:400,700">
{elseif $template_option.webfonts == 'ptsans'}
    <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=PT+Sans:400,400italic,700,700italic">
{elseif $template_option.webfonts == 'osans'}
    <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Open+Sans:400,400italic,700,700italic">
{elseif $template_option.webfonts == 'cabin'}
    <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Cabin:400,400italic,700,700italic">
{elseif $template_option.webfonts == 'ubuntu'}
    <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Ubuntu:400,400italic,700,700italic">
{/if}

    <link rel="shortcut icon" href="{$serendipityBaseURL}templates/{$template}/favicon.ico">
    {* this is the boilerplate main stylesheet by GIT master on 2012-04-28 *}
    <link rel="stylesheet" href="{$serendipityHTTPPath}templates/{$template}/css/style.css">
    {* this is the default fallback and additional plugin stylesheet generated into serendipity.css *}
    <link rel="stylesheet" href="{$serendipityHTTPPath}serendipity.css">
    {* main sliver stylesheet; also used to override selected default styles and includes conditional ieN classes *}
    <link rel="stylesheet" href="{$serendipityHTTPPath}templates/{$template}/css/sliver_style.css">
    {* additional user stylesheet: this can be used to override selected styles *}
{if $template_option.userstylesheet}
    <link rel="stylesheet" href="{serendipity_getFile file="css/user.css"}">
{/if}
    {* this is the end of boilerplate style and mixed print styles *}
    <link rel="stylesheet" href="{$serendipityHTTPPath}templates/{$template}/css/endandprint.css">
    
    {* All JavaScript at the bottom, except this Modernizr build incl. Respond.js
         Respond is a polyfill for min/max-width media queries. Modernizr enables HTML5 elements & feature detects;
         for optimal performance, create your own custom Modernizr build: www.modernizr.com/download/ *}
    <script src="{$serendipityHTTPPath}templates/{$template}/js/vendor/modernizr-2.5.3.min.js"></script>

	<script type="text/javascript">
           window.onload = function() {ldelim}
             parent.document.getElementById('serendipity_iframe').style.height = document.getElementById('content').offsetHeight
                                                                               + parseInt(document.getElementById('content').style.marginTop)
                                                                               + parseInt(document.getElementById('content').style.marginBottom)
                                                                               + 'px';
             parent.document.getElementById('serendipity_iframe').scrolling    = 'no';
             parent.document.getElementById('serendipity_iframe').style.border = 0;
           {rdelim}
    </script>
  </head>

  <body id="admin_preview_iframe_body"{if $template_option.webfonts != 'none'} class="{$template_option.webfonts}"{/if}>
    <div id="admin_preview_iframe_wrapper">
      <div id="content" class="clearfix admin_preview_iframe_content" style="padding: 1em 0; margin: 0;">{* we have to leave the inline style part here in order to the upper ajax working *}
      {$preview}
      </div>
    </div>

{if $template_option.use_slivers_JQueryMin}
  {* Grab Google CDN's jQuery, with a protocol relative URL; fall back to local if offline *}
  <script src="//ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js"></script>
  <script>window.jQuery || document.write('<script src="{$serendipityHTTPPath}templates/{$template}/js/vendor/jquery-1.7.2.min.js"><\/script>')</script>
{/if}
  {* scripts concatenated and minified via ant build script *}
  <script src="{$serendipityHTTPPath}templates/{$template}/js/plugins.js"></script>
  <script src="{$serendipityHTTPPath}templates/{$template}/js/main.js"></script>

  </body>
</html>

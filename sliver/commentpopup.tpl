<!doctype html>
<html class="no-js" lang="{$lang}">
<head>
    <meta charset="{$head_charset}">
    <meta name="generator" content="Serendipity Styx Edition">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>{$CONST.SERENDIPITY_ADMIN_SUITE}</title>

{if $template_option.webfonts == 'droid'}
    <link  rel="stylesheet" href="//fonts.googleapis.com/css?family=Droid+Sans:400,700">
{elseif $template_option.webfonts == 'ptsans'}
    <link rel="stylesheet" href="//fonts.googleapis.com/css?family=PT+Sans:400,400italic,700,700italic">
{elseif $template_option.webfonts == 'osans'}
    <link rel="stylesheet" href="//fonts.googleapis.com/css?family=Open+Sans:400,400italic,700,700italic">
{elseif $template_option.webfonts == 'cabin'}
    <link rel="stylesheet" href="//fonts.googleapis.com/css?family=Cabin:400,400italic,700,700italic">
{elseif $template_option.webfonts == 'ubuntu'}
    <link rel="stylesheet" href="//fonts.googleapis.com/css?family=Ubuntu:400,400italic,700,700italic">
{/if}

    <link rel="shortcut icon" href="{$serendipityBaseURL}{$templatePath}{$template}/favicon.ico">
    {* this is the boilerplate main stylesheet by GIT master on 2012-04-28 *}
    <link rel="stylesheet" href="{$serendipityHTTPPath}{$templatePath}{$template}/css/style.css">
    {* this is the default fallback and additional plugin stylesheet generated into serendipity.css *}
    <link rel="stylesheet" href="{$serendipityHTTPPath}serendipity.css">
    {* additional user stylesheet: this can be used to override selected styles *}
    {* this is the end of boilerplate style and mixed print styles *}
    <link rel="stylesheet" href="{$serendipityHTTPPath}{$templatePath}{$template}/css/endandprint.css">

    {* All JavaScript at the bottom, except this Modernizr build incl. Respond.js
         Respond is a polyfill for min/max-width media queries. Modernizr enables HTML5 elements & feature detects;
         for optimal performance, create your own custom Modernizr build: www.modernizr.com/download/ *}
    <script src="{$serendipityHTTPPath}{$templatePath}{$template}/js/modernizr-3.6.0.min.js"></script>

  </head>

  <body{if $template_option.webfonts != 'none'} class="{$template_option.webfonts}"{/if} style="background: none repeat scroll 0 0 #FFFFFF; margin: 0; padding: 0;">
    <div id="wrapper" style="border: 0 none; margin: 0; width: 100%;">
      <section id="serendipity_comment_page" class="s9y_wrap">
{if $is_comment_added}
    <div class="popup_comments_message popup_comments_message_added">{$CONST.COMMENT_ADDED}{$comment_string.0}<a href="{$comment_url}">{$comment_string.1}</a>{$comment_string.2}<a href="#" onclick="self.close()">{$comment_string.3}</a>{$comment_string.4}</div>
{elseif $is_comment_notadded}
    <div class="popup_comments_message popup_comments_message_notadded">{$CONST.COMMENT_NOT_ADDED}{$comment_string.0}<a href="{$comment_url}">{$comment_string.1}</a>{$comment_string.2}<a href="#" onclick="self.close()">{$comment_string.3}</a>{$comment_string.4}</div>
{elseif $is_comment_empty}
    <div class="popup_comments_message popup_comments_message_empty">{$comment_string.0}<a href="#" onclick="history.go(-1)">{$comment_string.1}</a>{$comment_string.2}</div>
{elseif $is_showtrackbacks}
    <div class="serendipity_commentsTitle">{$CONST.TRACKBACKS}</div>
    <dl>
        <dt><strong>{$CONST.TRACKBACK_SPECIFIC}:</strong></dt>
        <dd><a rel="nofollow" href="{$comment_url}">{$comment_url}</a></dd>
        <dt><strong>{$CONST.DIRECT_LINK}:</strong></dt>
        <dd><a href="{$comment_entryurl}">{$comment_entryurl}</a></dd>
    </dl>
    {serendipity_printTrackbacks entry=$entry_id}
{elseif $is_showcomments}
    <div class="serendipity_commentsTitle">{$CONST.COMMENTS}</div>
    {serendipity_printComments entry=$entry_id}
    {if $is_comment_allowed}
        <div class="serendipity_commentsTitle">{$CONST.ADD_COMMENT}</div>
        {$COMMENTFORM}
    {else}
        <div class="serendipity_center serendipity_msg_important">{$CONST.COMMENTS_CLOSED}</div>
    {/if}
{/if}
      </section>
    </div>

{if $template_option.use_slivers_jQueryMin}
  <script>window.jQuery || document.write('<script src="{$serendipityHTTPPath}{$templatePath}{$template}/js/jquery-3.3.1.min.js"><\/script>')</script>
{/if}
  {* scripts concatenated and minified via ant build script *}
  <script src="{$serendipityHTTPPath}{$templatePath}{$template}/js/plugins.js"></script>
  <script src="{$serendipityHTTPPath}{$templatePath}{$template}/js/main.js"></script>

{if $template_option.use_google_analytics}
  {* See config: Asynchronous Google Analytics snippet. Include using the anonymous version, deleting the last 8 Bit of the IP-Address - else delete: ,['_gat._anonymizeIp'] *}
  <script>
    var _gaq=[['_setAccount','{$template_option.google_id}'],['_gat._anonymizeIp'],['_trackPageview'],['_trackPageLoadTime']];
    (function(d,t){ldelim}var g=d.createElement(t),s=d.getElementsByTagName(t)[0];
    g.src=('https:'==location.protocol?'//ssl':'//www')+'.google-analytics.com/ga.js';
    s.parentNode.insertBefore(g,s){rdelim}(document,'script'));
  </script>
{/if}

  </body>
</html>
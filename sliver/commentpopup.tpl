<!doctype html>
<!--[if lt IE 7]> <html class="no-js ie6 oldie" lang="en"> <![endif]-->
<!--[if IE 7]>    <html class="no-js ie7 oldie" lang="en"> <![endif]-->
<!--[if IE 8]>    <html class="no-js ie8 oldie" lang="en"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js" lang="en"> <!--<![endif]-->
<head>
    <meta charset={$head_charset}" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <meta name="Powered-By" content="Serendipity v.{$head_version}" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />

    <title>{$CONST.SERENDIPITY_ADMIN_SUITE}</title>

    <link rel="shortcut icon" href="{$serendipityBaseURL}favicon.ico" />
    <link rel="stylesheet" href="{$serendipityHTTPPath}templates/{$template}/css/style.css" />
    <link rel="stylesheet" media="handheld" href="{$serendipityHTTPPath}templates/{$template}/css/handheld.css" />
    
    <!-- this is the default fallback and additional plugin stylesheet generated into serendipity.css -->
    <link rel="stylesheet" href="{$serendipityHTTPPath}serendipity.css" />
    
    <!-- embed google webfonts here -->
{*
    <link rel="stylesheet" type="text/css" href="http://fonts.googleapis.com/css?family=PT+Sans:regular,italic,bold,bolditalic&amp;subset=latin" media="screen,projection" />
    <link rel="stylesheet" type="text/css" href="http://fonts.googleapis.com/css?family=Droid+Sans+Mono&amp;subset=latin" media="screen,projection" />
*}
    <link rel="stylesheet" href="{$serendipityHTTPPath}templates/{$template}/css/sliver_style.css" />
    <!-- additional user stylesheet: this can be used to override selected styles -->
    {if $template_option.userstylesheet}<link rel="stylesheet" href="{serendipity_getFile file="css/user.css"}" media="screen" />{/if}
    
    <!-- this is the end of boilerplate style and mixed print styles -->
    <link rel="stylesheet" href="{$serendipityHTTPPath}templates/{$template}/css/endandprint.css" />

    <script src="{$serendipityHTTPPath}templates/{$template}/js/libs/modernizr-2.0.6.min.js"></script>

  </head>

  <body style="background: none repeat scroll 0 0 #FFFFFF; margin: 0; padding: 0;">
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
  </body>
</html>
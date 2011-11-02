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

  <body style="background: none repeat scroll 0 0 #FFFFFF; margin: 0; padding: 0; overflow-y: auto;">
    <div id="wrapper" style="border: 0 none; margin: 0; width: 100%;">
      <div id="content" style="padding: 5px; margin: 0;">
      {$preview}
      </div>
    </div>
  </body>
</html>

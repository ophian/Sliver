{* Sliver 2011 template: last modified 2011-11-21 v. 2.03 - view README.md *}{if $is_embedded != true}
<!doctype html>
<!--[if lt IE 7]> <html class="no-js ie6 oldie" xml:lang="{$lang}" lang="{$lang}"> <![endif]-->
<!--[if IE 7]>    <html class="no-js ie7 oldie" xml:lang="{$lang}" lang="{$lang}"> <![endif]-->
<!--[if IE 8]>    <html class="no-js ie8 oldie" xml:lang="{$lang}" lang="{$lang}"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js" xml:lang="{$lang}" lang="{$lang}"> <!--<![endif]-->
<head>
    <meta charset={$head_charset}" />
    {* Use the .htaccess and remove these lines to avoid edge case issues. More info: h5bp.com/b/378 *}
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />

{if $staticpage_custom.title_element}
    <title>{$staticpage_custom.title_element|escape:htmlall}</title>
{else}
    <title>{$head_title|@default:$blogTitle}{if $head_subtitle} - {$head_subtitle}{/if}</title>
{/if}
    <meta name="Powered-By" content="Serendipity v.{$head_version}" />
    {* Mobile viewport optimized: h5bp.com/viewport *}
    <meta name="viewport" content="width=device-width,initial-scale=1" />
{if $startpage}
    <meta name="description" content="{* YOUR DESCRIPTION FOR THE STARTPAGE *}" /> 
    <meta name="keywords" content="{* YOUR KEYWORDS FOR THE STARTPAGE *}" /> 
    <meta name="author" content="{* YOUR AUTHOR DESC FOR THE STARTPAGE *}" />
{/if}
{if $staticpage_custom.meta_description}
    <meta name="description" content="{$staticpage_custom.meta_description|escape:htmlall}" />
{/if}
{if $staticpage_custom.meta_keywords}
    <meta name="keywords" content="{$staticpage_custom.meta_keywords|escape:htmlall}" />
{/if}

    {serendipity_hookPlugin hook="frontend_header"}

    <link rel="alternate"  type="application/rss+xml" title="{$blogTitle} RSS feed" href="{$serendipityBaseURL}{$serendipityRewritePrefix}feeds/index.rss2" />
    <link rel="alternate"  type="application/x.atom+xml"  title="{$blogTitle} Atom feed"  href="{$serendipityBaseURL}{$serendipityRewritePrefix}feeds/atom.xml" />
    {if $entry_id}<link rel="pingback" href="{$serendipityBaseURL}comment.php?type=pingback&amp;entry_id={$entry_id}" />{/if}

    <link rel="shortcut icon" href="{$serendipityBaseURL}favicon.ico" />
    <link rel="stylesheet" href="{$serendipityHTTPPath}templates/{$template}/css/style.css" />
    <link rel="stylesheet" media="handheld" href="{$serendipityHTTPPath}templates/{$template}/css/handheld.css" />
    
    {* this is the default fallback and additional plugin stylesheet generated into serendipity.css *}
    <link rel="stylesheet" href="{$serendipityHTTPPath}serendipity.css" />
    
    {* embed google webfonts here *}
{* example
    <link rel="stylesheet" type="text/css" href="http://fonts.googleapis.com/css?family=PT+Sans:regular,italic,bold,bolditalic&amp;subset=latin" media="screen,projection" />
    <link rel="stylesheet" type="text/css" href="http://fonts.googleapis.com/css?family=Droid+Sans+Mono&amp;subset=latin" media="screen,projection" />
*}
    {* main sliver stylesheet; also used to override selected default styles and includes conditional ieN classes *}
    <link rel="stylesheet" href="{$serendipityHTTPPath}templates/{$template}/css/sliver_style.css" />
    {* additional user stylesheet: this can be used to override selected styles *}
    {if $template_option.userstylesheet}<link rel="stylesheet" href="{serendipity_getFile file="css/user.css"}" media="screen" />{/if}
    
    {* this is the end of boilerplate style and mixed print styles *}
    <link rel="stylesheet" href="{$serendipityHTTPPath}templates/{$template}/css/endandprint.css" />
    
    {* All JavaScript at the bottom, except this Modernizr build incl. Respond.js
         Respond is a polyfill for min/max-width media queries. Modernizr enables HTML5 elements & feature detects;
         for optimal performance, create your own custom Modernizr build: www.modernizr.com/download/ *}
    <script src="{$serendipityHTTPPath}templates/{$template}/js/libs/modernizr-2.0.6.min.js"></script>

  </head>
  <body id="top">
{else}
    {serendipity_hookPlugin hook="frontend_header"}
{/if}

{if $is_raw_mode != true}
  <div id="wrapper">
    {*
       +++++++++++++++++++++++++++++++++++++++++++++++++++++++++
       // header section
       +++++++++++++++++++++++++++++++++++++++++++++++++++++++++
      *}

    <header id="header">
      {if $template_option.sitenavpos == 'above'}
      {* #sitenav: this holds a list of navigational links which can be customized in the theme configurator *}
      <hgroup id="{if $template_option.sitenavstyle != 'slim'}site{/if}nav{if $template_option.sitenavstyle == 'ex'}-extended{/if}" class="snabove">
        <ul>
        {foreach from=$navlinks item="navlink" name=navbar}
          <li class="{if $currpage==$navlink.href or $currpage2==$navlink.href}currentpage{/if}{if $smarty.foreach.navbar.first} navlink_first{/if}{if $smarty.foreach.navbar.last} navlink_last{/if}"><a href="{$navlink.href}" title="{$navlink.title}">{$navlink.title}</a></li>
        {/foreach}
        </ul>
        {* quicksearch option in the navigational link menu bar only when navbar is above or below the banner *}
        {if $template_option.sitenav_quicksearch}
        <form id="searchform" action="{$serendipityHTTPPath}{$serendipityIndexFile}" method="get">
          <input type="hidden" name="serendipity[action]" value="search" />
          <input alt="{$CONST.QUICKSEARCH}" type="text" id="serendipityQuickSearchTermField" name="serendipity[searchTerm]" value="{$CONST.QUICKSEARCH}..." onfocus="if(this.value=='{$CONST.QUICKSEARCH}...')value=''" onblur="if(this.value=='')value='{$CONST.QUICKSEARCH}...';" />
          <div id="LSResult" style="display: none;"><div id="LSShadow"></div></div>
        </form>
        {serendipity_hookPlugin hook="quicksearch_plugin" hookAll="true"}
        {/if}
      </hgroup>
      {/if}
      {* #serendipity_banner: this is the header area. it holds the blog title and description headlines *}
      <hgroup id="serendipity_banner">
        <h1><span class="{if !$template_option.firbtitle}in{/if}visible"><a class="homelink1" href="{$serendipityBaseURL}">{$head_title|@default:$blogTitle|truncate:80:" ..."}</a></span></h1>
        <h2><span class="{if !$template_option.firbdescr}in{/if}visible"><a class="homelink2" href="{$serendipityBaseURL}">{$head_subtitle|@default:$blogDescription}</a></span></h2>
      </hgroup>
      {if $template_option.sitenavpos == 'below'}
      {* #sitenav: this holds a list of navigational links which can be customized in the theme configurator *}
      <hgroup id="{if $template_option.sitenavstyle != 'slim'}site{/if}nav{if $template_option.sitenavstyle == 'ex'}-extended{/if}" class="snbelow">
        <ul>
        {foreach from=$navlinks item="navlink" name="navbar"}
          <li class="{if $currpage==$navlink.href or $currpage2==$navlink.href}currentpage{/if}{if $smarty.foreach.navbar.first} navlink_first{/if}{if $smarty.foreach.navbar.last} navlink_last{/if}"><a href="{$navlink.href}" title="{$navlink.title}">{$navlink.title}</a></li>
        {/foreach}
        </ul>
        {* quicksearch option in the navigational link menu bar only when navbar is above or below the banner *}
        {if $template_option.sitenav_quicksearch}
        <form id="searchform" action="{$serendipityHTTPPath}{$serendipityIndexFile}" method="get">
          <input type="hidden" name="serendipity[action]" value="search" />
          <input alt="{$CONST.QUICKSEARCH}" type="text" id="serendipityQuickSearchTermField" name="serendipity[searchTerm]" value="{$CONST.QUICKSEARCH}..." onfocus="if(this.value=='{$CONST.QUICKSEARCH}...')value=''" onblur="if(this.value=='')value='{$CONST.QUICKSEARCH}...';" />
          <div id="LSResult" style="display: none;"><div id="LSShadow"></div></div>
        </form>
        {serendipity_hookPlugin hook="quicksearch_plugin" hookAll="true"}
        {/if}
        </hgroup>
      {/if}

    </header>
    {*
       ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
       // include the top sidebar, if set in admin panels plugin section
       ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
      *}
    {if $is_single_entry !== true && $staticpage_pagetitle == ''}

    <nav id="sidebar_top">
      {if $topSidebarElements > 0}{serendipity_printSidebar side="top"}{/if}
    </nav><!-- // "id:#sidebar_top" end --> 
    {/if} 
    {*
       +++++++++++++++++++++++++++++++++++++++++++++
       // include the theme option type sidebar left
       +++++++++++++++++++++++++++++++++++++++++++++
      *}
    {if $template_option.layouttype == '2sb'}

    <!-- case 1: 1-2 columns, left sidebar(s) only -->

    {* left sidebar stuff in here *}
    <aside id="sidebar_left" class="twoside layout2sb_left">

      {if $template_option.sitenavpos == 'left' or $template_option.sitenavpos == 'right'}
      {* #sbsitenav: like #sitenav, but placed within the sidebar *}
      <div id="sbsitenav" class="serendipitySideBarItem">
        <h3 class="serendipitySideBarTitle">{$template_option.sitenav_sidebar_title}</h3>
        <div class="serendipitySideBarContent">
          {* the line below must remain as a single uninterrupted line to display correctly in ie6 *}
          <ul>{foreach from=$navlinks item="navlink" name="sbnav"}<li class="{if $currpage==$navlink.href or $currpage2==$navlink.href}currentpage{/if}{if $smarty.foreach.sbnav.first} sbnavlink_first{/if}{if $smarty.foreach.sbnav.last} sbnavlink_last{/if}"><a href="{$navlink.href}" title="{$navlink.title}">{$navlink.title}</a></li>{/foreach}</ul>
        </div>
        <div class="serendipitySideBarFooter"></div>
      </div>
      {/if}
      {if $leftSidebarElements > 0}{serendipity_printSidebar side="left"}{/if}
      {if $rightSidebarElements > 0}{serendipity_printSidebar side="right"}{/if}

    </aside>

    {* middle sidebar stuff in here *}
    {if $middleSidebarElements > 0}
    <aside id="sidebar_middle">
      {serendipity_printSidebar side="middle"}
     </aside><!-- // "id:#sidebar_middle" end --> 
    {/if}

    {* blog content stuff in here *}
    <section id="blog" class="{if $middleSidebarElements > 0}twobar-left{else}onebar-left{/if}">
      <section id="content" class="twomain layout2sb_content hfeed">
        {$CONTENT}
      </section><!-- // "section id:#content" end -->
    </section><!-- // "section id:#blog" end -->

    {/if}
    {*
       +++++++++++++++++++++++++++++++++++++++++++++
       // include the theme option type sidebar right
       +++++++++++++++++++++++++++++++++++++++++++++
      *}
    {if $template_option.layouttype == '2bs'}

    <!-- case 2: 1-2 columns, right sidebar(s) only -->

    {* blog content stuff in here *}
    <section id="blog" class="{if $middleSidebarElements > 0}twobar-right{else}onebar-right{/if}">
      <section id="content" class="twomain layout2bs_content hfeed">
        {$CONTENT}
      </section><!-- // "section id:#content" end -->
    </section><!-- // "section id:#blog" end -->

    {* middle sidebar stuff in here *}
    {if $middleSidebarElements > 0}

    <aside id="sidebar_middle">
      {serendipity_printSidebar side="middle"}
    </aside><!-- // "id:#sidebar_middle" end --> 
    {/if}

    {* right sidebar stuff in here *}
    <aside id="sidebar_right" class="twoside layout2bs_right">

      {if $template_option.sitenavpos == 'left' or $template_option.sitenavpos == 'right'}
      {* #sbsitenav: like #sitenav, but placed within the sidebar *}
      <div id="sbsitenav" class="serendipitySideBarItem">
        <h3 class="serendipitySideBarTitle">{$template_option.sitenav_sidebar_title}</h3>
        <div class="serendipitySideBarContent">
          {* the line below must remain as a single uninterrupted line to display correctly in ie6 *}
          <ul>{foreach from=$navlinks item="navlink" name="sbnav"}<li class="{if $currpage==$navlink.href}currentpage{/if}{if $smarty.foreach.sbnav.first} sbnavlink_first{/if}{if $smarty.foreach.sbnav.last} sbnavlink_last{/if}"><a href="{$navlink.href}" title="{$navlink.title}">{$navlink.title}</a></li>{/foreach}</ul>
        </div>
        <div class="serendipitySideBarFooter"></div>
      </div>
      {/if}
      {if $rightSidebarElements > 0}{serendipity_printSidebar side="right"}{/if}
      {if $leftSidebarElements > 0}{serendipity_printSidebar side="left"}{/if}

    </aside>

    {/if}
    {*
       ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
       // include the theme option type no horizontal sidebars
       ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
      *}
    {if $template_option.layouttype == '1col'}

    <!-- case 3: 1 column, sidebar(s) below -->

    {* blog content stuff in here *}
    <section id="blogone">
      <section id="content" class="onemain layout1col_content hfeed">
        {$CONTENT}
      </section><!-- // "section id:#content" end -->
    </section><!-- // "section id:#blogone" end -->

    {* onefull sidebar stuff in here *}
    <aside id="sidebar_footer" class="onefull layout1col_right_full">

      {if $leftSidebarElements > 0}{serendipity_printSidebar side="left"}{/if}
      {if $middleSidebarElements > 0}{serendipity_printSidebar side="middle"}{/if}
      {if $rightSidebarElements > 0}{serendipity_printSidebar side="right"}{/if}
      {if $footerSidebarElements > 0}{serendipity_printSidebar side="footer"}{/if}

      {if ($template_option.sitenavpos != 'none' and $template_option.sitenav_footer)}
      <div id="footer_sitenav">
        <ul>
        {foreach from=$navlinks item="navlink" name=navbar}
          <li{if $currpage == $navlink.href} class="currentpage"{/if}><a href="{$navlink.href}" title="{$navlink.title}">{$navlink.title}</a></li>
        {/foreach}
        </ul>
      </div>
      {/if}

    </aside>

    {else}
    {*
       ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
       // include the footer sidebar, if set in admin panels plugin section
       ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
      *}

    <nav id="sidebar_footer">
      {if $footerSidebarElements > 0}{serendipity_printSidebar side="footer"}{/if}
      {if ($template_option.sitenavpos != 'none' and $template_option.sitenav_footer)}
      <div id="footer_sitenav">
        <ul>
        {foreach from=$navlinks item="navlink" name=navbar}
          <li{if $currpage == $navlink.href} class="currentpage"{/if}><a href="{$navlink.href}" title="{$navlink.title}">{$navlink.title}</a></li>
        {/foreach}
        </ul>
      </div>
      {/if}

    </nav><!-- // "id:#sidebar_footer" end --> 

    {/if}

    {*
       +++++++++++++++++++++++++++++++++++++++++++++++++++++++++
       // footer section
       +++++++++++++++++++++++++++++++++++++++++++++++++++++++++
      *}

    <footer id="footer">
      <div id="serendipity_credit_line">&#160;<em>sliver 2011</em>&#160;</div>
    </footer>

  </div><!-- // "id:#wrapper" end -->
{/if}

{$raw_data}

{serendipity_hookPlugin hook="frontend_footer"}

{if $is_embedded != true}
  {* JavaScript at the bottom for fast page loading *}

{if $template_option.use_slivers_JQueryMin}
  {* Grab Google CDN's jQuery, with a protocol relative URL; fall back to local if offline *}
  <script src="//ajax.googleapis.com/ajax/libs/jquery/1.7.0/jquery.min.js"></script>
  <script>window.jQuery || document.write('<script src="{$serendipityHTTPPath}templates/{$template}/js/libs/jquery-1.7.0.min.js"><\/script>')</script>
{/if}

  {* scripts concatenated and minified via ant build script *}
  <script defer src="{$serendipityHTTPPath}templates/{$template}/js/plugins.js"></script>
  <script defer src="{$serendipityHTTPPath}templates/{$template}/js/script.js"></script>

{if $template_option.use_google_analytics}
  {* See config: Asynchronous Google Analytics snippet. Include using the anonymous version, deleting the last 8 Bit of the IP-Address - else delete: ,['_gat._anonymizeIp'] *}
  <script>
    var _gaq=[['_setAccount','{$template_option.google_id}'],['_gat._anonymizeIp'],['_trackPageview']];
    (function(d,t){ldelim}var g=d.createElement(t),s=d.getElementsByTagName(t)[0];
    g.src=('https:'==location.protocol?'//ssl':'//www')+'.google-analytics.com/ga.js';
    s.parentNode.insertBefore(g,s){rdelim}(document,'script'));
  </script>
{/if}
  {* Prompt IE 6 users to install Chrome Frame. Remove this if you want to support IE 6. See chromium.org/developers/how-tos/chrome-frame-getting-started *}
  <!--[if lt IE 7 ]>
    <script src="//ajax.googleapis.com/ajax/libs/chrome-frame/1.0.3/CFInstall.min.js"></script>
  {literal}
    <script>window.attachEvent("onload",function(){CFInstall.check({mode:"overlay"})})</script>
  {/literal}
  <![endif]-->
  </body>

</html>
{/if}

<?php
// About
@define('THEME_ABOUT', '<div class="template_about_box"><h3>Welcome to sliver!</h3>This Template is making use of new HTML5, semantics, features and CSS3 stylesheets and comes with an activated JQuery to serve you needs (use js/script.js).<ul><li>Manage your Sidebars left, Sidebars right and no Sidebars via this templates config.</li><li>Add additional middle, top and footer Sidebars via the admin panels plugin section.</li><li>Use one of three pre defined head navigation button styles.</li><li>Please copy PIE.htc from js/libs/ (the IE 6/7/8 CSS3 render script for gradient- and shadow-effects) to the root (/) path of your domain!</li></ul></div>');
// Stylesheet
@define('USER_STYLESHEET','Use additional user stylesheet.');
@define('USER_STYLESHEET_BLAHBLAH','Users have to create this stylesheet in the template directory. It has to be named user.css and can be used to override selected styles.');
// Layout
@define('LAYOUT_TYPE','Blog layout (B = Blog entriee, S = Sidebar, CF = Content first)');
@define('LAYOUT_SB','Two columns, S-B');
@define('LAYOUT_BS','Two columns, B-S, CF');
@define('LAYOUT_SC','One column, sidebars below, CF');
// Fahrner Image Replacement
@define('FIR_BTITLE','Show blog title in the header');
@define('FIR_BDESCR','Show blog description in the header');
// Date format
@define('BP_DATE_FORMAT', 'Date format');
// Entry footer
@define('ENTRY_FOOTER_POS','Position of the entry footer');
@define('BELOW_ENTRY','Below the entry');
@define('BELOW_TITLE','Below the entry title');
@define('SPLIT_FOOTER','Split entry footer');
@define('FOOTER_AUTHOR','Show author in the entry footer');
@define('FOOTER_SEND2PRINTER','Show "Send To Printer" in the entry footer');
@define('SEND2_PRINTER','Print');
@define('FOOTER_CATEGORIES','Show categories in the entry footer');
@define('FOOTER_TIMESTAMP','Show timestamp in the entry footer');
@define('FOOTER_COMMENTS','Show number of comments in the entry footer');
@define('FOOTER_TRACKBACKS','Show number of trackback in the entry footer');
@define('ALT_COMMTRACK','Use alternate display for number of comments and trackbacks');
@define('ALT_COMMTRACK_BLAHBLAH','(i.e. "No comments" or "1 comment" instead of "Comments (0)" or "Comments (1)")');
@define('SHOW_ADDTHIS_WIDGET','Show AddThis (http://www.addthis.com) bookmark widget in entry footer');
@define('ADDTHIS_ACCOUNT','AddThis.com account number.  Not required but will provide statistics about how readers are bookmarking and sharing your content if provided.');
@define('SHOW_STICKY_ENTRY_FOOTER','Show entry footer for sticky postings');
@define('SHOW_STICKY_ENTRY_HEADING','Show entry heading for sticky postings');
@define('SHOW_STICKY_ENTRY_BLAHBLAH','(requires plugin "Extended properties for entries")');
// Page footer next page  and previous page links
@define('PREV_NEXT_STYLE','Show page footer previous page/next page links as');
@define('PREV_NEXT_TEXT','Text only');
@define('PREV_NEXT_TEXT_ICON','Text and icon');
@define('PREV_NEXT_ICON','Icon only');
@define('SHOW_PAGINATION','Show additional page numbers (pagination)');
// coComment support
@define('COCOMMENT_ACTIVE','Integrate coComment (http://www.cocomment.com) into comment form');
// Counter code
@define('COUNTER_CODE', 'Insert code for counter and/or web stat tool');
@define('USE_COUNTER', 'Choose whether to use counter code inserted above');
// Additional footer text
@define('FOOTER_TEXT', 'Use this to insert additional text into the page footer');
@define('USE_FOOTER_TEXT', 'Integrate footer text');
// jquery support
@define('SLIVERS_JQUERY', 'Use Slivers JQuery?');
@define('SLIVERS_JQUERY_BLAHBLAH', 'Includes slivers und ajax.googleapis.com jquery.min.js into the index.tpl');
// google analytics support
@define('GOOGLE_ANALYTICS', 'Use google analytics?');
@define('GOOGLE_ANALYTICS_BLAHBLAH', 'Includes http/s google-analytics.com/ga.js into the index.tpl');
@define('GOOGLE_ANALYTICS_ID', 'Your google analytics ID');
//Sitenav
@define('SITENAV_POSITION','Position of the navbar');
@define('SITENAV_NONE','No navbar');
@define('SITENAV_ABOVE','Above the banner');
@define('SITENAV_BELOW','Below the banner');
@define('SITENAV_LEFT','At the top of the left sidebar');
@define('SITENAV_RIGHT','At the top of the right sidebar');
@define('SITENAV_FOOTER','Also show navigation links in the footer');
@define('SITENAV_FOOTER_BLAHBLAH','(not displayed regardless of choice if "No navbar" is selected above)');
@define('SITENAV_QUICKSEARCH','Show quicksearch in the navbar');
@define('SITENAV_QUICKSEARCH_BLAHBLAH','(only works in navbar above or below banner; quicksearch sidebar item will be suppressed automagically)');
@define('SITENAV_TITLE','Title for navigation menu');
@define('SITENAV_TITLE_BLAHBLAH','(only displayed when located at the top of a sidebar)');
@define('SITENAV_TITLE_TEXT','Main menu');
@define('NAVLINK_AMOUNT', 'Enter number of links in the navbar (needs reload of the Manage Styles page)');
@define('NAVLINK_AMOUNT_BLAHBLAH', '(commonly use the Static Pages plugin - serendipity_event_staticpage - to create CMS like navigation pages, which you can link for here)');
@define('NAV_LINK_TEXT', 'Enter the navbar link text');
@define('NAV_LINK_URL', 'Enter the full URL of your link');

@define('ARCHIVE_TEXT_INTRO', 'Sliver Templates Archives provides useful ways to find older items. Blog-Entries are divided into <a href="#bycats">Categories</a> (number of entries per cat in brackets) and can also be found by <a href="#bytags">Tags</a> (in frequency of occurrence). Also there is an ordered by <a href="#bydate">Date</a> Archive.');
@define('ARCHIVE_TEXT_ADD', '');//'There is also the <a href="%spages/xxx.html"> XXX </ a>, where I list grouped articles worth reading from this blog or other pages on selected topics.');
@define('ARCHIVE_TEXT_YEARMONTH', 'The Archive pages linked here show a listing of the entries in the respective months.');
@define('ARCHIVE_TEXT_SUMMARY', 'Archive Overview');
/* Additional sidebars */
@define('TOP','top');
@define('FOOTER','footer');
@define('MIDDLE','middle');
/* Navigation styles */
@define('SITENAV_STYLE', 'This site\'s navigation bar styles against the default-style using a background picture (id:#sitenav).');
@define('SITENAV_STYLE_BLAHBLAH', 'Simple = use slim and easy CSS style (id:#nav). - Extended = use extended style with CSS3 technics (id:#sitenav-extended).');
@define('SITENAV_SLIM', 'simple');
@define('SITENAV_EXTENDED', 'extended');

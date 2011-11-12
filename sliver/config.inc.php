<?php // Sliver template v.2.03 2011-11-12
/*
 Sidebars left, Sidebars right, no Sidebars via templates config.
 Additional middle, top, footer Sidebars via admin panel plugin section.
                  
 Uses HTML5 and CSS3 features, ships with some external libs (for example PIE) 
 Please copy the PIE.htc file in js/libs/ to your domain root / to let MS-IE 6/7/8 versions benefit from CSS3 border, shadow, gradients features
 Original based on Bulletproof and Boilerplate-2
*/

if (IN_serendipity !== true) {
  die ("Don't hack!");
}

static $sv = null;

@serendipity_plugin_api::load_language(dirname(__FILE__));

$serendipity['smarty']->assign(array('currpage' => "http://".$_SERVER['HTTP_HOST'].$_SERVER['REQUEST_URI'],
                                     'currpage2'=> $_SERVER['REQUEST_URI']));

function serendipity_constant($string) {
    if (defined($string)) {
        return constant($string);
    } else {
        return $string;
    }
}
/* register navigation vars as constants function to allow multilanguage navbartitle entries via template lang files */
/* example: in lang (UTF-8) <en> @define('MENU_2','Imprint'); in lang (UTF-8) <de> @define('MENU_2','Impressum'); */
/* replace: {$navlink.title} with {$navlink.title|navcolang} in header and/or footer of your index.tpl */
if(strpos($serendipity['smarty']->_version, '2', 1)) {
    $serendipity['smarty']->register_modifier('navcolang', 'serendipity_constant');
} else {
    $serendipity['smarty']->registerPlugin('modifier', 'navcolang', 'serendipity_constant');
}

function serendipity_plugin_api_event_hook($event, &$bag, &$eventData, $addData = null) {
    global $serendipity;
    
    switch($event) {
        case 'frontend_footer':
            echo '<!--PLUGIN API-->';
    }

    return true;
}

$template_config = array(
    array(
        'var'           => 'about',
        'name'          => 'Template Readme',
        'type'          => 'custom',
        'custom'        => THEME_ABOUT
    ),
    array(
        'var'           => 'sidebars',
        'name'          => 'Sidebars',
        'type'          => 'hidden',
        'value'         => 'left,middle,right,top,footer,hide',
        'default'       => 'left,middle,right,top,footer,hide',
        ),
    array(
        'var'           => 'userstylesheet',
        'name'          => USER_STYLESHEET,
        'description'   => USER_STYLESHEET_BLAHBLAH,
        'type'          => 'boolean',
        'default'       => false
    ),
    array(
        'var'           => 'use_slivers_JQueryMin',
        'name'          => SLIVERS_JQUERY,
        'description'   => SLIVERS_JQUERY_BLAHBLAH,
        'type'          => 'boolean',
        'default'       => true
    ),
    array(
        'var'           => 'use_google_analytics',
        'name'          => GOOGLE_ANALYTICS,
        'description'   => GOOGLE_ANALYTICS_BLAHBLAH,
        'type'          => 'boolean',
        'default'       => false
    ),
    array(
        'var'           => 'google_id',
        'name'          => GOOGLE_ANALYTICS_ID,
        'type'          => 'string',
        'default'       => 'UA-XXXXX-X',
    ),
    array(
        'var'           => 'layouttype',
        'name'          => LAYOUT_TYPE,
        'type'          => 'select',
        'default'       => '2sb',
        'select_values' => array('2sb'  => LAYOUT_SB,
                                 '2bs'  => LAYOUT_BS,
                                 '1col' => LAYOUT_SC)
    ),
    array(
        'var'           => 'firbtitle',
        'name'          => FIR_BTITLE,
        'type'          => 'boolean',
        'default'       => true
    ),
    array(
        'var'           => 'firbdescr',
        'name'          => FIR_BDESCR,
        'type'          => 'boolean',
        'default'       => true
    ),
    array(
        'var'           => 'date_format',
        'name'          => GENERAL_PLUGIN_DATEFORMAT . " (http://php.net/strftime)",
        'type'          => 'select',
        'default'       => DATE_FORMAT_ENTRY,
        'select_values' => array(DATE_FORMAT_ENTRY => DATE_FORMAT_ENTRY,
                                 '%a, %e. %B %Y' => '%a, %e. %B %Y',
                                 '%d-%m-%y' => '%d-%m-%y',
                                 '%m-%d-%y' => '%m-%d-%y',
                                 '%a %d-%m-%y' => '%a %d-%m-%y',
                                 '%a %m-%d-%y' => '%a %m-%d-%y',
                                 '%b %d' => '%b %d',
                                 "%b %d '%y" => "%b %d '%y")
    ),
    array(
        'var'           => 'entryfooterpos',
        'name'          => ENTRY_FOOTER_POS,
        'type'          => 'select',
        'default'       => 'belowentry',
        'select_values' => array('belowentry' => BELOW_ENTRY,
                                 'belowtitle' => BELOW_TITLE,
                                 'splitfoot' => SPLIT_FOOTER)
    ),
    array(
        'var'           => 'footerauthor',
        'name'          => FOOTER_AUTHOR,
        'type'          => 'boolean',
        'default'       => true
    ),
    array(
        'var'           => 'send2printer',
        'name'          => FOOTER_SEND2PRINTER,
        'type'          => 'boolean',
        'default'       => false
    ),
    array(
        'var'           => 'footercategories',
        'name'          => FOOTER_CATEGORIES,
        'type'          => 'boolean',
        'default'       => true
    ),
    array(
        'var'           => 'footertimestamp',
        'name'          => FOOTER_TIMESTAMP,
        'type'          => 'boolean',
        'default'       => true
    ),
    array(
        'var'           => 'footercomments',
        'name'          => FOOTER_COMMENTS,
        'type'          => 'boolean',
        'default'       => true
    ),
    array(
        'var'           => 'footertrackbacks',
        'name'          => FOOTER_TRACKBACKS,
        'type'          => 'boolean',
        'default'       => true
    ),
    array(
        'var'           => 'altcommtrack',
        'name'          => ALT_COMMTRACK,
        'type'          => 'boolean',
        'default'       => false
    ),
    array(
        'var'           => 'show_sticky_entry_footer',
        'name'          => SHOW_STICKY_ENTRY_FOOTER,
        'description'   => SHOW_STICKY_ENTRY_BLAHBLAH,
        'type'          => 'boolean',
        'default'       => true
    ),
    array(
        'var'           => 'show_sticky_entry_heading',
        'name'          => SHOW_STICKY_ENTRY_HEADING,
        'description'   => SHOW_STICKY_ENTRY_BLAHBLAH,
        'type'          => 'boolean',
        'default'       => true
    ),
    array(
        'var'           => 'prev_next_style',
        'name'          => PREV_NEXT_STYLE,
        'type'          => 'select',
        'default'       => 'text',
        'select_values' => array('text' => PREV_NEXT_TEXT,
                                 'texticon' => PREV_NEXT_TEXT_ICON,
                                 'icon' => PREV_NEXT_ICON,
                                 'none' => NONE)
    ),
    array(
        'var'           => 'show_pagination',
        'name'          => SHOW_PAGINATION,
        'type'          => 'boolean',
        'default'       => false
    ),
    array(
        'var'           => 'sitenavpos',
        'name'          => SITENAV_POSITION,
        'description'   => SITENAV_BLAHBLAH,
        'type'          => 'select',
        'default'       => 'none',
        'select_values' => array('none' => SITENAV_NONE,
                                 'above' => SITENAV_ABOVE,
                                 'below' => SITENAV_BELOW,
                                 'left' => SITENAV_LEFT,
                                 'right' => SITENAV_RIGHT)
    ),
    array(
        'var'           => 'sitenavstyle',
        'name'          => SITENAV_STYLE,
        'description'   => SITENAV_STYLE_BLAHBLAH,
        'type'          => 'select',
        'default'       => 'default',
        'select_values' => array('default' => 'default',
                                 'slim' => SITENAV_SLIM,
                                 'ex'   => SITENAV_EXTENDED)
    ),
    array(
        'var'           => 'sitenav_footer',
        'name'          => SITENAV_FOOTER,
        'description'   => SITENAV_FOOTER_BLAHBLAH,
        'type'          => 'boolean',
        'default'       => true
    ),
    array(
        'var'           => 'sitenav_quicksearch',
        'name'          => SITENAV_QUICKSEARCH,
        'description'   => SITENAV_QUICKSEARCH_BLAHBLAH,
        'type'          => 'boolean',
        'default'       => true
    ),
    array(
        'var'           => 'sitenav_sidebar_title',
        'name'          => SITENAV_TITLE,
        'description'   => SITENAV_TITLE_BLAHBLAH,
        'type'          => 'string',
        'default'       => SITENAV_TITLE_TEXT,
    )
);

// Disable the use of Serendipity JQuery use in index header
$serendipity['capabilities']['jquery'] = false;

// smarty future combat
if($sv === null) { 
    $sv = (strpos($serendipity['smarty']->_version, '2', 1)) ? 'assign_by_ref' : 'assignByRef';
}

// count additional sidebar values in the admin panels plugin section
$topSidebarElements    = serendipity_plugin_api::count_plugins('top');
$middleSidebarElements = serendipity_plugin_api::count_plugins('middle');
$footerSidebarElements = serendipity_plugin_api::count_plugins('footer');
// assign them to smarty
$serendipity['smarty']->$sv('topSidebarElements', $topSidebarElements); 
$serendipity['smarty']->$sv('middleSidebarElements', $middleSidebarElements); 
$serendipity['smarty']->$sv('footerSidebarElements', $footerSidebarElements); 

$template_global_config = array('navigation' => true);
$template_loaded_config = serendipity_loadThemeOptions($template_config, $serendipity['smarty_vars']['template_option'], true);
serendipity_loadGlobalThemeOptions($template_config, $template_loaded_config, $template_global_config);

/************************************************************************
 * ToDo: be mobile ready
*************************************************************************/

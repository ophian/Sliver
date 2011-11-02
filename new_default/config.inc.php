<?php #new_default/config.inc.php v.1.0 2011-06-20

if (IN_serendipity !== true) {
  die ("Don't hack!");
}

$template_config = array(
        array(
            'var'           => 'dummy',
            'name'          => 'dummy',
            'type'          => 'hidden',
            'default'        => ''
        )
);

/* set to false as default = do not use navigation array t_global */
$template_global_config = array('navigation' => false);
$template_loaded_config = serendipity_loadThemeOptions($template_config, $serendipity['smarty_vars']['template_option']);
serendipity_loadGlobalThemeOptions($template_config, $template_loaded_config, $template_global_config);


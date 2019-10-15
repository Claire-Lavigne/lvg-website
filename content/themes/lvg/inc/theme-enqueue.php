<?php

if (!function_exists('lvg_scripts')):

    function lvg_scripts()
    {
        wp_enqueue_style(
            'lvg-style-css',
            get_theme_file_uri('/public/css/style.css'),
            [],
            '1.0.0'
        );
     


        wp_enqueue_script(
            'lvg-js',
            get_theme_file_uri('/public/js/app.js'),
            [],
            '1.0.1',
            true
        );

     
    }

endif;


add_action('wp_enqueue_scripts', 'lvg_scripts');

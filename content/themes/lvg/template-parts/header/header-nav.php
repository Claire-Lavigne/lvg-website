<div class="header__top">
      <img class="header__logo" src="<?php echo get_template_directory_uri() . '/public/images/logo-lvgstudio.png' ?>" alt="logo LVG Studio">
      <i class="header__icon ui-button fa fa-bars fa-2x" aria-hidden="true"></i>
    </div>
    <nav class="header__nav">
      <ul>
        <?php
            $menu = wp_nav_menu([
              'menu' => 'menu-header',
              'theme_location' => 'menu-top',
              'container_class' => '',
              'container' => '',
              // 'items_wrap'  => '<li><a class="nav-link nav-link-ltr" data-hover="%1$s" href="%2$s">%3$s</a></li>',
              'items_wrap'  => '<li><a class="nav-link nav-link-ltr" href="%2$s">%3$s</a></li>',
              'echo' => true
            ]);
            $menu = strip_tags($menu, '<nav></nav>');

            echo $menu;
          ?>
      </ul>
    </nav>
    
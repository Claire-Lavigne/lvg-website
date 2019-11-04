<div class="menu-mobile">
    <a href="#" class="ui-button close-menu">
      <i class="fa fa-times" aria-hidden="true"></i>
    </a>
    <nav class="mobile-nav">
      <ul>
        <?php
            $menu = wp_nav_menu([
              'menu' => 'menu-header',
              'theme_location' => 'menu-top',
              'container_class' => '',
              'container' => '',
              'items_wrap'  => '<li><a href="%2$s">%3$s</a></li>',
              'echo' => true
            ]);
            $menu = strip_tags($menu, '<nav></nav>');

            echo $menu;
        ?>
        <!-- Button modal -->
        <li><a href="" data-toggle="modal" data-target="#exampleModal">Accès privé</a></li>
        <!-- Fin button modal -->
      </ul>
    </nav>
    
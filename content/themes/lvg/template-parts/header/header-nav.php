<div class="header__top">
      <img class="header__logo" src="<?php echo get_template_directory_uri() . '/public/images/logo-lvgstudio.png' ?>" alt="logo LVG Studio">
      <i class="header__icon ui-button fa fa-bars fa-2x" aria-hidden="true"></i>
    </div>
    <nav class="header__nav">
      <ul>
    <!--<li><a class="underline" href="index.html">Home</a></li>
        <li><a class="underline" href="portfolio.html">Portfolio</a></li>
        <li><a class="underline" href="prices.html">Tarifs</a></li>
        <li><a class="underline" href="contact.html">Contact</a></li>
        <li><a class="underline" href="faq.html">faq</a></li> -->

      
     <!--    <li><a data-hover="Home" href="index.html">Home</a></li>
        <li><a data-hover="Portfolio" href="portfolio.html">Portfolio</a></li>
        <li><a data-hover="Tarifs" href="prices.html">Tarifs</a></li>
        <li><a data-hover="Contact" href="contact.html">Contact</a></li>
        <li><a data-hover="FAQ" href="faq.html">FAQ</a></li> -->
      
        <?php
        
            $menu = wp_nav_menu([
              'menu' => 'menu-header',
              'theme_location' => 'menu-top',
             'container_class' => 'header_nav',
              'container' => '',
             'items_wrap'  => '<li><a class="nav-link nav-link-ltr" data-hover="%1$s" href="%2$s">%3$s</a></li>',
              'echo' => true
            ]);
             $menu = strip_tags($menu, '<nav></nav>');

            echo $menu;
           
   ?>    
      </ul>
    </nav>
    
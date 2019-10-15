<footer>
    <a href="https://www.facebook.com/lvgstudio/" target="_blank"><i class="fa fa-facebook-square fa-2x"></i></a>
    <a href="https://www.instagram.com/lavignephotographe/" target="_blank"><i class="fa fa-instagram fa-2x"></i></a>  
        <ul class="mentions-link">
            <li>
                <?php
                    $menu = wp_nav_menu([
                    'menu' => 'menu-mentions',
                    'theme_location' => 'menu-mentions',
                    'container' => 'a',
                    'container_class' => 'mentions-link',
                    'echo' => true,
                    ]);
                    $menu = strip_tags($menu, '<li></li>');
            
                    echo $menu;
                 ?>
            </li>
            <li><span id="year"></span><a href="index.html">LVG STUDIO</a></li>
            <li>
            <?php
                    $menu = wp_nav_menu([
                    'menu' => 'menu-droits',
                    'theme_location' => 'menu-droits',
                    'container' => 'a',
                    'echo' => true,
                    ]);
                    $menu = strip_tags($menu, '<li></li>');
            
                    echo $menu;
                 ?>
            </li>
        </ul>  
        <ul>
            <li class="mentions-link--bottom"><p>SIRET 788 675 858 00013 - R.M. : 81 - R.C.S. : G8101 GREFFE D'ALBI - APE/NAFA : 7420ZR</p></li>
        </ul> 
</footer>
<?php wp_footer(); ?>
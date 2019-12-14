 <?php
/*
Template Name: Portfolio
*/
?>
<?php get_header(); ?>
<header class="header header-slides header-zindex">
<?php  get_template_part('template-parts/header/header', 'nav'); ?> 
</header>

<main> 
  <!-- carousel -->
   <div id="carouselExampleFade" class="carousel slide carousel-fade carousel-header" data-ride="carousel">
    <div class="carousel-inner">
      <div class="carousel-item active">
        <img src="<?php echo get_template_directory_uri() . '/public/images/friends.jpg ' ?>" class="d-block w-100" alt="...">
      </div>
      <div class="carousel-item">
        <img src="<?php echo get_template_directory_uri() . '/public/images/kids.jpg ' ?>" class="d-block w-100" alt="...">
      </div>
      <div class="carousel-item">
        <img src="<?php echo get_template_directory_uri() . '/public/images/services-birth.jpg ' ?>" class="d-block w-100" alt="...">
      </div>
    </div>
    <a class="carousel-control-prev" href="#carouselExampleFade" role="button" data-slide="prev">
      <span class="carousel-control-prev-icon" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="carousel-control-next" href="#carouselExampleFade" role="button" data-slide="next">
      <span class="carousel-control-next-icon" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>  
  </div> 
  <!-- text -->
    <div class="portfolio-droit"> 
      <p>Toutes les photos présentées sur <a href="index.html">LVG STUDIO</a> sont soumises au Droit d'Auteur.</p>
      <p>Toute diffusion, copie, reproduction totale ou partielle est formellement interdite.</p>
  </div> 


  <!-- grid -->
  <div class="portfolio-images" id="albums">
    <div class="row">

      <?php 
      
      $args = [
          'category_name' => 'Albums',
          'post_per_page' => '-1',
          'order' => 'ASC'
      ];

      $query = new WP_Query($args);

      if ($query->have_posts()): while($query->have_posts()): $query->the_post();
          get_template_part('template-parts/albums/cover');
      endwhile; endif;

      wp_reset_postdata();

      ?>
      
    </div>
  </div>
</main>

  <?php get_footer() ?>

  <!--menu mobile-->
    <?php  get_template_part('template-parts/footer/footer', 'mbnav'); ?> 
    <?php  get_template_part('template-parts/footer/footer', 'mbsocial'); ?> 
  <!--end menu mobile-->

  <!--scroll button-->
    <?php  get_template_part('template-parts/button/button', 'scroll'); ?> 
  <!--end scroll button-->
</body>
</html>
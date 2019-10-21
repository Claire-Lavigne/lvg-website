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
   <div class="portfolio-images">
    <div class="row">
      <div class="photo" data-aos="zoom-in-right" data-aos-offset="100" style="background-image: url(<?php echo get_template_directory_uri() . '/public/images/services-couple.jpg) ' ?> " alt="..." > 
        <h2>Fiançailles</h2>
      </div>
      <div class="photo" data-aos="zoom-in-right" data-aos-offset="200" style="background-image: url(<?php echo get_template_directory_uri() . '/public/images/services-wedding.jpg) ' ?>"> 
        <h2>Mariage</h2>
      </div>
      <div class="photo" data-aos="zoom-in-right" data-aos-offset="300" style="background-image: url(<?php echo get_template_directory_uri() . '/public/images/services-pregnant.jpg) ' ?>"> 
        <h2>Grossesse</h2>
      </div>
      <div class="photo" data-aos="zoom-in-right" data-aos-offset="100" style="background-image: url(<?php echo get_template_directory_uri() . '/public/images/services-birth.jpg) ' ?>"> 
        <h2>Naissance</h2>
      </div>
      <div class="photo" data-aos="zoom-in-right" data-aos-offset="200" style="background-image: url(<?php echo get_template_directory_uri() . '/public/images/kids.jpg) ' ?>"> 
        <h2>Enfant</h2>
      </div>
      <div class="photo" data-aos="zoom-in-right" data-aos-offset="300" style="background-image: url(<?php echo get_template_directory_uri() . '/public/images/individual.jpg) ' ?>"> 
        <h2>Individuel</h2>
      </div>
      <div class="photo" data-aos="zoom-in-right" data-aos-offset="100" style="background-image: url(<?php echo get_template_directory_uri() . '/public/images/famille.jpg) ' ?>"> 
        <h2>Famille</h2>
      </div>
      <div class="photo" data-aos="zoom-in-right" data-aos-offset="200" style="background-image: url(<?php echo get_template_directory_uri() . '/public/images/services-engagement.jpg) ' ?>"> 
        <h2>Couple</h2>
      </div>
      <div class="photo" data-aos="zoom-in-right" data-aos-offset="300" style="background-image: url(<?php echo get_template_directory_uri() . '/public/images/services-group.jpg) ' ?>"> 
        <h2>Groupe</h2>
      </div>
      <div class="photo" data-aos="zoom-in-right" data-aos-offset="100" style="background-image: url(<?php echo get_template_directory_uri() . '/public/images/friends.jpg) ' ?>"> 
        <h2>Amis</h2>
      </div> 
      <div class="photo" data-aos="zoom-in-right" data-aos-offset="200" style="background-image: url(<?php echo get_template_directory_uri() . '/public/images/studio3.jpg) ' ?>"> 
        <h2>Homme</h2>
      </div>
      <div class="photo" data-aos="zoom-in-right" data-aos-offset="300" style="background-image: url(<?php echo get_template_directory_uri() . '/public/images/studio1.jpg) ' ?>"> 
        <h2>Femme</h2>
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
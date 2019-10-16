<?php get_header() ?>
  <header class="header header-slides header-zindex" id="one">
<?php  get_template_part('template-parts/header/header', 'nav'); ?> 
  <h1>Laurent Lavigne<br>Photographe professionnel</h1>
 <!-- Button modal -->
 <button type="button" class="button--pink" data-toggle="modal" data-target="#exampleModal">Accès privé</button>
 </header>

  <!-- Modal -->
  <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
      <div class="modal-dialog" role="document">
          <div class="modal-content modal__home">
              <div class="modal-body">
                  <button type="button" class="close modal-close" data-dismiss="modal" aria-label="Close" >
                      <!-- <span aria-hidden="true">&times;</span> -->
                      <span aria-hidden="true">&#10008;</span>
                  </button>
                  <form class="modal-form"method="post" action="https://www.jingoo.com/index.php" target="_top" >
                    <h2 class="modal-title">Accès aux albums privés</h2>
                    <p>Saisissez ci-dessous vos identifiants pour accéder à vos albums</p>
                    <div class="form-informations">
                        <input   name="login" id="identifiant2" value="LL70-" placeholder="Identifiant" type="text" required><br>
                        <input  type="password" name="password" id="pass2" value="Mot de passe" placeholder="Mot de passe" onfocus="if (this.value == 'Mot de passe') {this.value=''}" type="text" required><br>
                    </div>             
                  <input name="action" value="login" type="hidden"><input name="idPhotographeAccesModule" value="/infos/acces.php/1029873" type="hidden">
                  <button name="Submit3" value="OK"  class="button--pink" type="submit">Se connecter</button>
                </form>
              </div>
          </div>
      </div>
  </div>
  <!-- End Modal -->
  <!-- carousel -->
    <div id="carouselExampleFade" class="carousel slide carousel-fade carousel-header" data-ride="carousel">
      <div class="carousel-inner">
        <div class="carousel-item active">
          <img src="<?php echo get_template_directory_uri() . '/public/images/home1.jpg' ?>" class="d-block w-100" alt="...">
        </div>
        <div class="carousel-item">
          <img src="<?php echo get_template_directory_uri() . '/public/images/home2.jpg' ?>" class="d-block w-100" alt="...">
        </div>
        <div class="carousel-item">
          <img src="<?php echo get_template_directory_uri() . '/public/images/home3.jpg' ?>" class="d-block w-100" alt="...">
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
  <!-- fin carousel -->
  <section class="photographer" id="three">
      <div class="photographer__block"> 
        <div class="photographer__img">
          <img src="<?php echo get_template_directory_uri() . '/public/images/home/laurent.jpg' ?>" alt="">
        </div>
        <div class="photographer__text">
          <h2>Laurent Lavigne</h2>
          <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. 
            Ipsa ad ipsam nostrum in unde laboriosam sint officiis accusantium 
            suscipit non, cum molestias 
            aspernatur dolorem quasi id perferendis! Laudantium, itaque sit!
            suscipit non, cum molestias 
            aspernatur dolorem quasi id perferendis! Laudantium, itaque sit!
          </p>
        </div>
      </div>
    </section> 

    <section class="feedbacks" id="four">
      <div class="owl-carousel">
        <div class="feedbacks__block">
          <div class="feedbacks__circle" style="background-image:url(<?php echo get_template_directory_uri() . '/public/images/home/avisclient-2.png) ' ?>"></div>
          <div class="feedbacks__littlebloc">
            <p class="feedbacks__name">Francois H.</p>
            <time datetime="2017" class="feedbacks__date">2017</time>
            <span class="feedbacks__stars">&#9733;&#9733;&#9733;&#9733;&#9733;</span>
            <q class="feedbacks__quote"><span>&ldquo;</span>Photographe d'un très grand professionnalisme avec en plus un très bon contact avec les clients. A choisir sans hésitation.<span>&rdquo;</span></q>
          </div>
        </div>
        <div class="feedbacks__block">
          <div class="feedbacks__circle" style="background-image:url(<?php echo get_template_directory_uri() . '/public/images/home/avisclient-1.png) ' ?>"></div>
          <div class="feedbacks__littlebloc">
            <p class="feedbacks__name">Sandra Castanié</p>
            <time datetime="2018" class="feedbacks__date">2018</time>
            <span class="feedbacks__stars">&#9733;&#9733;&#9733;&#9733;&#9733;</span>
            <q class="feedbacks__quote"><span>&ldquo;</span>Photographe très professionnel. Travail extraordinaire et bien soigné. Je recommande vraiment le travail de LVG studio Laurent.<span>&rdquo;</span></q>
          </div>
        </div>
        <div class="feedbacks__block">
          <div class="feedbacks__circle" style="background-image:url(<?php echo get_template_directory_uri() . '/public/images/home/avisclient-3.png) ' ?>"></div>
          <div class="feedbacks__littlebloc">
            <p class="feedbacks__name">Benoit Gaubert</p>
            <time datetime="2019-05" class="feedbacks__date">le 05/2019</time>
            <span class="feedbacks__stars">&#9733;&#9733;&#9733;&#9733;&#9733;</span>
            <q class="feedbacks__quote"><span>&ldquo;</span>Photographe de qualité. Très bonne prestation pour un prix très abordable. Il ne compte pas son travail et est très discret. Des photos de qualité et retravaillées avec un sérieux et du professionnalisme.<span>&rdquo;</span></q>
          </div>
        </div>
        <div class="feedbacks__block">
          <div class="feedbacks__circle" style="background-image:url(<?php echo get_template_directory_uri() . '/public/images/home/avisclient-4.png) ' ?>"></div>
          <div class="feedbacks__littlebloc">
            <p class="feedbacks__name">Amélie Adda</p>
            <time datetime="2019-06" class="feedbacks__date">06/2019</time>
            <span class="feedbacks__stars">&#9733;&#9733;&#9733;&#9733;&#9733;</span>     
            <q class="feedbacks__quote"><span>&ldquo;</span>Je recommande. C'est un très bon photographe qui met a l'aise, investi dans son travail. Le prix est raisonnable et un bon rapport qualité prix. Merci.<span>&rdquo;</span></q>
          </div>
        </div>
      </div>
  </section>
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

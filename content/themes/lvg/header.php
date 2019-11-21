<!DOCTYPE html>
<html lang="fr-FR">
<head>
  <meta charset="<?php bloginfo('charset'); ?>">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="icon" href="<?php echo get_template_directory_uri() . '/public/images/home/logo-lvgstudio2.png' ?>)">
  <link rel="stylesheet" href="https://unpkg.com/aos@next/dist/aos.css" />
  <title><?php bloginfo('name'); ?></title>
  <?php wp_head(); ?>
</head>
<body <?php body_class(); ?> class="">
   <!-- Modal -->
   <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
      <div class="modal-dialog" role="document">
          <div class="modal-content modal__home">
              <div class="modal-body">
                  <button type="button" class="close modal-close" data-dismiss="modal" aria-label="Close" >
                      <!-- <span aria-hidden="true">&times;</span> -->
                      <span aria-hidden="true">&#10008;</span>
                  </button>
                  <form class="modal-form" method="post" action="https://www.jingoo.com/index.php" target="_top" >
                    <h2 class="modal-title">Accès aux albums privés</h2>
                    <p>Saisissez ci-dessous vos identifiants pour accéder à vos albums</p>
                    <div class="modal-form-informations">
                        <input name="login" id="identifiant2" value="LL70-" placeholder="Identifiant" type="text" required><br>
                        <input type="password" name="password" id="pass2" value="Mot de passe" placeholder="Mot de passe" onfocus="if (this.value == 'Mot de passe') {this.value=''}" type="text" required><br>
                    </div>             
                  <input name="action" value="login" type="hidden"><input name="idPhotographeAccesModule" value="/infos/acces.php/1029873" type="hidden">
                  <button name="Submit3" value="OK" class="button-primary" type="submit">Se connecter</button>
                </form>
              </div>
          </div>
      </div>
  </div>
  <!-- End Modal -->
     
 
 
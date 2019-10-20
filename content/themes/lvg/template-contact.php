<?php
/*
Template Name: Contact
*/
?>
<?php get_header() ?>
<header class="header">
    <?php  get_template_part('template-parts/header/header', 'nav'); ?> 
</header>
<main>
        <h2 class="contact-title">Laurent Lavigne<br>Photographe Professionnel à Albi
        </h2>

        <div class="contact-subtitle">
            <i class="fa fa-calendar-check-o fa-2x" aria-hidden="true"></i>
            <h3>Accueil sur RDV uniquement</h3>
        </div>
        
        <section class="contact__inline">
            <div class="contact__block">
                <div class="contact__rows">
                    <div class="contact__row">
                        <i class="fa fa-phone fa-2x" aria-hidden="true"></i>
                        <p><a href="tel:+33681021789">06.81.02.17.89</a></p>
                    </div>
                    <div class="contact__row">
                        <i class="fa fa-map-marker fa-2x" aria-hidden="true"></i>
                        <p><address><a href="http://maps.google.com/?q=LVG+Studio,432+route+de+Castres,81990+PUYGOUZON" target="_blank">
                        LVG Studio<br>432 route de Castres<br>81990 PUYGOUZON</a></address></p>
                    </div>
                    <div class="contact__row">
                        <i class="fa fa-car fa-2x" aria-hidden="true"></i>
                        <p>Parking gratuit</p>
                    </div>
                    <div class="contact__row">
                        <i class="fa fa-envelope fa-2x" aria-hidden="true"></i>
                        <p><a href="mailto:lavignephotographe@gmail.com">lavignephotographe@gmail.com</a></p>
                    </div>
                </div>
            </div>
            <div class="contact__block">
                <!-- maps -->
                <iframe class="contact-maps" src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d5750.236458201688!2d2.153212!3d43.894818!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xbffded9b3f3e5a7d!2sLVG+STUDIO+Photographe+sur+RDV!5e0!3m2!1sfr!2sfr!4v1563917626208!5m2!1sfr!2sfr" frameborder="0" style="border:0" allowfullscreen></iframe>
            </div>
        </section>

        <section>
            <h2 class="contact-title">Nous contacter</h2>
            <!-- <form class="form-contact"> -->
            <form class="form-contact" action="#">
                <div class="form-informations">
                    <?php echo do_shortcode('[contact-form-7 id="24" title="Formulaire de contact"]'); ?>
                </div>
            </form>
            <button class="button-primary" type="submit">Envoyer</button>
        </section>
         
        <section>
            <h2 class="contact-title">Nos partenaires</h2>
            <div class="partners">
                <img class="partners-logo" src=" <?php echo get_template_directory_uri() . '/public/images/contact/partenaire-geantcasino.png' ?>" alt="Logo partenaire Géant Casino Albi">
                <img class="partners-logo" src=" <?php echo get_template_directory_uri() . '/public/images/contact/partenaire-traiteur.png' ?>" alt="Logo partenaire Alban Traiteur Albi">
                <img class="partners-logo" src=" <?php echo get_template_directory_uri() . '/public/images/contact/partenaire-aerodrome.png' ?>" alt="Logo partenaire Aérodrome Albi">
                <img class="partners-logo" src=" <?php echo get_template_directory_uri() . '/public/images/contact/partenaire-leclerc.png' ?>" alt="Logo partenaire E-Leclerc Albi">
            </div>
        </section>
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
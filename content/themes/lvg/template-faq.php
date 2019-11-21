<?php
/*
Template Name: FAQ
*/
?>
<?php get_header() ?>
<header class="header">
<?php  get_template_part('template-parts/header/header', 'nav'); ?> 
</header>

<main class="accordion-faq">
    <div class="accordion" id="accordionExample">
        <div class="card">
            <div class="card-header collapsed" id="headingOne" role="button" data-toggle="collapse" href="#collapseOne" aria-expanded="false" aria-controls="collapseOne">
                <p>Je veux faire une séance photo mais je ne sais pas trop quoi choisir. Que me recommandez-vous ?</p>
                <i class="fa fa-angle-down arrow" aria-hidden="true"></i>
            <div id="collapseOne" class="collapse" aria-labelledby="headingOne" data-parent="#accordionExample">
                <div class="card-body">
                    <p>Je vous présente mes séances photos, les tarifs et les détails dans <a href="https://www.lvgstudio.com/video-tarifs-studio-exterieur" target="_blank">une vidéo</a> qui va répondre à toutes vos questions.</p>
                </div>
            </div>
            </div>
        </div>
        <div class="card">
            <div class="card-header collapsed" id="headingTwo" role="button" data-toggle="collapse" href="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                <p>Quels vêtements choisir ? Pourquoi ?</p>
                <i class="fa fa-angle-down arrow" aria-hidden="true"></i>
            <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionExample">
                <div class="card-body">
                    <p>Pour des photos en <strong>extérieur</strong>, habillez-vous comme vous le souhaitez, il n'y a aucune contrainte.
                    <br>Pour des photos en <strong>studio</strong>, privilégiez les tenues sombres ou unies foncées car dans 90% des cas, les photos se feront sur fond blanc.
                    Si vous souhaitez des photos de portrait sur fond noir, prévoyez des couleurs claires ou unies.</p>
                </div>
            </div>
            </div>
        </div>
        <div class="card">
            <div class="card-header collapsed" id="headingThree" role="button" data-toggle="collapse" href="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
                <p>Avez-vous une cabine d'essayage dans votre studio ?</p>
                <i class="fa fa-angle-down arrow" aria-hidden="true"></i>
            <div id="collapseThree" class="collapse" aria-labelledby="headingThree" data-parent="#accordionExample">
                <div class="card-body">
                    <p>Oui, une petite cabine insonorisée est à votre disposition.</p>
                </div>
            </div>
            </div>
        </div>
        <div class="card">
            <div class="card-header collapsed" id="headingFour" role="button" data-toggle="collapse" href="#collapseFour" aria-expanded="false" aria-controls="collapseFour">
                <p>Est-ce que vous fournissez des accessoires ou dois-je en apporter ?</p>
                <i class="fa fa-angle-down arrow" aria-hidden="true"></i>
            <div id="collapseFour" class="collapse" aria-labelledby="headingFour" data-parent="#accordionExample">
                <div class="card-body">
                    <p>Comme je n'ai pas la place pour stocker des accessoires, 
                       vous pouvez apporter tout ce que vous aimez.</p>
                </div>
            </div>
            </div>
        </div>
        <div class="card">
            <div class="card-header collapsed" id="headingFive" role="button" data-toggle="collapse" href="#collapseFive" aria-expanded="false" aria-controls="collapseFive">
                <p>Quels accessoires peut-on utiliser ?</p>
                <i class="fa fa-angle-down arrow" aria-hidden="true"></i>
            <div id="collapseFive" class="collapse" aria-labelledby="headingFive" data-parent="#accordionExample">
                <div class="card-body">
                    <p>Voici quelques idées : chaises et jouets pour enfant, écharpes, foulards, chapeaux, doudous, guitare...</p>
                </div>
            </div>
            </div>
        </div>
        <div class="card">
            <div class="card-header collapsed" id="headingSix" role="button" data-toggle="collapse" href="#collapseSix" aria-expanded="false" aria-controls="collapseSix">
                <p>Comment se déroulent les séances ? Qui choisi les poses et les lieux ?</p>
                <i class="fa fa-angle-down arrow" aria-hidden="true"></i>
            <div id="collapseSix" class="collapse" aria-labelledby="headingSix" data-parent="#accordionExample">
                <div class="card-body">
                    <p>Pour les poses, les séances sont <b>libres</b> : je vais vous <b>guider</b> dans la réalisation des poses mais vous pouvez aussi <b>choisir</b> vos propres poses en cherchant des idées ailleurs (Internet, magazines, Pinterest, Google Images...).
                    <br>Je vous impose par contre des lieux bien précis pour les séances en extérieur. J'ai en effet sélectionné des décors (campagne, villages) qui assurent de beaux rendus photos.</p>
                </div>
            </div>
            </div>
        </div>
        <div class="card">
            <div class="card-header collapsed" id="headingSeven" role="button" data-toggle="collapse" href="#collapseSeven" aria-expanded="false" aria-controls="collapseSeven">
                <p>Faites-vous des photos en extérieur s'il pleut ?</p>
                <i class="fa fa-angle-down arrow" aria-hidden="true"></i>
            <div id="collapseSeven" class="collapse" aria-labelledby="headingSeven" data-parent="#accordionExample">
                <div class="card-body">
                    <p>Je n'ai pas le matériel adéquat pour cela, la séance serait donc reportée.</p>
                </div>
            </div>
            </div>
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
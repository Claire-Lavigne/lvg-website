<?php
/*
Template Name: Tarifs
*/
?>
<?php get_header() ?>
<header class="header">
<?php  get_template_part('template-parts/header/header', 'nav'); ?> 
</header>
<main>
        <!-- <h1>Forfaits</h1> -->

        <div class="prices-preview">
            
            <!-- block mariage -->
            <div class="prices-preview__block">
                <img class="prices-preview__img" src="<?php echo get_template_directory_uri() . '/public/images/wedding2.jpg' ?>">
                <h2 class="prices-preview__title">Mariage</h2>  
                <div class="accordion" id="accordionExample">
                    <div class="card">
                        <div class="card-header collapsed" id="headingOne" role="button" data-toggle="collapse" href="#collapseOne" aria-expanded="false" aria-controls="collapseOne">
                            <h3>Forfait Basique - <strong>790 €</strong></h3>
                            <i class="fa fa-angle-down arrow" aria-hidden="true"></i>                         
                        <div id="collapseOne" class="collapse " aria-labelledby="headingOne" data-parent="#accordionExample">
                            <div class="card-body">
                                <ul>
                                    <li><strong>De 12h à 21h</strong></li>
                                    <li>Couple</li>
                                    <li>Cémonie(s) Laïque et/ou Religieuse</li>
                                    <li>Groupes</li>
                                    <li>Vin d'honneur</li>
                                    <li><strong>400 photos minimum</strong></li>
                                    <li><strong>Remise hors saison* : 100€</strong></li>
                                </ul>
                            </div>
                            </div>
                        </div>
                    </div>
                    <div class="card">
                        <div class="card-header collapsed" id="headingTwo" role="button" data-toggle="collapse" href="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                            <h3>Forfait Medium - <strong>1090 €</strong></h3>
                            <i class="fa fa-angle-down arrow" aria-hidden="true"></i>                      
                        <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionExample">
                            <div class="card-body">
                                <ul>
                                    <li><strong>De 12h à 1h</strong></li>
                                    <li>Couple</li>
                                    <li>Cémonie(s) Laïque et/ou Religieuse</li>
                                    <li>Groupes</li>
                                    <li>Vin d'honneur</li>
                                    <li>Soirée + Photobooth</li>
                                    <li><strong>600 photos minimum</strong></li>
                                    <li><strong>Remise hors saison* : 200€</strong></li>
                                </ul>
                            </div>
                        </div>
                        </div>
                    </div>
                    <div class="card">
                        <div class="card-header collapsed" id="headingThree" role="button" data-toggle="collapse" href="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
                            <h3>Forfait Complet - <strong>1390 €</strong></h3>
                            <i class="fa fa-angle-down arrow" aria-hidden="true"></i>                       
                        <div id="collapseThree" class="collapse" aria-labelledby="headingThree" data-parent="#accordionExample">
                            <div class="card-body">
                                <ul>
                                    <li><strong>De 8h à 1h</strong></li>
                                    <li>Préparatifs</li>
                                    <li>Couple</li>
                                    <li>Cémonie(s) Laïque et/ou Religieuse</li>
                                    <li>Groupes</li>
                                    <li>Vin d'honneur</li>
                                    <li>Soirée + Photobooth</li>
                                    <li><strong>800 à 1500 photos</strong></li>
                                    <li><strong>Remise hors saison* : 300€</strong></li>
                                </ul>
                            </div>
                        </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- fin block mariage -->

            <!-- block studio -->
            <div class="prices-preview__block">
                <img class="prices-preview__img" src="<?php echo get_template_directory_uri() . '/public/images/studio1.jpg' ?>">
                <h2 class="prices-preview__title">Studio</h2>
                <div class="accordion" id="accordionExample">
                    <div class="card">
                        <div class="card-header collapsed" id="headingFour" role="button" data-toggle="collapse" href="#collapseFour" aria-expanded="false" aria-controls="collapseFour">
                            <h3>Forfait Découverte - <strong>50 €</strong></h3>
                            <i class="fa fa-angle-down arrow" aria-hidden="true"></i>                      
                        <div id="collapseFour" class="collapse" aria-labelledby="headingFour" data-parent="#accordionExample">
                            <div class="card-body">
                                <ul>
                                    <li>Durée de la séance : 25 min</li>
                                    <li>Sélection : 5 Photos numériques</li>
                                    <li>Prise de vue : 25 Clichés</li>
                                </ul>
                            </div>
                        </div>
                        </div>
                    </div>
 
                    <div class="card">
                        <div class="card-header collapsed" id="headingFive" role="button" data-toggle="collapse" href="#collapseFive" aria-expanded="false" aria-controls="collapseFive">
                            <h3>Forfait Complet - <strong>100 €</strong></h3>
                            <i class="fa fa-angle-down arrow" aria-hidden="true"></i>                       
                        <div id="collapseFive" class="collapse" aria-labelledby="headingFive" data-parent="#accordionExample">
                            <div class="card-body">
                                <ul>
                                    <li>Durée de la séance : 40 min</li>
                                    <li>Sélection : 10 Photos numériques</li>
                                    <li>Prise de vue : 50 Clichés</li>
                                </ul>
                            </div>
                         </div>
                        </div>
                    </div>
                    <div class="card">
                        <div class="card-header collapsed"   role="button" data-toggle="collapse"   aria-expanded="false" aria-controls="collapseTwo">
                            <br>
                            <br>                                   
                        </div>
                    </div>
                </div>
            </div>
            <!-- fin block studio -->

            <!-- block extérieur -->
            <div class="prices-preview__block">
                <img class="prices-preview__img" src="<?php echo get_template_directory_uri() . '/public/images/teen-girl.jpg' ?>">
                <h2 class="prices-preview__title">Extérieur</h2>
                <div class="accordion" id="accordionExample">
                    <div class="card">
                        <div class="card-header collapsed" id="headingSix" role="button" data-toggle="collapse" href="#collapseSix" aria-expanded="false" aria-controls="collapseSix">
                            <h3>Forfait Unique - <strong>100 €</strong></h3>   
                            <i class="fa fa-angle-down arrow" aria-hidden="true"></i>                        
                        <div id="collapseSix" class="collapse" aria-labelledby="headingSix" data-parent="#accordionExample">
                            <div class="card-body">
                                <ul>
                                    <li>Durée de la séance : 45 min</li>
                                    <li>Sélection : 10 Photos numériques</li>
                                    <li>Prise de vue : 50 Clichés</li>
                                </ul>
                            </div>
                        </div>
                        </div>
                    </div>
                    <div class="card">
                        <div class="card-header collapsed"   role="button" data-toggle="collapse"   aria-expanded="false" aria-controls="collapseTwo">
                            <br>  
                            <br>                  
                        <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionExample">
 
                        </div>
                        </div>
                    </div>
                    <div class="card">
                        <div class="card-header collapsed"   role="button" data-toggle="collapse"   aria-expanded="false" aria-controls="collapseTwo">
                            <br>  
                            <br>                  
                        <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionExample">
 
                        </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- fin block extérieur -->

            <!-- block naissance -->
            <div class="prices-preview__block">
                <img class="prices-preview__img" src="<?php echo get_template_directory_uri() . '/public/images/baby2.jpg' ?>">
                <h2 class="prices-preview__title">Naissance</h2>
                <div class="accordion" id="accordionExample">
                    <div class="card">
                        <div class="card-header collapsed" id="headingSeven" role="button" data-toggle="collapse" href="#collapseSeven" aria-expanded="false" aria-controls="collapseSeven">                          
                            <h3>Forfait Unique - <strong>200 €</strong></h3>
                            <i class="fa fa-angle-down arrow" aria-hidden="true"></i>                       
                        <div id="collapseSeven" class="collapse" aria-labelledby="headingSeven" data-parent="#accordionExample">
                            <div class="card-body">
                                <ul>
                                    <li>Durée de la séance : 1 heure</li>
                                    <li>Sélection : 8 photos numériques</li>
                                    <li>Prise de vue : 50 Clichés</li>
                                </ul>
                            </div>
                        </div>
                        </div>
                    </div>
                    <div class="card">
                        <div class="card-header collapsed"   role="button" data-toggle="collapse"   aria-expanded="false" aria-controls="collapseTwo">
                            <br>  
                            <br>                  
                        <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionExample">

                        </div>
                        </div>
                    </div>
                    <div class="card">
                        <div class="card-header collapsed"  role="button" data-toggle="collapse"   aria-expanded="false" aria-controls="collapseTwo">
                            <br>  
                            <br>                  
                        <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionExample">

                        </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- fin block naissance -->
        </div>



        <div class="packages__information">
            <h2>Informations mariage</h2>
            <p class="packages__informations--text">* Période : Janvier à Mai + Octobre à Décembre inclus</p>
            
            <div class="container-fluid">
                <div class="row">
                    <div class="card-infos col-md">
                        <div class="card-infos-block">
                            <div class="card-infos-icon">
                                <img src="https://img.icons8.com/ios/50/960D69/picture.png">
                            </div>
                            <div class="card-infos-text">
                                <p>Photos numériques en HD (couleur et N&B)</p>
                            </div>
                        </div>
                    </div>
            
                    <div class="card-infos col-md">
                        <div class="card-infos-block">
                            <div class="card-infos-icon">
                                <img src="https://img.icons8.com/ios/50/960D69/car.png">
                            </div>
                            <div class="card-infos-text">
                                <p>Déplacement inclus (Tarn)</p>
                            </div>
                        </div>
                    </div>
            
                    <div class="card-infos col-md">
                        <div class="card-infos-block">
                            <div class="card-infos-icon">
                                <img src="https://img.icons8.com/ios/50/960D69/download-2.png">
                            </div>
                            <div class="card-infos-text">
                                <p>Téléchargements gratuit &<br>
                                Sauvegarde sur Drive à vie</p>
                            </div>
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
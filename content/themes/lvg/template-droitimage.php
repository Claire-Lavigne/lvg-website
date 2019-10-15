<?php
/*
Template Name: Droitimage
*/
?>
<?php get_header() ?>
    <main class="droit"> 
        <h1>Autorisation d'utilisation d'image
            <br>(Reproduction et Représentation)</h1>
        
        <h2>Contrat de cession des droits à l'image</h2>
            
        <div class="droit__block">
            <h3>CESSION DES DROITS</h3>
            <h3>ENTRE : LE <strong>PHOTOGRAPHE</strong></h3>
                
            <div class="droit__block--small">
                <ul>
                    <li>Nom et Prénom : Lavigne Laurent</li>
                    <li>Né : le 31/01/1990 à Albi</li>
                    <li>Chef d'entreprise de LVG STUDIO</li>
                    <li>Siège social : 432 Route de Castres<br>81990 Puygouzon</li>
                    <li>SIRET : 7420Z Activités photographiques</li>
                    <li>E-Mail : lavignephotographe@gmail.com</li>
                    <li>Téléphone : 06.81.02.17.89</li>
                    <li>Dénommé ci-après le « <strong>PHOTOGRAPHE</strong> »</li>
                </ul>
            </div>

            <h3>ET : LE <strong>MODÈLE</strong></h3>
                
            <div class="droit__block--small">
                <p>
                    <input type="radio" name="gender" id="genderMme" value="madame"><label for="genderMme">Mme</label> 
                    <input type="radio" name="gender" id="genderM" value="monsieur"><label for="genderM">M.</label>
                    <input class="contact-form__item form-group field-input" type="text" name="lastname" value="" placeholder="Nom" for="field-Name">
                    <input class="contact-form__item form-group field-input" type="text" name="firstname" value="" placeholder="Prénom" for="field-Surname">
                    <input class="contact-form__item form-group field-input" type="date" name="datebirth" value="" >
                </p>
                <p><strong>REPRÉSENTANT LÉGAL</strong> (SI MINEUR)</p>
                <p>
                    <input type="radio" name="gender" id="genderMme" value="madame"><label for="genderMme">Mme</label> 
                    <input type="radio" name="gender" id="genderM" value="monsieur"><label for="genderM">M.</label>
                    <input class="contact-form__item form-group field-input" type="text" name="lastname" value="" placeholder="Nom" for="field-Name">
                    <input class="contact-form__item form-group field-input " type="text" name="firstname" value="" placeholder="Prénom" for="field-Surname">
                </p>
                <p>Dénommé(e) ci-après le « <strong>MODÈLE</strong> »</p>
            </div>
        </div>
        
        <div class="droit__block">
            <div class="droit__block--small">
                <p class="text-justify">Le <strong>MODÈLE</strong> 
                autorise des prises de vues photographiques et vidéo le mettant en scène et cède par le présent contrat, à titre gracieux
                et non exclusif, tous les droits qu’il détient pour sa prestation et son image reproduite sur les photographies réalisées et accorde 
                la permission irrévocable au <strong>PHOTOGRAPHE</strong>, à le photographier.
                </p>
            </div>
        </div>
        
            
        <h2>IDENTIFICATION DES PHOTOGRAPHIES DE LA PRISE DE VUE</h2>
        <div class="droit__block">
            <div class="droit__block--small">
                <p>Supports remis au <strong>MODÈLE</strong> par le <strong>PHOTOGRAPHE</strong> :
                    <br>Photos numériques</p>
                <p class="text-justify">Tous les modes de diffusions ci-dessous sont dans le seul but démonstratif afin de promouvoir le travail du photographe 
                    <strong>« Laurent Lavigne »</strong>, aucune photo ne sera proposée à la vente de quelque manière que ce soit.</p>
                <p>Cochez les autorisations de diffusion pour votre droit à l’image que vous accordez à <strong>« Laurent Lavigne »</strong> :</p>
                <ul>
                    <li><input type="checkbox" name="infos-ok" id="infos-ok-label"><label for="infos-ok-label">Tirages, Albums, Livres, Book, liste non exhaustive (Impressions sur papiers photo) </label></li>
                    <li><input type="checkbox" name="infos-ok" id="infos-ok-label"><label for="infos-ok-label"> Sites Internet du photographe, notamment le site  www.lvgstudio.com </label></li>
                    <li><input type="checkbox" name="infos-ok" id="infos-ok-label"><label for="infos-ok-label">Instagram du photographe</label></li>
                    <li><input type="checkbox" name="infos-ok" id="infos-ok-label"><label for="infos-ok-label">Pages Facebook du photographe</label></li>
                    <li><input type="checkbox" name="infos-ok" id="infos-ok-label"><label for="infos-ok-label"> Plateformes partenaires (mariages.net...) </label></li>
                    <li><input type="checkbox" name="infos-ok" id="infos-ok-label"><label for="infos-ok-label">Projections, expositions et concours</label></li>
                </ul>
            </div>
        </div>

        <div class="droit__block"> 
            <div class="droit__block--small">
                <p class="text-justify">Le <strong>MODÈLE</strong>
                a lu et compris toutes les implications de ce contrat de cession des droits à l’image et consent à
                l’utilisation de la prise de vue des photographies mentionnées dans ce formulaire.</p>
                <p>Fait à <input type="text" name="city" value="" placeholder="Ville"> 
                    le <input type="date" name="">
                    <br>en deux exemplaires originaux et de bonne foi.</p>
                <p>LE <strong>MODÈLE</strong>
                    <br>Lu et approuvé, fait à titre gracieux. Bon pour accord.</p>
                <p>E-mail et signature du MODÈLE</p>
                    <input type="email" name="email" value="" placeholder="Adresse e-mail">
                    <div class="signature-component">
                        <canvas class="signature-pad"></canvas>
                        <div>
                            <button class="button--pink button--small" id="save">Save</button>
                            <button class="button--pink button--small" id="clear">Clear</button>
                        </div>
                    </div>
            </div>
        </div>

        <div class="droit__block">
            <div class="droit__block--small">
                <p>LE <strong>PHOTOGRAPHE</strong>
                    <br>Lu et approuvé. Bon pour accord.</p>
                <div><img class="droit--image" src="/images/droit-image/signature.png" alt=""></div>
            </div>
            <button id="btn" type="submit" class="button--pink">Envoyer</button>
        </div>
    </main>
 </body>
 </html>
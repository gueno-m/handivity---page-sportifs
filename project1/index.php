<?php
$db=new PDO('mysql:host=mysql;dbname=handivity;port=3306;charset=utf8', 'root', 'root');
?>

<!DOCTYPE html>
<html lang="fr">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Parasportifs - Handivity</title>
    <link rel="stylesheet" href="css/parasportif.css">
    <link rel="stylesheet" href="css/selectric.css">
    <link href="css/slick.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">
    <link href="css/slick-theme.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Roboto:100,300,900&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Roboto+Condensed&display=swap" rel="stylesheet">
</head>

<body>
    <nav class="overlay" role="navigation">

        <div class="overlay-content">
            <a id="lien" href="#">Parasportifs</a>
            <a id="lien" href="#">Paris 2024</a>
            <a id="lien" href="#">Histoire du handisport</a>
        </div>

        <div class="reseaux">
            <a href="https://www.instagram.com/unknown.agence/" class="instagram" title="Page instagram" target="_blank"
                alt="instagram" title="Page instagram" rel="noopener"></a>
            <a href="https://www.facebook.com/Unknown-agence-114879753243965" class="facebook" title="Page facebook"
                target="_blank" alt="facebook" title="Page facebook" rel="noopener"></a>

        </div>
        <div class="navbar">
            <a href=""><svg version="1.0" xmlns="http://www.w3.org/2000/svg" width="40px" height="40px"
                    viewBox="0 0 3071.000000 3307.000000" preserveAspectRatio="xMidYMid meet">
                    <g transform="translate(0.000000,3307.000000) scale(0.100000,-0.100000)" stroke="none" class="logo"
                        fill="#ffffff">
                        <path d="M690 26155 c0 -2 89 -129 198 -282 293 -410 2265 -3177 2895 -4063
    116 -162 557 -781 980 -1375 424 -594 875 -1226 1002 -1405 127 -179 555 -779
    951 -1335 396 -555 934 -1309 1194 -1675 261 -366 809 -1135 1219 -1710 817
    -1146 884 -1241 1786 -2508 l620 -871 998 -1 c548 0 997 2 997 5 0 3 -24 38
    -53 78 -58 78 -1628 2251 -2155 2982 -179 248 -341 473 -361 500 -33 43 -915
    1265 -1626 2250 -127 176 -824 1141 -1550 2145 -725 1004 -1398 1935 -1495
    2070 -97 135 -729 1010 -1405 1945 -676 935 -1481 2050 -1789 2477 l-561 778
    -922 0 c-508 0 -923 -2 -923 -5z" />
                        <path d="M11440 26156 c0 -3 217 -272 482 -598 265 -326 579 -712 697 -858
    258 -318 469 -577 991 -1220 217 -267 491 -604 609 -750 118 -146 237 -291
    263 -323 26 -32 48 -61 48 -65 0 -7 -607 -767 -3390 -4240 -751 -937 -1369
    -1710 -1374 -1717 -7 -10 42 -82 178 -262 104 -136 250 -330 325 -430 75 -100
    139 -181 142 -180 4 1 212 261 463 577 252 316 670 842 929 1168 260 327 528
    665 597 752 135 170 906 1140 1435 1805 179 226 389 489 465 585 209 264 368
    464 659 830 252 317 264 331 281 313 9 -10 147 -178 307 -373 159 -195 647
    -791 1083 -1325 2082 -2542 2559 -3125 3034 -3707 281 -344 514 -626 518 -625
    3 1 48 59 100 129 51 69 186 252 300 406 114 154 212 289 219 300 11 17 6 27
    -38 78 -27 33 -367 451 -754 929 -387 479 -753 931 -814 1006 -60 75 -621 768
    -1246 1540 -625 772 -1185 1465 -1246 1539 -60 74 -588 727 -1173 1450 -586
    723 -1174 1450 -1308 1615 -133 165 -489 605 -790 977 l-547 677 -722 1 c-398
    0 -723 -2 -723 -4z" />
                        <path d="M27359 24904 c-1392 -1872 -1512 -2033 -1844 -2479 -417 -561 -874
    -1175 -1090 -1465 -99 -133 -236 -317 -305 -410 -69 -93 -206 -277 -305 -410
    -99 -133 -236 -317 -305 -410 -69 -93 -206 -277 -305 -410 -232 -312 -703
    -945 -1090 -1465 -168 -225 -442 -594 -610 -820 -168 -225 -442 -594 -610
    -820 -168 -225 -376 -505 -462 -622 -87 -116 -372 -499 -633 -850 -261 -351
    -607 -816 -769 -1033 -312 -419 -440 -592 -926 -1245 -168 -225 -385 -518
    -484 -650 -98 -132 -285 -383 -415 -558 -130 -174 -236 -319 -236 -322 0 -3
    433 -5 963 -4 l962 0 460 631 c253 347 485 665 516 707 31 42 296 405 589 806
    294 402 840 1149 1214 1660 374 512 740 1013 814 1115 75 102 159 217 187 255
    29 39 290 396 582 795 291 399 835 1144 1209 1655 374 512 1005 1374 1402
    1918 397 543 1047 1431 1444 1975 397 543 1028 1406 1402 1917 374 512 821
    1123 993 1358 172 236 313 430 313 433 0 2 -388 4 -863 4 l-863 0 -935 -1256z" />
                        <path d="M11830 10525 c0 -5 480 -680 1806 -2540 396 -555 901 -1264 1123
    -1575 221 -311 405 -566 409 -567 4 -1 142 184 307 410 263 362 1453 1991
    1652 2262 58 79 979 1340 1376 1883 45 62 84 117 85 122 3 7 -333 10 -960 10
    l-964 0 -79 -107 c-44 -60 -190 -256 -325 -438 -135 -181 -286 -384 -335 -450
    -49 -66 -179 -241 -290 -390 -111 -148 -248 -334 -306 -411 l-105 -142 -354
    491 c-195 270 -402 557 -460 637 -58 80 -211 291 -340 470 -129 179 -239 328
    -244 332 -12 8 -1996 11 -1996 3z" />
                    </g>
                </svg></a>
            <div class="icon">
                <div class="hamburger"> </div>
            </div>
        </div>
    </nav>
    <section>
        <h1>CHOISISSEZ VOTRE PARASPORTIF</h1>
        <div class="form-container">
            <form action="" method="get" class="filtre">
                <select name="sport" id="handisport">
                <?php
                    // $requete="SELECT * FROM sport, rel_sportif_sport, sportif WHERE sport.id_sport = rel_sportif_sport.id_sport AND sportif.id_sportif = rel_sportif_sport.id_sportif";
                    $requete="SELECT * FROM sport";
                    $stmt=$db->query($requete);
                    $result=$stmt->fetchall(PDO::FETCH_ASSOC);
                    echo "<option value=''>Sélectionnez un sport</option>\n";
                    foreach ($result as $sport){
                    echo "<option value=".$sport["id_sport"].">".$sport["nom_discipline"]."</option>\n";
                    }
                    ?>
                </select>
                <select name="competition" id="championnat" value="">
                <?php
                    $requete="SELECT * FROM competition";
                    $stmt=$db->query($requete);
                    $result=$stmt->fetchall(PDO::FETCH_ASSOC);
                    echo "<option value=''>Sélectionnez une compétiton</option>\n";
                    foreach ($result as $competition){
                    echo "<option value=".$competition["id_competition"].">".$competition["nom_competition"].'&nbsp;'.$competition["annee_competition"]."</option>\n";
                    }


                ?>
                </select>
                <!-- <input href="affiche_sportif.php" type="submit" value="Filtrer"> -->
           
                <!-- Add event -->
                <input id="retieiveFilterValues" type="submit" value="Filtrer">
            </form>
            <form href="affiche_sportif.php" action="" method="get" class="recherche">
               <a href=""><img src="images/search.svg" alt="Rechercher"></a>
                <input type="text">
            </form>
        </div>
        
        <div id="page" class="page"> 
        <span id="current-result"></span>
            <?php
            //    if (isset(empty($_GET['']) AND empty($_GET[''])))
            //    include "./services/getAllSportif.php"; 

                ?>
              </div>
        </div>
        
    </section>

    <footer role="contentinfo" class="footer-desktop">
        <div class="containerfooter">
            <div class="apagence">
                <ul>
                    <li class="titlefooter">A PROPOS DE UNKNOWN</li>
                    <li><a href="#infoagence">Infos</a></li>
                    <li><a href="#">Equipe</a></li>
                </ul>
            </div>
            <div class="apsite">
                <ul>
                    <li class="titlefooter">A PROPOS DE HANDIVITY</li>
                    <li><a href="#infosite">Infos</a></li>
                </ul>
            </div>
            <div class="apiut">
                <ul>
                    <li class="titlefooter">A PROPOS DU DUT MMI CHAMPS</li>
                    <li><a href="http://www.dut-mmi-champs.fr/" target="_blank" rel="noopener"
                            title="Site dans un nouvel onglet">Site officiel</a></li>
                </ul>
            </div>
            <div class="contact">
                <ul>
                    <li class="titlefooter">CONTACT</li>
                    <li><a href="mailto:unknown-business@hotmail.com">unknown-business@hotmail.com</a></li>
                </ul>
            </div>
        </div>
        <div class="reseau-desktop">
            <a href="https://www.instagram.com/unknown.agence/" class="instagram" title="Page instagram" target="_blank"
                alt="instagram" title="Page instagram" rel="noopener"></a>
            <a href="https://www.facebook.com/Unknown-agence-114879753243965" class="facebook" title="Page facebook"
                target="_blank" alt="facebook" title="Page facebook" rel="noopener"></a>
        </div>
        <p>Copyright &copy; 2019 UNKNOWN Inc. Tous droits réservés </p>
    </footer>

    <footer role="contentinfo" class="footer-mobile">
        <button class="accordeon titlefooter">A PROPOS DE UNKNOWN</button>
        <div class="infos-mobile">
            <li><a href="#infoagence">Infos</a></li>
            <li><a href="#">Equipe</a></li>
        </div>
        <button class="accordeon titlefooter">A PROPOS DE HANDIVITY</button>
        <div class="infos-mobile">
            <li><a href="#infosite">Infos</a></li>
        </div>
        <button class="accordeon titlefooter">A PROPOS DU DUT MMI CHAMPS</button>
        <div class="infos-mobile">
            <li><a href="http://www.dut-mmi-champs.fr/" target="_blank" rel="noopener"
                    title="Site dans un nouvel onglet">Site officiel</a></li>
        </div>
        <button class="accordeon titlefooter">CONTACT</button>
        <div class="infos-mobile">
            <li><a href="mailto:unknown-business@hotmail.com">unknown-business@hotmail.com</a></li>
        </div>
        <p>Copyright &copy; 2019 UNKNOWN Inc. Tous droits réservés </p>
    </footer>


   <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    
     <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="js/jquery.selectric.min.js"></script>
    <script type="text/javascript" src="js/slick.js"></script>
     <script type="text/javascript" src="js/menu.js"></script>
    
    <script>
        $(document).ready(function() {

            //FOOTER MOBILE

            $('.accordeon').on('click', function() {
                $(this).next().css('display', 'block');
            });

            $('select').selectric();

            $('.carousel').slick({
                // infinite: true,
                slidesToShow: 3,
                slidesToScroll: 1,
                centerMode: true,
                centerPadding: '60px',
                responsive: [{
                        breakpoint: 768,
                        settings: {
                            arrows: false,
                            centerMode: true,
                            centerPadding: '40px',
                            slidesToShow: 3
                        }
                    },
                    {
                        breakpoint: 480,
                        settings: {
                            arrows: false,
                            centerMode: true,
                            centerPadding: '40px',
                            slidesToShow: 1
                        }
                    }
                ]
            });

        });

    </script>
    
    <script>

    document.getElementById("retieiveFilterValues").addEventListener("click", function(event){
        event.preventDefault()
        var e = document.getElementById("championnat");
        var championnatId = e.options[e.selectedIndex].value;

        var e2 = document.getElementById("handisport");
        var handisportId = e2.options[e2.selectedIndex].value;

        console.log("handisportId ", championnatId);
        
        let xhr = new XMLHttpRequest();
        let url = "http://app.handivity.local";
        
        // 2. Configure it: GET-request for the URL /article/.../load
        xhr.open('GET', `${url}/services/filter.php?sport=${handisportId}&competition=${championnatId}`);

        // 3. Send the request over the network
        xhr.send();

        // 4. This will be called after the response is received
        xhr.onload = function() {
        if (xhr.status != 200) { // analyze HTTP status of the response
            alert(`Error ${xhr.status}: ${xhr.statusText}`); // e.g. 404: Not Found
        } else { // show the result
            console.log("xhr.response 123:", xhr.response);
            let currentResultOutput = document.getElementById('page');
            currentResultOutput.innerHTML = xhr.response;     
        }
        };

        xhr.onprogress = function(event) {
        if (event.lengthComputable) {
            console.log(`Received ${event.loaded} of ${event.total} bytes`);
        } else {
            console.log(`Received ${event.loaded} bytes`); // no Content-Length
        }

        xhr.onerror = function() {
        alert("Request failed");
        };
        }
    });
    </script>

</body>

</html>
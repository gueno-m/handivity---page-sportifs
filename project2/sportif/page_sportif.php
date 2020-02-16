<?php
$db=new PDO('mysql:host=localhost;dbname=handivity;port=3306;charset=utf8', 'root', '');
?>

<?php
    $requete="SELECT * FROM sportif, sport, rel_sportif_sport WHERE sportif.id_sportif={$_GET["id"]} AND rel_sportif_sport.id_sportif={$_GET["id"]} AND rel_sportif_sport.id_sport = sport.id_sport";
    $stmt = $db->query($requete);
    $result = $stmt->fetch(PDO::FETCH_ASSOC);
?>

<!DOCTYPE html>
<html lang="fr">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="icon" type="image/png" href="images/logo-handivity-bleu.png" />
    <link rel="stylesheet" href="pagesportif.css">
    <!--    <link rel="stylesheet" href="../menu/style.css">-->
    <title>Handisport - Sportifs</title>
    <style>
        @media(max-width:650px) {
            .entete {
                background-image: url(<?php echo $result["carte"]?>);
            }
        }
    </style>
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
    </nav>

    <div class="navbar">
        <a href=""><svg version="1.0" xmlns="http://www.w3.org/2000/svg" width="40px" height="40px"
                viewBox="0 0 3071.000000 3307.000000" preserveAspectRatio="xMidYMid meet">
                <g transform="translate(0.000000,3307.000000) scale(0.100000,-0.100000)" stroke="none" class="logo"
                    fill="#000000">
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

    <section class="entete">

        <div class="contenus">

            <div class="photo">

                <div class="fleches">

                    <a href="../affiche_sportif.php"><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink"
                            width="66" height="64" viewBox="0 0 86 84">
                            <defs>
                                <filter id="Tracé_7" x="30.678" y="25.036" width="23.141" height="34.279"
                                    filterUnits="userSpaceOnUse">
                                    <feOffset dy="3" input="SourceAlpha" />
                                    <feGaussianBlur stdDeviation="1.5" result="blur" />
                                    <feFlood />
                                    <feComposite operator="in" in2="blur" />
                                    <feComposite in="SourceGraphic" />
                                </filter>
                                <filter id="Rectangle_48" x="0" y="0" width="86" height="84"
                                    filterUnits="userSpaceOnUse">
                                    <feOffset dy="3" input="SourceAlpha" />
                                    <feGaussianBlur stdDeviation="3" result="blur-2" />
                                    <feFlood />
                                    <feComposite operator="in" in2="blur-2" />
                                    <feComposite in="SourceGraphic" />
                                </filter>
                            </defs>
                            <g id="Bouton_retour_fond_transparent" data-name="Bouton retour fond transparent"
                                transform="translate(49.32 26.999) rotate(92)">
                                <g transform="matrix(-0.03, -1, 1, -0.03, -25.26, 50.23)" filter="url(#Tracé_7)">
                                    <path id="Trace_7" data-name="Tracé 7"
                                        d="M24.577.257a.878.878,0,0,0-1.241,0L12.427,11.187,1.5.257A.877.877,0,0,0,.257,1.5L11.786,13.026a.857.857,0,0,0,.62.257.893.893,0,0,0,.62-.257L24.555,1.5A.859.859,0,0,0,24.577.257Z"
                                        transform="translate(49.32 27) rotate(92)" fill="#fff" />
                                </g>
                                <g transform="matrix(-0.03, -1, 1, -0.03, -25.26, 50.23)" filter="url(#Rectangle_48)">
                                    <g id="Rectangle_48-2" data-name="Rectangle 48" transform="translate(9 6)"
                                        fill="none" stroke="#fff" stroke-width="3">
                                        <rect width="68" height="66" rx="12" stroke="none" />
                                        <rect x="1.5" y="1.5" width="65" height="63" rx="10.5" fill="none" />
                                    </g>
                                </g>
                            </g>
                        </svg>
                    </a>

                    <a href="#bio"><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink"
                            width="66" height="64" viewBox="0 0 86 84">
                            <defs>
                                <filter id="Rectangle_49" x="0" y="0" width="86" height="84"
                                    filterUnits="userSpaceOnUse">
                                    <feOffset dy="3" input="SourceAlpha" />
                                    <feGaussianBlur stdDeviation="3" result="blur" />
                                    <feFlood flood-opacity="0.78" />
                                    <feComposite operator="in" in2="blur" />
                                    <feComposite in="SourceGraphic" />
                                </filter>
                            </defs>
                            <g id="Bouton_scroll" data-name="Bouton scroll" transform="translate(-21 -570)">
                                <g transform="matrix(1, 0, 0, 1, 21, 570)" filter="url(#Rectangle_49)">
                                    <rect id="Rectangle_49-2" data-name="Rectangle 49" width="68" height="66" rx="12"
                                        transform="translate(9 6)" fill="#209ebb" />
                                </g>
                                <g id="down-arrow" transform="translate(46.839 600.337)">
                                    <path id="Trace_8" data-name="Tracé 7"
                                        d="M32.022.362a1.083,1.083,0,0,0-1.616,0L16.192,15.776,1.951.362a1.083,1.083,0,0,0-1.616,0,1.311,1.311,0,0,0,0,1.75L15.356,18.37a1.075,1.075,0,0,0,.808.362,1.12,1.12,0,0,0,.808-.362L31.994,2.111A1.282,1.282,0,0,0,32.022.362Z"
                                        transform="matrix(1, -0.017, 0.017, 1, 0, 0.565)" fill="#fff" />
                                </g>
                            </g>
                        </svg>

                    </a>

                </div>

                <img class="sportif wow" src="images/sportif.png" alt="">
            </div>

            <div class="info">

                <div>

                    <h1> <?php echo $result["prenom_sportif"]?> <span class="nom">
                            <?php echo $result["nom_sportif"]?></span> </h1>

                    <h2 class="date"><?php echo $result["date_naissance"]?></h2>
                    <h2 class="lieu"><?php echo $result["lieu_naissance"]?></h2>
                    <h2 class="sex"><?php echo $result["sexe"]?></h2>

                    <h2 class="disipline"><?php echo $result["nom_discipline"]?></h2>
                </div>

                <iframe src="<?php echo $result["lien_video"]?>" frameborder="0"
                    allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture"
                    allowfullscreen></iframe>

            </div>

            <div class="responsive">
                <h1><?php echo $result["nom_discipline"]?></h1>
                <h1><?php echo $result["prenom_sportif"]?><span><?php echo $result["nom_sportif"]?></span></h1>
                <h1><?php echo $result["date_naissance"]?></h1>
            </div>
        </div>

    </section>

    <section class="bio" id="bio">

        <div class="informations">

            <div class="videopresentation">
                <iframe src="<?php echo $result["lien_video"]?>" frameborder="0"
                    allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture"
                    allowfullscreen></iframe>
                <p>VIDÉO INTERVIEW</p>
            </div>

            <h1><span class="titrebas">À PROPOS DE
                </span><?php echo $result["prenom_sportif"]?>&nbsp;<?php echo $result["nom_sportif"]?></h1>

            <p><?php echo $result["description"]?></p>

            <div class="lespartager">
                <a href="" class="instagram" target="_blank" alt="instagram" title="Page instagram" rel="noopener"></a>
                <a href="" class="facebook" target="_blank" alt="facebook" title="Page facebook" rel="noopener"></a>
                <a href="" class="share" target="_blank" alt="partager" title="Partager la carte du parasportif"
                    rel="noopener"></a>

            </div>

        </div>

        <div class="photogauche" style="background-image: url(<?php echo $result["carte"]?>)"></div>


    </section>

    <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>

    <!--   JS MENU     -->
    <script src="js/menu.js"></script>

    <!--   JS ANIMATION D'APPARITION     -->

    <script src="js/animation.js"></script>
    <script>
        new WOW().init();
    </script>

</body>

</html>
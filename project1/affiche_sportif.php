<?php
$db=new PDO('mysql:host=localhost;dbname=handivity;port=3306;charset=utf8', 'root', '');
?>

<!--
<!DOCTYPE html>
<html lang="fr">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Handisportifs.ves</title>
-->
<!--
    <link href="css/liste.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Roboto:100,300,900&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Roboto+Condensed&display=swap" rel="stylesheet">
    <link href="css/selectric.css" rel="stylesheet">
    <link href="css/slick.css" rel="stylesheet">
    <link href="css/slick-theme.css" rel="stylesheet">
-->
<!--
</head>

<body>
-->

    <section>
        <?php
	//mettre debut requete
	$requete = "SELECT nom_sportif, prenom_sportif, nom_discipline, carte, sportif.id_sportif FROM sportif, sport, rel_sportif_sport WHERE sport.id_sport = rel_sportif_sport.id_sport AND sportif.id_sportif = rel_sportif_sport.id_sportif";

	if(isset($_GET["sport"]) and $_GET["competition"] === ""){
		$requete= $requete." AND rel_sportif_sport.id_sport = sport.id_sport AND sport.id_sport = {$_GET["sport"]}"; //1 case avec 1 valeur de get
	}
	elseif(isset($_GET["competition"]) and $_GET["sport"] === ""){
		$requete="SELECT * FROM competition, sportif, rel_sportif_competition, sport, rel_sportif_sport WHERE competition.id_competition = {$_GET["competition"]} AND rel_sportif_competition.id_competition = {$_GET["competition"]} AND rel_sportif_competition.id_sportif = sportif.id_sportif AND sport.id_sport = rel_sportif_sport.id_sport AND sportif.id_sportif = rel_sportif_sport.id_sportif";; //fin requete avec le 1er get
	}
	elseif(isset($_GET["sport"]) and isset($_GET["competition"])){
		$requete = "SELECT * FROM competition, sportif, rel_sportif_competition, sport, rel_sportif_sport WHERE competition.id_competition = {$_GET["competition"]} AND rel_sportif_competition.id_competition = {$_GET["competition"]} AND rel_sportif_competition.id_sportif = sportif.id_sportif AND sport.id_sport = {$_GET["sport"]} AND sportif.id_sportif = rel_sportif_sport.id_sportif AND rel_sportif_sport.id_sport = {$_GET["sport"]}";// 2 filtres avec varibales, 2 cases avec 2 valeurs de get
	}
	// else{
	// 	$requete = "SELECT nom_sportif, prenom_sportif, nom_discipline, carte FROM sportif, sport, rel_sportif_sport WHERE sport.id_sport = rel_sportif_sport.id_sport AND sportif.id_sportif = rel_sportif_sport.id_sportif";
	// }
	//pour le prepare, faire un bind de sport et de compétition
	//varibale fin requetes
	//faire a la place un prepare  ??? pour la protection
	//<img src=".$sportif["carte"]." alt=''>
	$stmt=$db->query($requete);
	$result=$stmt->fetchall(PDO::FETCH_ASSOC);
	echo"<div class='carousel'>";
	// <h2>".$sportif["nom_sportif"].'&nbsp;'.$sportif["prenom_sportif"]."</h2>
	// <p>".$sportif["nom_discipline"]."</p>
	foreach($result as $sportif)
	{
		echo"
		<a href='sportif/page_sportif.php?id=".$sportif["id_sportif"]."'>
			<img src=".$sportif["carte"]." alt='' class='carte'>
			</a>
			";
		}
		echo"<div>";
	?>
    </section>
   
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<!--    <script src="js/jquery.selectric.min.js"></script>-->
    <script type="text/javascript" src="js/slick.js"></script>
    <script>
        $(document).ready(function() {

            //FOOTER MOBILE

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
<!--
</body>

</html>
-->

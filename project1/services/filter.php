<?php
$db=new PDO('mysql:host=mysql;dbname=handivity;port=3306;charset=utf8', 'root', 'root');
header('Content-type: application/json');

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

$stmt=$db->query($requete);
$result=$stmt->fetchall(PDO::FETCH_ASSOC);


try { 
        // status is true if everything is fine
        exit(json_encode(
            array($result)
        ));
} catch(Exception $e) {
    
    echo json_encode(
        array(
            'status' => false,
            'error' => $e -> getMessage(),
            'error_code' => $e -> getCode()
        )
    );
    exit;
}

?>
<!DOCTYPE html>
<html lang="fr">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>micro url</title>
  <meta name="description" content="facile ou pas ?">
</head>
<body><pre><?php

  // séparer ses identifiants et les protéger, une bonne habitude à prendre
  include "micro_urlconnect.php";
  try {

    // instancie un objet $connexion à partir de la classe PDO
    $connexion = new PDO(DB_DRIVER . ":host=" . DB_HOST . ";dbname=" . DB_NAME . ";charset=" . DB_CHARSET, DB_LOGIN, DB_PASS, DB_OPTIONS);
    //requete selection
    $requete = 'SELECT * FROM `url_table` WHERE `url_description`';
    $prepare = $connexion->prepare($requete);
    $prepare->execute();
    $resultat = $prepare->fetchAll();
    print_r([$requete, $resultat]);
  
    $requete = 'SELECT url_texte
    FROM `assoc_url_mot_clef`
    JOIN `mots` ON id_mots = assoc_mots 
    JOIN `url_table` ON id_url = assoc_url WHERE id_mots = 1';
    $prepare = $connexion->prepare($requete);
    $prepare->execute();
    $resultat = $prepare->fetchAll();
    print_r([$requete, $resultat]);

    //requete insertion
    $requete = "INSERT INTO `url_table` (`url_texte`, `shorcut`, `url_datetime`, `url_description`)
                VALUES (:url_texte, :shorcut, :url_datetime, :url_description);";
    $prepare = $connexion->prepare($requete);
    $prepare->execute(array(
        ":url_texte"=> "essai",
       ":shorcut" => "essai", 
        ":url_datetime" => date('Y-m-d H:i:s'),
        ":url_description" => "essai"
    ));

    $requete = "INSERT INTO `url_table` (`url_texte`, `shorcut`, `url_datetime`, `url_description`)
    VALUES (:url_texte, :shorcut, :url_datetime, :url_description);";
$prepare = $connexion->prepare($requete);
$prepare->execute(array(
":url_texte"=> "https://www.zataz.com/total-energie-direct-obligee-de-stopper-un-jeu-en-ligne-suite-a-une-fuite-de-donnees/",
":shorcut" => "ztz7", 
":url_datetime" => date('Y-m-d H:i:s'),
":url_description" => "L'entreprise Total Energie Direct avait lancé un jeu en ligne. Le concours a dû être stoppé. Il était possible d'accéder aux données des autres joueurs."
));
//requete insertion
$requete = "INSERT INTO `mots` (`mots`)
VALUES (:mots);";
$prepare = $connexion->prepare($requete);
$prepare->execute(array(
 "mots" => "piratage",
));
$requete = "INSERT INTO `assoc_url_mot_clef` (`assoc_url`, `assoc_mots`)
                VALUES (:assoc_url, :assoc_mots);";
    $prepare = $connexion->prepare($requete);
    $prepare->execute(array(
      ":assoc_url" => "6",
      ":assoc_mots" => "1"

    )); 


} catch (PDOException $e) {

    // en cas d'erreur, on récup et on affiche, grâce à notre try/catch
    exit("❌🙀💀 OOPS :\n" . $e->getMessage());

  }

?></pre></body>
</html>
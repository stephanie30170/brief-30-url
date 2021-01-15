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
// Requête de modification
$requete = "UPDATE `url_table`
            SET `url_texte` = :url_texte
            WHERE `id` = :id";
$prepare = $connexion->prepare($requete);
$prepare->execute(array(
    ":id"   => 2,
    ":url_texte" => "🤠 youpi"
));

//Requête de suppression
$requete = "DELETE FROM `url_table`
            WHERE ((`id` = :id));";
    $prepare = $connexion->prepare($requete);
    $prepare->execute(array(
        ":id"   => 4
)); 
$resultat = $prepare->rowCount();
print_r([$requete, $resultat]); // debug & vérification






} catch (PDOException $e) {

    // en cas d'erreur, on récup et on affiche, grâce à notre try/catch
    exit("❌🙀💀 OOPS :\n" . $e->getMessage());

  }

?></pre></body>
</html>
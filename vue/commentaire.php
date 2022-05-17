<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <?php 

    // ETAPE A FAIRE RECUP L'ID à partir de la dernière partie de l'URL ou on se trouve


    //on met l'ID dans une variable
        if(isset($_GET['id']) AND !empty($_GET['id'])){
            $getid=htmlspecialchars($_GET['id']);
        }
        

    // on vérifie pour être sûr que tous les champs ont été complétés. Ca permet de protéger nos champs de personnes mal intentionnées.
    //htmlspecialchars -> protection supplémentaire
        if(isset($_POST['submit_commentaire'])){
            if(isset($_POST['pseudo'],$_POST['commentaire']) AND !empty($_POST['pseudo']) AND !empty($_POST['commentaire'])){
                $pseudo=htmlspecialchars($_POST['pseudo']);
                $commentaire=htmlspecialchars($_POST['commentaire']);

                if(strlen($pseudo) < 30){
                    // NECESSITE DE SE CONNECTER A conncexion.php
                    $ins = $cnx->prepare('INSERT INTO rfa_commentaires (pseudo, commentaire, id_article)VALUES (?,?,?)');

                }else{
                    $c_erreur = "Le pseudo doit faire moins de 25 caractères";
                }

            }
            else{
                $c_erreur = "Tous les champs doivent être complétés";
            }
        }
    
    ?>
    <aside>
        <h2> Espace Commentaire </h2>
        <!--<form action="/router.php" method="POST">-->
        <form  method="POST">
            <div>
                <label for="pseudo">pseudo&nbsp;:</label><br>
                <input type="text" name="pseudo" placeholder="votre pseudo" /><br>
            </div>
            <div>
                <label for="mail">Commentaire&nbsp;:</label><br>
                <textarea name="commentaire" placeholder="Votre commentaire..."></textarea><br>
            </div>
            <div>
                <input type="submit" value="Poster" name="submit_commentaire"/>
            </div>
        </form>
    </aside>
  
    <?php 
    if(isset($c_erreur)){ echo "Erreur: ".$c_erreur; }
    ?>
</body>
</html>
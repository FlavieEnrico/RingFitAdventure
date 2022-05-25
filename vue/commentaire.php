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
    require_once('../connexion.php');
    //recup l'etat de la connexion
    /*
    function connection() {
        $cnx = new PDO('mysql:host=localhost;dbname=flavie_enrico_db', 'root', '');
        if(!$cnx) {
            die('Connection failed');
        }
        return $cnx;
        
    }*/
    $cnx = connection();

    // ETAPE A FAIRE RECUP L'ID à partir de la dernière partie de l'URL ou on se trouve

    $page = explode('/',$_SERVER['REQUEST_URI']);
	// to handle the query as an array, each element containing a part of the global URL
	$method = $_SERVER['REQUEST_METHOD'];
    $length=count($page)-1;
    $getid=$page[$length];
    
    //pour l'idée faire quelque chose comme : id_commentaire1 correspond à rfa_exercices.id_article et que id_commentaire2 correspond à rfa_ennemis.id_article PAR EXEMPLE


    //on met l'ID dans une variable
   // if(isset($_GET['id']) AND !empty($_GET['id'])){
        //$getid=htmlspecialchars($_GET['id']);

        

        // on vérifie pour être sûr que tous les champs ont été complétés. Ca permet de protéger nos champs de personnes mal intentionnées.
        //htmlspecialchars -> protection supplémentaire
        if(isset($_POST['submit_commentaire'])){
            if(isset($_POST['pseudo'],$_POST['commentaire']) AND !empty($_POST['pseudo']) AND !empty($_POST['commentaire'])){
                $pseudo=htmlspecialchars($_POST['pseudo']);
                $commentaire=htmlspecialchars($_POST['commentaire']);

                if(strlen($pseudo) < 30){
                    // NECESSITE DE SE CONNECTER A connexion.php
                    $ins = $cnx->prepare('INSERT INTO rfa_commentaires (pseudo, commentaire, id_article, date_time_post)VALUES (?,?,?, NOW()');
                    $ins->execute(array($pseudo,$commentaire,$getid));
                    $c_msg = "Le commentaire a été posté.";
                }else{
                    $c_msg = "Erreur: Le pseudo doit faire moins de 30 caractères";
                }

            }
            else{
                $c_msg = "Erreur: Tous les champs doivent être complétés";
            }
        }
        // On recupère les commentaires

        //FAIRE UNE TABLE ASSICIATIVE ENTRE COMMENTAIRE ET EXERCICE ?
        $commentaires = $cnx->prepare('SELECT * FROM rfa_exercices WHERE id_article = ? ORDER BY id DESC');
        $commentaires->execute(array($getid));
   // }
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
    
    <div class="messagePHP">
        <?php 
        if(isset($c_msg)){ echo $c_msg; };
        ?>
    </div>
    <section class="commentaires">
        <?php 
        while($c = $commentaires->fetch()){
        ?>
           <span class="pseudoCom"> <strong><?= $c['pseudo'] ?>: </strong> </span>
           <span class="unCommentaire"> <?= $c['commentaire']; ?> </span> <br>
        <?php
        }
        ?>
    </section>
</body>
</html>
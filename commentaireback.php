
<?php 
require_once('../connexion.php');
//recup l'etat de la connexion

$cnx = connection();

// ETAPE A FAIRE RECUP L'ID à partir de la dernière partie de l'URL ou on se trouve

$page = explode('/',$_SERVER['REQUEST_URI']);
$method = $_SERVER['REQUEST_METHOD'];
$length=count($page)-1;
$getid=$page[$length];

//pour l'idée faire quelque chose comme : 
//id_commentaire1 correspond à rfa_exercices.id_article et que id_commentaire2 correspond à rfa_ennemis.id_article PAR EXEMPLE


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
                $ins = $cnx->prepare('INSERT INTO rfa_commentaires (pseudo, commentaire, id_article, date_time_post)VALUES (?,?,?,?');
                $date= date("Y-m-d H:i:s");
                $ins->execute(array($pseudo,$commentaire,$getid, $date));
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

    
    $commentaires = $cnx->prepare('SELECT * FROM rfa_commentaires WHERE id_article = ? ORDER BY id DESC');
    $commentaires->execute(array($getid));
// }
// NE PAS OUBLIER LA DATE
?>

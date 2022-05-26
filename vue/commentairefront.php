<?php require_once('../commentaireback.php'); ?>
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


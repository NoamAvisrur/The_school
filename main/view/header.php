<?php
 $name = $_SESSION["name"];
 $role = $_SESSION["role"];
 $image = '../uploads/' . $_SESSION["image"];
 ?>
<header>
    <nav>
        <img src="../img/logo.png" alt="supermarket logo"/>
        <a href="http://localhost/TheSchool/main/index.php?subject=school">School</a>
        <?php
        if ($role !== 'sales'){
            echo '<span>|</span>
            <a href="http://localhost/TheSchool/main/index.php?subject=admin">Administration</a>';
        }
        ?>
    </nav>
    <div class="user_info">
        <div class="user_name">
            <span><?php echo $name . "," ?></span>
            <span><?php echo $role ?></span>
            <a href="http://localhost/TheSchool/api.php?action=logout">Log out</a>
        </div>
        <div class="user_image">
            <img src= <?php echo $image ?> alt="user_image"/>
        </div>
    </div>
</header>

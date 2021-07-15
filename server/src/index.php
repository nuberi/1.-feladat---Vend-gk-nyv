<!DOCTYPE html>
<html lang="hu">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css">
    <title>Vendégkönyv</title>
</head>
<body>
    <div id="keret">
        <h1>Vendégkönyv</h1>
        <h2>Bejegyzések</h2>
        <button id="ujBejegyzes">Bejegyzés írása</button>
        <?php
            // Bejegyzések megjeenítése adatbázisból
            
        ?>
    </div>
    <div id="ablakHatter">
        <div id="ablak">
            <h3>Bejegyzés írása</h3>
            <form action="bejegyzesrogzit.php" method="post" id="bejegyzesUrlap">
                <label>Becenév:</label>
                <input type="text" name="becenev" id="becenev">
                <label>Bejegyzés:</label>
                <textarea name="bejegyzes" id="bejegyzes" rows="4"></textarea>
                <button type="reset" id="megseGomb">Mégse</button>
                <button type="submit">Elküldés</button>
            </form>
        </div>
    </div>
    <script src="main.js"></script>
</body>
</html>
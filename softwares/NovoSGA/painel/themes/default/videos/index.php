<!DOCTYPE html>
<html>
    <head>
        <title></title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" type="text/css" href="../style.css" />
<!--        <style type="text/css">
            html,
            body {
                height: 100%;
                width: 100%;
            }
            .container {
                display: flex;
                height: 98%;
                width: 99%;
            }
        </style>-->
    </head>
    <body>
        <video id="tvOlinda" autoplay width="100%" height="100%" muted 
               style="background:black">
            <?php
            $diretorio = "arquivos/";
            $listaArquivos = scandir($diretorio);
            $listaVideos = "";
            if ($listaArquivos != false) {
                $primeiro = true;
                foreach ($listaArquivos as $nomeArquivo) {
                    if (strpos($nomeArquivo, '.mp4') !== false) {
                        if ($primeiro) {
                            $primeiro = false;
                            ?>
                            <source class="<?php echo 'active' ?>" src="videos/<?php echo $nomeArquivo; ?>" type="video/mp4">
                            <?php
                        } else {
                            ?>
                            <source class="" src="videos/<?php echo $nomeArquivo; ?>" type="video/mp4">
                            <?php
                        }
                    }
                }
            }
            ?>
        </video> 
        <script src="script.js"></script>
    </body>

</html>

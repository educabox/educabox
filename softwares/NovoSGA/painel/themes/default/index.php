<div id="layout-content">
    <?php
    /*
     * ADAPTADO POR EDSON MORETTI -> www.edsonmoretti.com.br | contato@edsonmoretti.com.br
     * Adaptado por Lucas Pedro -> https://github.com/lucasplcorrea
     * Funciona corretamente no Chrome/Chromium
     * Em caso de uso do m3u, verificar se a extensão m3u permanece ativa e funcionando, do contrário substituir o código da extensão do chrome
     * Para uso no firefox, verificar a possibilidade de integração com extensões do firefox
     */
    // Get the contents of the JSON file
    if (!file_exists("config.json")) {
        echo 'Arquivo config.json n�o encontrado';
        return;
    }
    $c = file_get_contents("config.json");
// Convert to array
    $config = json_decode($c, true);
    $tipo = $config['tipo'];
    $dadoDoVideo = $config['dadoDoVideo'];
    switch ($tipo) {
        case 'm3u':
            ?>
            <iframe id="slides-container" src="chrome-extension://hahkjjkedonglpienpfiganogikkkoii/player.html#<?php echo $dadoDoVideo; ?>" frameborder="0"></iframe>
            <?php
            break;
        case 'youtube':
            ?>
            <!-- <iframe width="896" height="575" src="https://www.youtube.com/embed/ABVQXgr2LW4?&autoplay=1" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe> -->
            <?php
            break;
        case 'local':
            ?>
            <iframe id="slides-container"  scrolling="no" src="themes/default/videos/index.php" frameborder="0" ></iframe>
            <?php
            break;
    }
    ?>

    <div id="barra-lateral" class="vertical">
        <div id="senha-container">
            <div id="mensagem">
                <span>{{ ultima.mensagem }}</span>
            </div>
            <div class="row">
                <div>
                    <div id="senha" class="blink">
                        <span>{{ ultima.texto }}</span>
                        <hr>
                    </div>
                </div>
                <div>
                    <div id="local" class="local">
                        <!-- <span>{{ ultima.local }}</span> -->
                        <!-- <span>Guichê</span> -->
                    </div>
                    <div id="local-numero" class="numero-local">
                        <span>Atendente {{ ultima.numeroLocal }}</span>
                        <hr>
                    </div>
                </div>
            </div>
        </div>
        <div id="separador"></div>
        <div id="relogio-container">
            <iframe id="relogio" src="themes/default/relogio/index.htm" frameborder="0" scrolling="no" ></iframe>
        </div>

    </div>

    <div id="historico">
        <hr>
        <div class="senhas">
            <div class="col-sm-3 senha-chamada {{ senha.styleClass }} vertical" ng-repeat="senha in historico | limitTo: 4">
                <div class="senha">
                    <span>{{ senha.texto }}</span>
                </div>
                <div class="local">
                    <!-- <span>{{ senha.local }}: {{ senha.numeroLocal }}</span> -->
                    <span>Atendente {{ senha.numeroLocal }}</span>
                </div>
            </div>
        </div>
    </div>
</div>

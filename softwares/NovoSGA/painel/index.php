<!DOCTYPE html>
<html ng-app="app">

<head>
    <meta charset="utf-8" />
    <title data-i18n="PainelWeb.title">Painel Web | Novo SGA</title>
    <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css" />
    <link rel="stylesheet" type="text/css" href="css/bootstrap-theme.min.css" />
    <link rel="stylesheet" type="text/css" href="css/style.css" />
    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
        <script src="js/html5shiv.js"></script>
        <script src="js/respond.min.js"></script>
        <![endif]-->
    <script type="text/javascript" src="js/angular.min.js"></script>
</head>

<body ng-controller="PainelCtrl" ng-init="init()">
    <!-- menu retratil -->
    <div id="menu">
        <ul>
            <li>
                <a href="#config" data-toggle="modal">
                    <span class="glyphicon glyphicon-cog"></span>&nbsp;
                    <span data-i18n="PainelWeb.configuration">Configuração</span>
                </a>
            </li>
            <li>
                <a href="javascript:void(0)" onclick="PainelWeb.fullscreen()">
                    <span class="glyphicon glyphicon-fullscreen"></span>&nbsp;
                    <span data-i18n="PainelWeb.fullscreen">Fullscreen</span>
                </a>
            </li>
        </ul>
    </div>

    <!-- theme -->
    <link rel="stylesheet" type="text/css" ng-href="themes/{{ config.theme }}/style.css" />

    <div id="layout" class="{{ ultima.styleClass }}">
        <div ng-include="'themes/' + config.theme + '/index.php'" onload="themeResources()"></div>
    </div>

    <!-- config modal -->
    <div id="config" class="modal fade">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                    <h4 class="modal-title" data-i18n="PainelWeb.configuration">Configuração</h4>
                </div>
                <div class="modal-body">
                    <ul class="nav nav-tabs">
                        <li class="active"><a href="#general" data-toggle="tab"
                                data-i18n="PainelWeb.general">General</a></li>
                        <li><a href="#servicos" data-toggle="tab" data-i18n="PainelWeb.services">Serviços</a></li>
                        <li><a href="#som" data-toggle="tab" data-i18n="PainelWeb.sounds">Som</a></li>
                    </ul>
                    <div class="tab-content">
                        <div id="general" class="tab-pane active">
                            <div class="form-group">
                                <label for="theme">Tema</label>
                                <input id="theme" type="text" class="form-control" ng-model="config.theme">
                            </div>
                            <div class="form-group">
                                <label for="idioma" data-i18n="PainelWeb.language">Idioma</label>
                                <select id="idioma" class="form-control" ng-model="config.lang" ng-change="changeLang()"
                                    ng-selected="config.lang">
                                    <option value="pt">Português</option>
                                    <option value="en">English</option>
                                    <option value="es">Español</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label for="url" data-i18n="PainelWeb.URL">URL</label>
                                <input id="url" type="text" class="form-control" ng-model="config.url"
                                    ng-blur="changeUrl()" placeholder="http://"
                                    value="<?php echo $_ENV["SERVER_URL"] ?>">
                            </div>
                            <div class="form-group">
                                <label for="unidades" data-i18n="PainelWeb.units">Unidades</label>
                                <select id="unidades" class="form-control" ng-model="config.unidade"
                                    ng-change="changeUnidade()" ng-options="u.nome for u in unidades track by u.id">
                                    <option value="" data-i18n="PainelWeb.select">Seleccione</option>
                                </select>
                            </div>
                        </div>
                        <div id="servicos" class="tab-pane">
                            <div class="form-group">
                                <div class="checkbox" ng-repeat="servico in servicosUnidade">
                                    <label>
                                        <input type="checkbox" ng-checked="indexServico(servico) > -1"
                                            ng-click="checkServico(servico)"> {{ servico.nome }}
                                    </label>
                                </div>
                            </div>
                        </div>
                        <div id="som" class="tab-pane">
                            <div class="form-group">
                                <label for="alert-file" data-i18n="PainelWeb.alert">Alerta</label>
                                <div class="input-group">
                                    <select id="alert-file" class="form-control" ng-model="config.alert">
                                        <option value="ekiga-vm.wav">Ekiga</option>
                                        <option value="doorbell-bingbong.wav">Doorbell bingbong</option>
                                        <option value="toydoorbell.wav">Toy doorbell</option>
                                        <option value="airport-bingbong.wav">Airport bingbong</option>
                                        <option value="ding-dong.wav">ding-dong</option>
                                        <option value="infobleep.wav">Info bleep</option>
                                        <option value="quito-mariscal-sucre.wav">Quito mariscal sucre</option>
                                    </select>
                                    <span class="input-group-btn">
                                        <button class="btn btn-default" ng-click="testAlert()">
                                            <span class="glyphicon glyphicon-play"></span>
                                        </button>
                                    </span>
                                </div>
                            </div>
                            <div>
                                <label data-i18n="PainelWeb.vocalize">Vocalizar</label>
                                <div class="checkbox">
                                    <label>
                                        <input type="checkbox" value="1" ng-model="config.vocalizar">
                                        <span data-i18n="PainelWeb.active">Ativo</span>
                                    </label>
                                </div>
                                <div class="checkbox">
                                    <label>
                                        <input type="checkbox" value="1" class="vocalizar"
                                            ng-model="config.vocalizarZero" ng-disabled="config.vocalizar == false">
                                        <span data-i18n="PainelWeb.zero_left">Zero a esquerda</span>
                                    </label>
                                </div>
                                <div class="checkbox">
                                    <label>
                                        <input type="checkbox" value="1" class="vocalizar"
                                            ng-model="config.vocalizarLocal" ng-disabled="config.vocalizar == false">
                                        <span data-i18n="PainelWeb.local">Local de atendimento</span>
                                    </label>
                                </div>
                                <div class="form-group">
                                    <code data-i18n="PainelWeb.key_sample">Senha: A001 / Guichê: 1</code>
                                    <button class="btn btn-default vocalizar" ng-click="testSpeech()"
                                        ng-disabled="config.vocalizar == false">
                                        <span class="glyphicon glyphicon-play"></span>
                                    </button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal"
                        data-i18n="PainelWeb.close">Fechar</button>
                    <button id="config-save" type="button" class="btn btn-primary" ng-click="save()"
                        data-i18n="PainelWeb.save">Salvar</button>
                </div>
            </div>
        </div>
    </div>

    <!-- error modal
        <div id="modalSenhaAtual" class="modal fade">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        <h4 class="modal-title" data-i18n="Senha atual">Erro</h4>
                    </div>
                    <div class="modal-body">
                        <p><span id="senhaAtual"></span></p>
                    </div>
                </div>
            </div>
        </div>
          <div id="error" class="modal fade">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        <h4 class="modal-title" data-i18n="PainelWeb.error.title">Erro</h4>
                    </div>
                    <div class="modal-body">
                        <p></p>
                    </div>
                </div>
            </div>
        </div> -->

    <!--
            Sounds by http://www.freesound.org
            http://www.fromtexttospeech.com
        -->
    <audio id="alert"></audio>

    <script type="text/javascript" src="js/jquery.js"></script>
    <script type="text/javascript" src="js/bootstrap.min.js"></script>
    <script type="text/javascript" src="js/i18next.min.js"></script>
    <script type="text/javascript" src="js/buzz.js"></script>
    <script type="text/javascript" src="js/painel.js"></script>
    <script type="text/javascript" src="js/painel-web.js"></script>
</body>

</html>
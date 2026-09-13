/**
 * Novo SGA Painel Web
 * @author Rogerio Lino <rogeriolino@gmail.com>
 */

angular.module('app', [])
    .controller('PainelCtrl', function($scope, $http) {
        "use strict";

        $scope.ultima = {
            texto: 'A000',
            local: 'Guichê',
            numeroLocal: 0,
            mensagem: 'Atendimento',
            styleClass: 'inactive'
        };

		$scope.defaultLang = 'pt-BR';
        $scope.senhas = [];
        $scope.historico = [];
        $scope.servicosUnidade = [];
        $scope.ultimoId = 0;

        $scope.config = {
            url: '',
            theme: 'default',
            alert: 'ekiga-vm.wav',
            vocalizar: false,
            vocalizarZero: false,
            vocalizarLocal: false,
            lang: (window.navigator.userLanguage || window.navigator.language || $scope.defaultLang),
            unidade: {},
            servicos: []
        };

        $scope.changeUrl = function() {
            $scope.unidades = [];
            $scope.servicosUnidade = [];
            $scope.config.unidade = {};
            // remove slash on end
            if($scope.config.url.substr(-1) === '/') {
                $scope.config.url = $scope.config.url.substr(0, $scope.config.url.length - 1);
            }
            $.painel().unidades($scope.config.url, {
                error: function() {
                    $scope.$apply(function() {
                        $scope.config.url = '';
                    });
                    $('#error')
                            .modal('show')
                            .find('.modal-body>p')
                            .html(i18n.t('PainelWeb.error.invalid_url'))
                    ;
                }
            });
        };

        $scope.changeUnidade = function(){
            if ($scope.config.unidade !== null && $scope.config.unidade.id > 0) {
                $.painel().servicos($scope.config.unidade.id);
            }
        };

        $scope.changeLang = function() {
            i18n.setLng($scope.config.lang, function(t) {
                $("html").i18n();
            });
        };

        $scope.checkServico = function(servico) {
            var idx = $scope.indexServico(servico);
            if (idx > -1) {
              $scope.config.servicos.splice(idx, 1);
            } else {
              $scope.config.servicos.push(servico);
            }
        };

        $scope.indexServico = function(servico) {
            var idx = $scope.config.servicos.length - 1;
            for (; idx >= 0; idx--) {
                var s = $scope.config.servicos[idx];
                if (s === servico.id || (s.id && s.id === servico.id)) {
                    break;
                }
            }
            return idx;
        };

        $scope.save = function() {
            PainelWeb.Config.save($scope);
            $.painel({
                url: $scope.config.url,
                unidade: $scope.config.unidade.id,
                servicos: $scope.servicosIds()
            });
            if (!PainelWeb.started) {
                PainelWeb.started = true;
                $.painel().start();
            }
            $('#config').modal('hide');
            PainelWeb.trigger('save');
        };

        $scope.chamar = function() {
            if (PainelWeb.started && $scope.senhas.length > 0) {
                var senha = $scope.senhas.shift();

                PainelWeb.trigger('callstart');
                // som e animacao
                PainelWeb.Alert.play($scope.config.alert, !$scope.config.vocalizar);
                if ($scope.config.vocalizar) {
                    PainelWeb.Speech.play(senha, speechParams());
                }
                PainelWeb.blink($('.blink'));
                // evita adicionar ao historico senha rechamada
                if ($scope.ultima.texto !== 'A000' && $scope.ultima.texto !== senha.texto) {
                    // removendo duplicada
                    $scope.historico.remove($scope.ultima);
                    // guardando a senha anterior
                    $scope.historico.unshift($scope.ultima);
                    // guardando historico das 10 ultimas senhas
                    if ($scope.historico.length > 10) {
                        $scope.historico.pop();
                    }
                }
                $scope.ultima = senha;
            }
        };

        $scope.init = function() {
            // se nao ha configuracao salva
            if (!PainelWeb.Config.load($scope)) {
                $http.get('config.json')
                        // tente o arquivo config.json
                        .success(function(config) {
                            if (config.unidade && typeof(config.unidade) !== 'object') {
                                config.unidade = { id: parseInt(config.unidade) };
                            }
                            $scope.config = config;
                            PainelWeb.Config.save($scope);
                        })
                        // caso contrario (arquivo nao existe) abra a modal
                        .error(function() {
                            $('#config').modal('show');
                        })
                        .finally(function() {
                            $scope.run();
                        })
                ;
            } else {
                $scope.run();
            }
        };

        $scope.run = function() {
            PainelWeb.started = ($scope.config.unidade.id > 0 && $scope.config.servicos.length > 0);
            $.i18n.init({
				fallbackLng: $scope.defaultLang,
				useLocalStorage: true,
				localStorageExpirationTime: 86400000, // in ms, default 1 week
                lng: $scope.config.lang,
                resGetPath: 'locales/__lng__.json'
                }, function(t) { $("html").i18n();}
            );

            $.painel({
                url: $scope.config.url,
                unidade: ($scope.config.unidade.id > 0) ? $scope.config.unidade.id : 0,
                servicos: $scope.servicosIds()
            })
            .on('unidades', function(unidades) {
                $scope.$apply(function() {
                    $scope.unidades = unidades;
                });
            })
            .on('servicos', function(servicos) {
                $scope.$apply(function() {
                    $scope.servicosUnidade = servicos;
                });
            })
            .on('senhas', function(senhas) {
                $scope.$apply(function() {
                    if (PainelWeb.started && senhas && senhas.length > 0) {
                        // as senhas estao em ordem decrescente
                        var primeiro = $scope.ultimoId === 0;
                        for (var i = senhas.length - 1; i >= 0; i--) {
                            var senha = senhas[i];
                            // senha.texto = $.painel().format(senha);
                            senha.texto = senha.nomeCliente.toUpperCase() || $.painel().format(senha)
                            senha.styleClass = (senha.peso > 0) ? 'prioridade' : 'normal';
                            if (senha.id > $scope.ultimoId) {
                                // se na primeira exibição tiver mais de um, joga no historico e chama só a última
                                if (primeiro && i > 0) {
                                    // remove duplicada (em caso de rechamada)
                                    $scope.historico.remove(senha);
                                    $scope.historico.unshift(senha);
                                } else {
                                    // remove duplicada (em caso de rechamada)
                                    $scope.senhas.remove(senha);
                                    $scope.senhas.push(senha);
                                }
                                $scope.ultimoId = senha.id;
                            }
                        }
                        $scope.historico.remove(senhas[0]);
                        if (!PainelWeb.Speech.queue.playing) {
                            $scope.chamar();
                        }
                    }
                });
            });
            $('#config').on('shown.bs.modal hidden.bs.modal', function(e) {
                if (e.type === 'shown') {
                    // para de chamar quando abre a janela de configuracao
                    PainelWeb.started = false;
                } else if (e.type === 'hidden') {
                    PainelWeb.started = ($scope.config.unidade.id > 0 && $scope.config.servicos.length > 0);
                }
            });
            // ocultando e adicionando animacao ao menu
            setTimeout(function() {
                $('#menu').fadeTo("slow", 0, function() {
                    $('#menu').hover(
                        function() {
                            $('#menu').fadeTo("fast", 1);
                        },
                        function() {
                            $('#menu').fadeTo("slow", 0);
                        }
                    );
                });
            }, 3000);
        }

        $scope.themeResources = function() {
            var layoutDir = 'themes/' + $scope.config.theme;
            var head = document.getElementsByTagName('head')[0];
            var script = document.createElement('script');
            script.type= 'text/javascript';
            script.onload = function() {
                // loading layout manifest
                $.ajax({
                    url: layoutDir + '/manifest.json',
                    dataType: 'json',
                    cache: false,
                    success: function(manifest) {
                        if (manifest && manifest.events) {
                            var fn = window[manifest.events.onload];
                            if (fn && typeof(fn) === 'function') {
                                fn(manifest.config || {});
                            }
                        }
                    }
                });
            };
            script.src = layoutDir + '/script.js';
            head.appendChild(script);
            $("#layout").i18n();
        };

        $scope.testSpeech = function() {
            PainelWeb.Speech.play(
                {
                    mensagem: i18n.t('PainelWeb.test_priority_normal') || 'Convencional',
                    sigla: 'A',
                    numero: 1,
                    length: 3,
                    local: 'test-local',
                    numeroLocal: '1',
                },
                speechParams()
            );
        };

        $scope.testAlert = function() {
            PainelWeb.Alert.play($scope.config.alert, true);
        };

        $scope.servicosIds = function() {
            return $scope.config.servicos.map(function(s) {
                return (s.id) ? s.id : parseInt(s);
            });
        }

        function speechParams() {
            return {
                vocalizar: $scope.config.vocalizar,
                zeros: $scope.config.vocalizarZero,
                local: $scope.config.vocalizarLocal,
                lang: $scope.config.lang
            };
        }

    })
    .filter('pad', function() {
        return function (input, length) {
            return new Array(length - input.toString().length + 1).join('0') + input;
        };
    })
;



var PainelWeb = {

    _events: {},

    on: function(evt, fn) {
        if (typeof(fn) === 'function') {
            PainelWeb._events[evt] = PainelWeb._events[evt] || [];
            PainelWeb._events[evt].push(fn);
        }
    },

    trigger: function(evt) {
        var evts = PainelWeb._events[evt] || [];
        for (var i = 0; i < evts.length; i++) {
            evts[i]();
        }
    },

    blink: function(elem) {
        if (!elem.css('visibility')) {
            elem.css('visibility', 'visible');
        }
        setTimeout(function() {
            var count = elem.data('bcount') || 0;
            elem.css('visibility', elem.css('visibility') === 'visible' ? 'hidden' : 'visible');
            if (count < 5) {
                elem.data('bcount', count + 1);
                PainelWeb.blink(elem);
            } else {
                elem.data('bcount', 0);
            }
        }, 200);
    },

    Alert: {

        play: function(filename, immediate) {
            var audio = document.getElementById('alert');
            audio.src = 'media/alert/' + filename;
            audio.play();
            $(audio).off('ended');
            if (immediate) {
                $(audio).on('ended', function() {
                    PainelWeb.trigger('callend');
                });
            }
        }
    },

    Speech: {
        queue: [],
        playing: false,

        play: function(senha, params) {
            params = params || {};
            if (params.vocalizar) {
                // "senha"
                this.queue.push({name: "senha", lang: params.lang});
                // sigla + numero
                var text = (params.zeros) ? $.painel().format(senha) : senha.sigla + senha.numero;
		// Vocaliza Dezena
		this.queue.push({name:senha.sigla.toLowerCase(), lang: params.lang});
		this.queue.push({name:senha.numero, lang: params.lang});
                //for (var i = 0; i < text.length; i++) {
               	 // this.queue.push({name: text.charAt(i).toLowerCase(), lang: params.lang});
//                }
                if (params.local) {
                    // nome do local
                    this.queue.push({name: senha.local.toLowerCase(), lang: params.lang});
                    // numero do local
                    var num = senha.numeroLocal + '';
					// Vocaliza Dezena no local
                    this.queue.push({name: num.toLowerCase(), lang: params.lang});
                   // for (var i = 0; i < num.length; i++) {
                       // this.queue.push({name: num.charAt(i).toLowerCase(), lang: params.lang});
                    //}
                }
            }
            if (!this.playing) {
                this.processQueue();
            }
        },

        playFile: function(filename) {
            var self = this;
            var bz = new buzz.sound(filename, {
                formats: ["mp3"],
                autoplay: true
            });

            var end = function() {
                self.processQueue();
            };

            bz.bind("ended", end);

            bz.bind("error", end);
        },

        processQueue: function() {
            if (this.playing && this.queue.length === 0) {
                this.playing = false;
                PainelWeb.trigger('callend');
                return;
            }
            var current = this.queue.shift();
            if (current) {
                this.playing = true;
                var filename = "media/voice/" + current.lang + "/" + current.name;
                this.playFile(filename);
            }
        }
    },

    Storage: {

        prefix: 'painelweb.',

        set: function(name, value) {
            name = this.prefix + name;
            if (localStorage) {
                localStorage.setItem(name, value);
            } else {
                // cookie
                var expires = "";
                document.cookie = name + "=" + value + expires + "; path=/";
            }
        },

        get: function(name) {
            name = this.prefix + name;
            if (localStorage) {
                return localStorage.getItem(name);
            } else {
                // cookie
                var nameEQ = name + "=";
                var ca = document.cookie.split(';');
                for(var i = 0; i < ca.length; i++) {
                    var c = ca[i];
                    while (c.charAt(0) === ' ') {
                        c = c.substring(1,c.length);
                    }
                    if (c.indexOf(nameEQ) === 0) {
                        return c.substring(nameEQ.length, c.length);
                    }
                }
            }
            return null;
        }

    },

    Config: {

        load: function($scope) {
            if (PainelWeb.Storage.get('theme')) {
                $scope.config.theme = PainelWeb.Storage.get('theme');
                $scope.config.url = PainelWeb.Storage.get('url');
                $scope.config.unidade = JSON.parse(PainelWeb.Storage.get('unidade'));
                $scope.config.servicos = JSON.parse(PainelWeb.Storage.get('servicos'));
                $scope.config.lang = PainelWeb.Storage.get('lang');
                $scope.config.alert = PainelWeb.Storage.get('alert');
                $scope.config.vocalizar = PainelWeb.Storage.get('vocalizar') === '1';
                $scope.config.vocalizarZero = PainelWeb.Storage.get('vocalizarZero') === '1';
                $scope.config.vocalizarLocal = PainelWeb.Storage.get('vocalizarLocal') === '1';
                return true;
            }
            return false;
        },

        save: function($scope) {
            // salvando valores
            PainelWeb.Storage.set('theme', $scope.config.theme);
            PainelWeb.Storage.set('url', $scope.config.url);
            PainelWeb.Storage.set('unidade', JSON.stringify($scope.config.unidade));
            PainelWeb.Storage.set('servicos', JSON.stringify($scope.servicosIds()));
            PainelWeb.Storage.set('alert', $scope.config.alert);
            PainelWeb.Storage.set('vocalizar', $scope.config.vocalizar ? '1' : '0');
            PainelWeb.Storage.set('vocalizarZero', $scope.config.vocalizarZero ? '1' : '0');
            PainelWeb.Storage.set('vocalizarLocal', $scope.config.vocalizarLocal ? '1' : '0');
            PainelWeb.Storage.set('lang', $scope.config.lang);
        }

    },

    fullscreen: function() {
        var elem = document.body;
        if (elem.requestFullScreen) {
            elem.requestFullScreen();
        }
        if (elem.webkitRequestFullScreen) {
            elem.webkitRequestFullScreen();
        }
        if (elem.mozRequestFullScreen) {
            elem.mozRequestFullScreen();
        }
        if (elem.msRequestFullScreen) {
            elem.msRequestFullScreen();
        }
    }

};

Array.prototype.contains = function(elem) {
    for (var i = 0; i < this.length; i++) {
        if (
            // se for senha
            (elem.sigla && this[i].sigla === elem.sigla && this[i].numero === elem.numero)
            ||
            // qualquer outro objeto
            (this[i] == elem)
            ) {
            return true;
        }
    }
    return false;
};

Array.prototype.remove = function(elem) {
    for (var i = 0; i < this.length; i++) {
        if (
            // se for senha
            (elem.sigla && this[i].sigla === elem.sigla && this[i].numero === elem.numero)
            ||
            // qualquer outro objeto
            (this[i] == elem)
            ) {
            this.splice(i, 1);
        }
    }
};


$(function() {
    $('#error').on('show.bs.modal', function () {
        $.painel().pause();
        $('#config :input').prop('disabled', true);
    });

    $('#error').on('hide.bs.modal', function () {
        $.painel().start();
        $('#config :input').prop('disabled', false);
    });
});

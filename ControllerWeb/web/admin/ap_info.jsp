<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
        <title>Controlador Scifi - Visualizar Pontos de Acesso</title>
        <link href="../css/estilo.css" rel="stylesheet" type="text/css" />        
        <script type="text/javascript" src="../javascript/jquery-1.8.3.min.js"></script>
        <link rel="stylesheet" href="../css/thickbox.css" type="text/css" media="screen" />
        <link rel="stylesheet" href="../css/jquery.dataTables.css" type="text/css" media="screen" />
        <script language="javascript" charset="UTF-8" type="text/javascript" src="../javascript/thickbox.js"></script>
        <script type="text/javascript" charset="UTF-8" src="../javascript/preloadImages.js"></script>
        <script type="text/javascript" charset="UTF-8" src="../javascript/preloadImages_apInfo.js"></script>
        <script language="javascript" type="text/javascript"  charset="UTF-8" src="../javascript/jquery.dataTables.min.js"></script>
        <script type="text/javascript" charset="UTF-8" src="../javascript/utils.js"></script>
        <script type="text/javascript" charset="UTF-8" src="../javascript/apInfo.js"></script>
        <script type="text/javascript" charset="UTF-8" src="../javascript/commander.js"></script>

        <script type="text/javascript">    
            ShowExecutionStatus();
        </script>
    </head>
    <body id="apInfo">
        <div id="tudo">


            <div id="topo">

                <div id="logo"><ul><li><a href="admin.jsf" title="Voltar � p�gina inicial"></a></li></ul></div>

                <div id="figuraTopo"></div>

            </div>

            <div id="barraTopo"></div>

            <div id="coluna_esq">

                <div id="menuTopo">MENU</div>

                <div class="barraMenu"></div>

                <div id="menu">
                    <ul>
                        <li class="APs"><a href="#" title="Pontos de Acesso"></a>
                            <ul>
                                <li class="adicionarAP"><a href="new_ap.jsf" title="Adicionar Ponto de Acesso"></a></li>
                                <li class="editarAPs"><a href="edit_ap_info.jsf" title="Editar Pontos de Acesso"></a></li>
                                <li class="visualizarAPs"><a href="ap_info.jsf" title="Visualizar Pontos de Acesso"></a></li>
                            </ul>
                        </li>
                        <li class="regioes"><a href="#" title="Regi�es de Controle"></a>
                            <ul>
                                <li class="adicionarRegiao"><a href="new_region.jsf" title="Adicionar Regi�o de Controle"></a></li>
                                <li class="excluirRegiao"><a href="remove_region.jsf" title="Excluir Regi�o de Controle"></a></li>
                            </ul>
                        </li>
                        <li class="comandos"><a href="commander.jsf" title="Executar Comandos do Controlador"></a></li>
                        <li class="configurar"><a href="edit_parameters.jsf" title="Editar Configura��es do Controlador"></a></li>
                        <li class="mrtg"><a href="editMap.jsp?type=10" target="_blank" title="Monitoramento"></a></li>
                    </ul>
                </div>
            </div>

            <div id="coluna_dir">
                <div id="titulo">Visualizar Pontos de Acesso<label id="info_unreachable"><label></label><a href="#" title="Controlador Scifi - Pontos de acesso incomunicantes" class="thickbox"></a><img src="../figuras/wait.gif"/></label><a href="logout.jsf" id="logout">Logout</a> </div>
                <div class="barraConteudo"></div>
                <div id="conteudo">
                    <table id="tab_aps">
                        <thead>
                            <tr>
                                <th>MAC</th>
                                <th>IP</th>
                                <th>Localiza��o</th>
                                <th>Regi�o</th>
                                <th>Canal</th>
                                <th>Lista de Pot�ncias</th>
                                <th>Pot�ncia Atual</th>
                                <th>N�mero de Usu�rios</th>
                                <th>Status</th>
                                <th>Limite de Carga Baixa</th>
                                <th>Limite de Sobrecarga</th>
                                <th>Latitude</th>
                                <th>Longitude</th>
                                <th>Informa��o de Scan</th>
                                <th>A��es</th>
                            </tr>
                        </thead>
                        <tbody id="tbody_aps"></tbody>
                    </table>
                </div>
            </div>        
            <div class="clr"></div>

            <div id="rodape">
                <ul>
                    <li class="uff"><a href="http://www.uff.br/" title="Universidade Federal Fluminense"></a></li>
                    <li class="midiacom"><a href="http://www.midiacom.uff.br/" title="Laborat�rio M�diacom"></a></li>
                    <li class="computacao"><a href="http://www.ic.uff.br/" title="Instituto de Computa��o UFF"></a></li>
                    <li class="engenharia"><a href="http://www.engenharia.uff.br/" title="Escola de Engenharia UFF"></a></li>
                    <li class="rnp"><a href="http://www.rnp.br/" title="Rede Nacional de Pesquisa"></a></li>
                </ul>
            </div>           

        </div>
    </body>
</html>
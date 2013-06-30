<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<%@taglib uri="http://java.sun.com/jsf/html" prefix="h" %>
<%@taglib uri="http://java.sun.com/jsf/core" prefix="f" %>

<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
        <title>Controlador Scifi - Visualizar Informa��es de Scan</title>
        <script type="text/javascript" src="../javascript/preloadImages.js"></script>
        <script type="text/javascript" src="../javascript/apInfo.js"></script>
        <link href="../css/estilo.css" rel="stylesheet" type="text/css" />
    </head>
    <body>
        <div id="tudo">

            <div id="topo">

                <div id="logo"><ul><li><a href="admin.html" title="Voltar � p�gina inicial"></a></li></ul></div>

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
                    </ul>
                </div>
            </div>

            <div id="coluna_dir">
                <div id="titulo">Visualizar Informa��es de Scan</div>
                <div class="barraConteudo"></div>
                <div id="conteudo">
                    <f:view>
                        <h:form>
                            <h:dataTable id="dt1" var="item" value="#{JAPListBean.listCellInfo}" rowClasses="#{JAPListBean.rowColorScan}">

                                <f:facet name="caption">
                                    <h:outputText value="Tabela de Scan - MAC: #{JAPListBean.MACFromQueryString} - IP: #{JAPListBean.IPFromQueryString}" />
                                </f:facet>

                                <h:column >
                                    <f:facet name="header" >
                                        <h:outputText value="MAC"></h:outputText>
                                    </f:facet>
                                    <h:outputText value="#{item.MAC}"></h:outputText>
                                </h:column>

                                <h:column >
                                    <f:facet name="header" >
                                        <h:outputText value="Canal"></h:outputText>
                                    </f:facet>
                                    <h:outputText value="#{item.channel}"></h:outputText>
                                </h:column>

                                <h:column >
                                    <f:facet name="header" >
                                        <h:outputText value="Nivel do Sinal (dBm)"></h:outputText>
                                    </f:facet>
                                    <h:outputText value="#{item.signalLevel}"></h:outputText>
                                </h:column>

                                <h:column >
                                    <f:facet name="header" >
                                        <h:outputText value="Qualidade"></h:outputText>
                                    </f:facet>
                                    <h:outputText value="#{item.quality}"></h:outputText>
                                </h:column>

                                <h:column >
                                    <f:facet name="header" >
                                        <h:outputText value="ESSID"></h:outputText>
                                    </f:facet>
                                    <h:outputText value="#{item.ESSID}"></h:outputText>
                                </h:column>
                            </h:dataTable>

                            <h:outputLink value="ap_info.jsf"><h:outputText value="Voltar"></h:outputText></h:outputLink>

                        </h:form>
                    </f:view>
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

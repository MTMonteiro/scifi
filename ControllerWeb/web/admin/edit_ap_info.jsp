<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<%@taglib uri="http://java.sun.com/jsf/html" prefix="h" %>
<%@taglib uri="http://java.sun.com/jsf/core" prefix="f" %>

<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
        <title>Controlador Scifi - Editar Pontos de Acesso</title>
        <script type="text/javascript" src="../javascript/preloadImages.js"></script>
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
                <div id="titulo">Editar Pontos de Acesso</div>
                <div class="barraConteudo"></div>
                <div id="conteudo">
                        <f:view>
                            <h:form id="EditForm">

                                <h:inputHidden id="ShortErrorMessage" value="true"/>

                                <h:dataTable id="dt1" var="item" value="#{JAPListBean.listAP}">

                                    <f:facet name="caption">
                                        <h:outputText value="Tabela de uso dos pontos de acesso" />
                                    </f:facet>

                                    <h:column >
                                        <f:facet name="header" >
                                            <h:outputText value="MAC" ></h:outputText>
                                        </f:facet>
                                        <h:outputText value="#{item.MAC}"></h:outputText>
                                    </h:column>

                                    <h:column>
                                        <f:facet name="header" >
                                            <h:outputText value="IP" ></h:outputText>
                                        </f:facet>
                                        <h:outputText value="#{item.IP}"></h:outputText>
                                    </h:column>

                                    <h:column >
                                        <f:facet name="header" >
                                            <h:outputText value="Localiza��o" ></h:outputText>
                                        </f:facet>

                                        <h:panelGrid  columns="2" columnClasses=" ,infoSize">    

                                            <h:inputText id="APLocation" value="#{item.location}" validator="#{JAPInfoValidator.isEmpty}">
                                                <f:attribute name="ShortErrorMessage" value="#{true}"/>
                                            </h:inputText>

                                            <h:message for="APLocation" errorClass="errorMessage" infoClass="infoMessage"/>

                                        </h:panelGrid> 

                                    </h:column>

                                    <h:column >
                                        <f:facet name="header" >
                                            <h:outputText value="Regi�o"></h:outputText>
                                        </f:facet>
                                        <h:selectOneMenu id="APRegion" value="#{item.region}">
                                            <f:selectItems value="#{JAPListBean.regions}"/>
                                        </h:selectOneMenu>
                                    </h:column>



                                    <h:column >
                                        <f:facet name="header" >
                                            <h:outputText value="Lista de Pot�ncias" ></h:outputText>
                                        </f:facet>

                                        <h:panelGrid  columns="2" columnClasses=" ,infoSize">

                                            <h:inputText value="#{item.listTxPower}" id="TxPower" validator="#{JAPInfoValidator.checkListTxPower}" >
                                                <f:attribute name="ShortErrorMessage" value="#{true}"/>
                                            </h:inputText>

                                            <h:message for="TxPower" errorClass="errorMessage" infoClass="infoMessage" />

                                        </h:panelGrid> 
                                    </h:column>

                                    <h:column >
                                        <f:facet name="header" >
                                            <h:outputText value="Limite de Carga Baixa" ></h:outputText>
                                        </f:facet>

                                        <h:panelGrid  columns="2" columnClasses=" underload,infoSize">

                                            <h:inputText value="#{item.underloadThreshold}" converterMessage="*" id="APUnderloadThreshold" validator="#{JAPInfoValidator.isUnsignedInteger}" >
                                                <f:attribute name="ShortErrorMessage" value="#{true}"/>
                                            </h:inputText>

                                            <h:message for="APUnderloadThreshold" errorClass="errorMessage" infoClass="infoMessage" />

                                        </h:panelGrid> 
                                    </h:column>

                                    <h:column >
                                        <f:facet name="header" >
                                            <h:outputText value="Limite de Sobrecarga" ></h:outputText>
                                        </f:facet>

                                        <h:panelGrid  columns="2" columnClasses=" overload,infoSize">

                                            <h:inputText value="#{item.overloadThreshold}" converterMessage="*" id="APOverloadThreshold" validator="#{JAPInfoValidator.checkOverloadThreshold}" >
                                                <f:attribute name="ShortErrorMessage" value="#{true}"/>
                                            </h:inputText>

                                            <h:message for="APOverloadThreshold" errorClass="errorMessage" infoClass="infoMessage" />

                                        </h:panelGrid> 
                                    </h:column>

                                </h:dataTable>

                                <h:panelGrid columns="1" styleClass="tableFinal">  

                                    <h:messages globalOnly="true" errorClass="errorMessage" infoClass="infoMessage"/>  

                                    <h:commandButton action="#{JAPListBean.updateList}" value="Salvar modifica��es" styleClass="submit"></h:commandButton>

                                </h:panelGrid> 

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

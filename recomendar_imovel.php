<?php

error_reporting(E_ALL);
ini_set("display_errors", "On");
define('_JEXEC', 1);
define('DS', DIRECTORY_SEPARATOR);
define('JPATH_BASE', ObterEnderecoBase());

require_once( 'configuration.php' );
require_once( 'includes/defines.php' );
require_once( 'includes/framework.php' );
require_once( 'libraries/joomla/factory.php' );

//$user = $_POST["user"];
//$imovel = $_POST["imovel"];
$user = (int) $_REQUEST["user"];
$imovel = (int) $_REQUEST["imovel"];
$acesso = $_REQUEST["acesso"];
$like = $_REQUEST["like"];
$formulario = $_REQUEST["formulario"];
if (!isset($acesso)) {
    $acesso = NULL;
} else {
    $acesso = (int) $_REQUEST["acesso"];
}
if (!isset($like)) {
    $like = NULL;
} else {
    $like = (int) $_REQUEST["like"];
}
if (!isset($formulario)) {
    $formulario = NULL;
} else {
    $formulario = (int) $_REQUEST["formulario"];
}

function ObterEnderecoBase() {

    $EnderecoArquivo = $_SERVER['SCRIPT_FILENAME'];
    $vAux = explode("/", $EnderecoArquivo);

    //Retirando o nome do arquivo
    array_pop($vAux);

    $EnderecoRetorno = implode("/", $vAux) . "/";

    return $EnderecoRetorno;
}

function verificarRegistro($idUser, $idImovel) {
    $db = JFactory::getDbo();
    $query = $db->getQuery(true);
//    $query = "SELECT ri.id FROM qtdpv_recomendacao_imovel ri WHERE ri.id_imovel = $idImovel AND ri.id_user = $idUser";

    $query
            ->select('id')
            ->from('#__recomendacao_imovel')
            ->where('id_imovel = ' . intval($idImovel))
            ->where('id_user = ' . intval($idUser));
    $db->setQuery($query);

    return $db->loadObject();
}

function gravarRegistro($idUser, $idImovel, $acesso, $like, $formulario) {
    $db = JFactory::getDbo();
    $query = $db->getQuery(true);

    $columns = array('id_user', 'id_imovel', 'acesso', 'like', 'formulario');
    $values = array($idUser, $idImovel, $acesso, $like, $formulario);

    // Prepare the insert query.
    $query
            ->insert($db->quoteName('#__recomendacao_imovel'))
            ->columns($db->quoteName($columns))
            ->values(implode(',', $values));
    $db->setQuery($query);

    return $db->execute();
}

function atualizarRegistro($idUser, $idImovel, $acesso, $like, $formulario, $idRegistro) {

    $db = JFactory::getDbo();
    $query = $db->getQuery(true);

    $fieldAcesso = array();
    if (!is_null($acesso)) {
        $fieldAcesso = array($db->quoteName('acesso') . ' = ' . $acesso);
    }
    $fieldLike = array();
    if (!is_null($like)) {
        $fieldLike = array($db->quoteName('like') . ' = ' . $like);
    }
    $fieldFormulario = array();
    if (!is_null($formulario)) {
        $fieldFormulario = array($db->quoteName('formulario') . ' = ' . $formulario);
    }
    // Fields to update.
    $fields = $fieldAcesso + $fieldLike + $fieldFormulario;
    // Conditions for which records should be updated.
    $conditions = array(
        $db->quoteName('id') . ' = ' . $idRegistro
    );

    $query->update($db->quoteName('#__recomendacao_imovel'))->set($fields)->where($conditions);
    $db->setQuery($query);

    return $db->execute();
}

$idRegistro = verificarRegistro($user, $imovel);
$id = (int) $idRegistro->id;
if ($idRegistro->id == NULL || $idRegistro->id == 0) {
    $verif = gravarRegistro($user, $imovel, $acesso, $like, $formulario);
//    var_dump($verif);
} else {
    $verif = atualizarRegistro($user, $imovel, $acesso, $like, $formulario, $id);
//    var_dump($verif);
}
//echo 'Id registro' . $idRegistro->id;

<?php
error_reporting(E_ALL);
ini_set("display_errors", "On");
define('_JEXEC', 1);
define('DS', DIRECTORY_SEPARATOR);
define('JPATH_BASE', ObterEnderecoBase());

require_once( '../configuration.php' );
require_once( '../includes/defines.php' );
require_once( '../includes/framework.php' );
require_once( '../libraries/joomla/factory.php' );

//$user = $_POST["user"];
//$imovel = $_POST["imovel"];
$user = $_REQUEST["user"];
$imovel = $_REQUEST["imovel"];

function ObterEnderecoBase() {

    $EnderecoArquivo = $_SERVER['SCRIPT_FILENAME'];
    $vAux = explode("/", $EnderecoArquivo);

    //Retirando o nome do arquivo
    array_pop($vAux);

    $EnderecoRetorno = implode("/", $vAux) . "/";

    return $EnderecoRetorno;
}

function verificarRegistro($idUser,$idImovel) {
    $db = JFactory::getDbo();
//    $query = $db->getQuery(true);
//
//    $query
//            ->select('id')
//            ->from('#__recomendacao_imovel')
//            ->where('id_imovel = ' . intval($idImovel))
//            ->where('id_user = ' . intval($idUser));

}
$query = "SELECT ri.id FROM qtdpv_recomendacao_imovel ri WHERE ri.id_imovel = $idImovel AND ri.id_user = $idUser";
    $db->setQuery($query);
//    return $db->loadObject();
//$idRegistro = verificarRegistro($user, $imovel);
$idRegistro = $db->loadObject();
echo 'Id registro'. $idRegistro->id;
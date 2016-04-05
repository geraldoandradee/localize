<?php

/**
 *
 *
 * @package   mod_blank250
 * copyright Blackdale.com/Bob Galway
 * @license GPL3
 */
// no direct access
defined('_JEXEC') or die;

class modrecomendacaoHelper {

    function phpprocessbm($pcode, $modno, $fname) {
        $fcontent = "<?php defined('_JEXEC') or die; " . $pcode . " ?>";
        if (file_get_contents($fname) !== $fcontent) {
            file_put_contents($fname, $fcontent);
        }
        return $fname;
    }

    function getListImoveis() {
        $query = "SELECT YEAR(i.data_lancamento) as ano, i.metragem,i.valor,i.num_vagas,i.num_quartos,i.num_banheiros,i.caracteristicas"
                . " FROM qtdpv_localize_imovel i"
                . " WHERE state = 1";
        $db = JFactory::getDbo();
        $db->setQuery($query);
        $obj = $db->loadObjectList();
    }

}

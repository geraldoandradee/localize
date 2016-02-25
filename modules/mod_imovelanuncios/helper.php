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

class modimovelanunciosHelper {

    function phpprocessbm($pcode, $modno, $fname) {
        $fcontent = "<?php defined('_JEXEC') or die; " . $pcode . " ?>";
        if (file_get_contents($fname) !== $fcontent) {
            file_put_contents($fname, $fcontent);
        }
        return $fname;
    }
    function getList($params){
        if(!empty($params->get('limite')) && $params->get('limite') != NULL){
            $limite = "LIMIT ".$params->get('limite');
        }else{
             $limite = "LIMIT 4";
        }
        if(!empty($params->get('tipo')) && $params->get('tipo') != NULL && $params->get('tipo') != 0){
            $tipo = "AND i.etapa_negocio = ".$params->get('tipo');
        }else{
            $tipo = "";
        }
        $db = JFactory::getDbo();
        $query = "SELECT * FROM #__localize_imovel i WHERE i.state = 1 ".$tipo." ORDER BY i.modified DESC, i.data_lancamento DESC " . $limite;
//        die($query);
        $db->setQuery($query);
        $list = $db->loadObjectList();
        
        return $list;
    }

}

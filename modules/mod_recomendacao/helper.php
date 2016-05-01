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
        $imoveis = modrecomendacaoHelper::getListQueryImoveis();
        $imovelActive = modrecomendacaoHelper::getListImovelActive();

        $similaridadeImoveis = modrecomendacaoHelper::getSimilaridadeImoveis($imovelActive, $imoveis);
        $listImoveisSimilares = array();
        foreach ($similaridadeImoveis as $nimv => $imovel):
            $listImoveisSimilares[$nimv] = modrecomendacaoHelper::getListImoveisSimilares($imovel["imovel"]);            
        endforeach;
        return $listImoveisSimilares;
    }

    function getListImoveisSimilares($idImovelSimilar) {
        $imovelId = modrecomendacaoHelper::getImovelId();
        $query = "SELECT i.*,YEAR(i.data_lancamento) as ano"
                . " FROM qtdpv_localize_imovel i"
                . " WHERE state = 1 AND id != " . $imovelId . " AND id = " . $idImovelSimilar;
        $db = JFactory::getDbo();
        $db->setQuery($query);
        $obj = $db->loadObject();
        return $obj;
    }
    function getListQueryImoveis() {
        $imovelId = modrecomendacaoHelper::getImovelId();
        $query = "SELECT i.*,YEAR(i.data_lancamento) as ano"
                . " FROM qtdpv_localize_imovel i"
                . " WHERE state = 1 AND id != " . $imovelId;
        $db = JFactory::getDbo();
        $db->setQuery($query);
        $obj = $db->loadAssocList();
        return $obj;
    }

    function getListImovelActive() {
        $imovelId = modrecomendacaoHelper::getImovelId();
        $query = "SELECT i.*,YEAR(i.data_lancamento) as ano"
                . " FROM qtdpv_localize_imovel i"
                . " WHERE state = 1 AND id = " . $imovelId;
        $db = JFactory::getDbo();
        $db->setQuery($query);
        $obj = $db->loadAssocList();
        return $obj;
    }

    function getItensRecomenda() {
        $query = "SELECT YEAR(i.data_lancamento) as ano, i.metragem,i.valor,i.num_vagas,i.num_quartos,i.num_banheiros,i.caracteristicas"
                . " FROM qtdpv_localize_imovel i"
                . " WHERE state = 1";
        $db = JFactory::getDbo();
        $db->setQuery($query);
        $obj = $db->loadAssocList();
        return $obj;
    }

    function getImovelId() {
        $imovelId = array_pop(explode("/", $_SERVER["REQUEST_URI"]));
        return (int) $imovelId;
    }

    function getImoveisNormalizados($imoveis) {
//      [ano, tamanho, valor, número de vagas, número de quartos, numero de banheiros]
        $min = ["ano" => 1990, "metragem" => 40, "valor" => 100000, "num_vagas" => 0, "num_quartos" => 1, "num_banheiros" => 1];
        $max = ["ano" => 2016, "metragem" => 200, "valor" => 2000000, "num_vagas" => 3, "num_quartos" => 4, "num_banheiros" => 5];

//      Fórmula: f(x) = (x - min) / (max - min);
        foreach ($imoveis as $k => $result):
            if ($result["ano"]) {
                $formula = ($result["ano"] - $min["ano"]) / ($max["ano"] - $min["ano"]);
                $imoveis[$k]["ano"] = $formula;
            }
            if ($result["metragem"]) {
                $formula = ($result["metragem"] - $min["metragem"]) / ($max["metragem"] - $min["metragem"]);
                $imoveis[$k]["metragem"] = $formula;
            }
            if ($result["valor"]) {
                $formula = ($result["valor"] - $min["valor"]) / ($max["valor"] - $min["valor"]);
                $imoveis[$k]["valor"] = $formula;
            }
            if ($result["num_vagas"]) {
                $formula = ($result["num_vagas"] - $min["num_vagas"]) / ($max["num_vagas"] - $min["num_vagas"]);
                $imoveis[$k]["num_vagas"] = $formula;
            }
            if ($result["num_vagas"]) {
                $formula = ($result["num_quartos"] - $min["num_quartos"]) / ($max["num_quartos"] - $min["num_quartos"]);
                $imoveis[$k]["num_quartos"] = $formula;
            }
            if ($result["num_banheiros"]) {
                $formula = ($result["num_banheiros"] - $min["num_banheiros"]) / ($max["num_banheiros"] - $min["num_banheiros"]);
                $imoveis[$k]["num_banheiros"] = $formula;
            }
        endforeach;

        return $imoveis;
    }

    function getSimilaridadeImoveis($imovelActive, $imoveis) {
         $prepareImoveis = modrecomendacaoHelper::prepareItens($imoveis);
        $prepareImovelActive = modrecomendacaoHelper::prepareItens($imovelActive);

        $imovelAtiveNorm = modrecomendacaoHelper::getImoveisNormalizados($prepareImovelActive);
        $imoveisNorm = modrecomendacaoHelper::getImoveisNormalizados($prepareImoveis);
        $cosineDistance = array();
        
        function quadrado($n) {
            return $n * $n;
        }

        function multiplicar($n, $m) {
            return $n * $m;
        }
        
        foreach ($imoveisNorm as $nimv => $imovel):
            $cosineDistance[$nimv]["imovelactive"] = $imovelActive[0]["id"];
            $cosineDistance[$nimv]["cosinedistance"] = modrecomendacaoHelper::getSimilaridadeCossenos($imovelAtiveNorm[0], $imovel);
            $cosineDistance[$nimv]["imovel"] = $imoveis[$nimv]["id"]; 
            $cosine[$nimv] = modrecomendacaoHelper::getSimilaridadeCossenos($imovelAtiveNorm[0], $imovel);
        endforeach;
        array_multisort($cosine, SORT_DESC, $cosineDistance);
        return $cosineDistance;
    }

    function getSimilaridadeCossenos($imovelActive, $imoveis) {
        // dot product é um vetor cujos elementos é o produto dos respectivos elementos dos dois vetores iniciais
        $dot_product = array_sum(array_map('multiplicar', $imovelActive, $imoveis));

        // vetores com os elementos dos vetores iniciais ao quadrado
        $imovelActiveQuadrado = array_map('quadrado', $imovelActive);
        $imoveisQuadrado = array_map('quadrado', $imoveis);
        //var_dump($conjunto1_quadrado, $conjunto2_quadrado);
        //L2Norm é a raiz quadrada da soma dos elementos dos vetores iniciais ao quadrado
        $imovelActiveQuadradoNorm = sqrt(array_sum($imovelActiveQuadrado));
        $imoveisQuadradoNorm = sqrt(array_sum($imoveisQuadrado));
        //var_dump($conjunto1_l2norm, $conjunto2_l2norm);
        // a distancia do cosseno é dada pela divisão do dot product pela multiplicação da L2Norm dos vetores iniciais
        $cosine_distance = $dot_product / ($imovelActiveQuadradoNorm * $imoveisQuadradoNorm);

        return $cosine_distance;
    }

    function prepareItens($imoveis) {
        foreach ($imoveis as $pos => $result):
            unset($imoveis[$pos]);
            $imoveis[$pos] = modrecomendacaoHelper::preparePropriedades($result);
        endforeach;
        return $imoveis;
    }

    function preparePropriedades($imovel) {
        $propriedades = array();
        $propriedades['ano'] .= $imovel['ano'];
        $propriedades['metragem'] .= $imovel['metragem'];
        $propriedades['valor'] .= $imovel['valor'];
        $propriedades['num_vagas'] .= $imovel['num_vagas'];
        $propriedades['num_quartos'] .= $imovel['num_quartos'];
        $propriedades['num_banheiros'] .= $imovel['num_banheiros'];
        return $propriedades;
    }
 
}

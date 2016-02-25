<?php
/**
 *
 *
 * @package   mod_blank250
 * copyright Blackdale/Bob Galway
 * @license GPL3
 */
// no direct access
defined('_JEXEC') or die;
$doc = JFactory::getDocument();
include('params.php');
include('css.php');
?>
<h5>Encontre seu doce lar!</h5>
<form>
    <select>
        <option>Apartamentos</option>
        <option>Casas/Sobrados</option>
    </select>

    <input type="text" placeholder="O que você está procurando?" />
    <input type="submit" value="Pesquisar" />

</form>


<?php

/**
 * @package     Joomla.Plugin
 * @subpackage  User.profile
 *
 * @copyright   Copyright (C) 2005 - 2015 Open Source Matters, Inc. All rights reserved.
 * @license     GNU General Public License version 2 or later; see LICENSE.txt
 */
defined('_JEXEC') or die;

/**
 * An example custom profile plugin.
 *
 * @since  1.6
 */
class PlgUserProfile extends JPlugin {

    /**
     * Date of birth.
     *
     * @var    string
     * @since  3.1
     */
    private $date = '';

    /**
     * Load the language file on instantiation.
     *
     * @var    boolean
     * @since  3.1
     */
    protected $autoloadLanguage = true;

    /**
     * Constructor
     *
     * @param   object  &$subject  The object to observe
     * @param   array   $config    An array that holds the plugin configuration
     *
     * @since   1.5
     */
    public function __construct(& $subject, $config) {
        parent::__construct($subject, $config);
        JFormHelper::addFieldPath(__DIR__ . '/fields');
    }

    /**
     * Runs on content preparation
     *
     * @param   string  $context  The context for the data
     * @param   object  $data     An object containing the data for the form.
     *
     * @return  boolean
     *
     * @since   1.6
     */
    public function onContentPrepareData($context, $data) {
        // Check we are manipulating a valid form.
        if (!in_array($context, array('com_users.profile', 'com_users.user', 'com_users.registration', 'com_admin.profile'))) {
            return true;
        }
        if (is_object($data)) {
            $userId = isset($data->id) ? $data->id : 0;
            if (!isset($data->profile) and $userId > 0) {
                // Load the profile data from the database.
                $db = JFactory::getDbo();
                $db->setQuery(
                        'SELECT profile_key, profile_value FROM #__user_profiles' .
                        ' WHERE user_id = ' . (int) $userId . " AND profile_key LIKE 'profile.%'" .
                        ' ORDER BY ordering'
                );
                try {
                    $results = $db->loadRowList();
                } catch (RuntimeException $e) {
                    $this->_subject->setError($e->getMessage());
                    return false;
                }
                // Merge the profile data.
                $data->profile = array();
                foreach ($results as $v) {
                    $k = str_replace('profile.', '', $v[0]);
                    $data->profile[$k] = json_decode($v[1], true);
                    if ($data->profile[$k] === null) {
                        $data->profile[$k] = $v[1];
                    }
                }
            }
            if (!JHtml::isRegistered('users.url')) {
                JHtml::register('users.url', array(__CLASS__, 'url'));
            }
            if (!JHtml::isRegistered('users.calendar')) {
                JHtml::register('users.calendar', array(__CLASS__, 'calendar'));
            }
            if (!JHtml::isRegistered('users.tos')) {
                JHtml::register('users.tos', array(__CLASS__, 'tos'));
            }
            if (!JHtml::isRegistered('users.dob')) {
                JHtml::register('users.dob', array(__CLASS__, 'dob'));
            }
        }
        return true;
    }

    /**
     * Returns a anchor tag generated from a given value
     *
     * @param   string  $value  url to use
     *
     * @return mixed|string
     */
    public static function url($value) {
        if (empty($value)) {
            return JHtml::_('users.value', $value);
        } else {
            // Convert website url to utf8 for display
            $value = JStringPunycode::urlToUTF8(htmlspecialchars($value));
            if (substr($value, 0, 4) == "http") {
                return '<a href="' . $value . '">' . $value . '</a>';
            } else {
                return '<a href="http://' . $value . '">' . $value . '</a>';
            }
        }
    }

    /**
     * Returns html markup showing a date picker
     *
     * @param   string  $value  valid date string
     *
     * @return  mixed
     */
    public static function calendar($value) {
        if (empty($value)) {
            return JHtml::_('users.value', $value);
        } else {
            return JHtml::_('date', $value, null, null);
        }
    }

    /**
     * Returns the date of birth formatted and calculated using server timezone.
     *
     * @param   string  $value  valid date string
     *
     * @return  mixed
     */
    public static function dob($value) {
        if (!$value) {
            return '';
        }
        return JHtml::_('date', $value, JText::_('DATE_FORMAT_LC1'), false);
    }

    /**
     * Return the translated strings yes or no depending on the value
     *
     * @param   boolean  $value  input value
     *
     * @return string
     */
    public static function tos($value) {
        if ($value) {
            return JText::_('JYES');
        } else {
            return JText::_('JNO');
        }
    }

    /**
     * Adds additional fields to the user editing form
     *
     * @param   JForm  $form  The form to be altered.
     * @param   mixed  $data  The associated data for the form.
     *
     * @return  boolean
     *
     * @since   1.6
     */
    public function onContentPrepareForm($form, $data) {
        if (!($form instanceof JForm)) {
            $this->_subject->setError('JERROR_NOT_A_FORM');
            return false;
        }
        // Check we are manipulating a valid form.
        $name = $form->getName();
        if (!in_array($name, array('com_admin.profile', 'com_users.user', 'com_users.profile', 'com_users.registration'))) {
            return true;
        }
        // Add the registration fields to the form.
        JForm::addFormPath(__DIR__ . '/profiles');
        $form->loadFile('profile', false);
        $fields = array(
            'sexo',
            'estado',
            'municipio',
            'telefone1',
            'telefone2',
            'renda',
            'cpf',
            'aboutme',
            'preferencias',
            'perfil',
            'dob',
            'tos',
        );
        // Change fields description when displayed in front-end or back-end profile editing
        $app = JFactory::getApplication();
        if ($app->isSite() || $name == 'com_users.user' || $name == 'com_admin.profile') {
            $form->setFieldAttribute('sexo', 'description', 'PLG_USER_PROFILE_FILL_FIELD_DESC_SITE', 'profile');
            $form->setFieldAttribute('estado', 'description', 'PLG_USER_PROFILE_FILL_FIELD_DESC_SITE', 'profile');
            $form->setFieldAttribute('municipio', 'description', 'PLG_USER_PROFILE_FILL_FIELD_DESC_SITE', 'profile');
            $form->setFieldAttribute('telefone1', 'description', 'PLG_USER_PROFILE_FILL_FIELD_DESC_SITE', 'profile');
            $form->setFieldAttribute('telefone2', 'description', 'PLG_USER_PROFILE_FILL_FIELD_DESC_SITE', 'profile');
            $form->setFieldAttribute('faixa', 'description', 'PLG_USER_PROFILE_FILL_FIELD_DESC_SITE', 'profile');
            $form->setFieldAttribute('cpf', 'description', 'PLG_USER_PROFILE_FILL_FIELD_DESC_SITE', 'profile');
            $form->setFieldAttribute('aboutme', 'description', 'PLG_USER_PROFILE_FILL_FIELD_DESC_SITE', 'profile');
            $form->setFieldAttribute('preferencias', 'description', 'PLG_USER_PROFILE_FILL_FIELD_DESC_SITE', 'profile');
            $form->setFieldAttribute('perfil', 'description', 'PLG_USER_PROFILE_FILL_FIELD_DESC_SITE', 'profile');
            $form->setFieldAttribute('dob', 'description', 'PLG_USER_PROFILE_FILL_FIELD_DESC_SITE', 'profile');
            $form->setFieldAttribute('tos', 'description', 'PLG_USER_PROFILE_FIELD_TOS_DESC_SITE', 'profile');
        }
        $tosarticle = $this->params->get('register_tos_article');
        $tosenabled = $this->params->get('register-require_tos', 0);
        // We need to be in the registration form, field needs to be enabled and we need an article ID
        if ($name != 'com_users.registration' || !$tosenabled || !$tosarticle) {
            // We only want the TOS in the registration form
            $form->removeField('tos', 'profile');
        } else {
            // Push the TOS article ID into the TOS field.
            $form->setFieldAttribute('tos', 'article', $tosarticle, 'profile');
        }
        foreach ($fields as $field) {
            // Case using the users manager in admin
            if ($name == 'com_users.user') {
                // Remove the field if it is disabled in registration and profile
                if ($this->params->get('register-require_' . $field, 1) == 0 && $this->params->get('profile-require_' . $field, 1) == 0) {
                    $form->removeField($field, 'profile');
                }
            }
            // Case registration
            elseif ($name == 'com_users.registration') {
                // Toggle whether the field is required.
                if ($this->params->get('register-require_' . $field, 1) > 0) {
                    $form->setFieldAttribute($field, 'required', ($this->params->get('register-require_' . $field) == 2) ? 'required' : '', 'profile');
                } else {
                    $form->removeField($field, 'profile');
                }
            }
            // Case profile in site or admin
            elseif ($name == 'com_users.profile' || $name == 'com_admin.profile') {
                // Toggle whether the field is required.
                if ($this->params->get('profile-require_' . $field, 1) > 0) {
                    $form->setFieldAttribute($field, 'required', ($this->params->get('profile-require_' . $field) == 2) ? 'required' : '', 'profile');
                } else {
                    $form->removeField($field, 'profile');
                }
            }
        }
        return true;
    }

    /**
     * Method is called before user data is stored in the database
     *
     * @param   array    $user   Holds the old user data.
     * @param   boolean  $isnew  True if a new user is stored.
     * @param   array    $data   Holds the new user data.
     *
     * @return    boolean
     *
     * @since   3.1
     * @throws    InvalidArgumentException on invalid date.
     */
    public function onUserBeforeSave($user, $isnew, $data) {
        // Check that the date is valid.
        if (!empty($data['profile']['dob'])) {
            try {
                $date = new JDate($data['profile']['dob']);
                $this->date = $date->format('Y-m-d H:i:s');
            } catch (Exception $e) {
                // Throw an exception if date is not valid.
                throw new InvalidArgumentException(JText::_('PLG_USER_PROFILE_ERROR_INVALID_DOB'));
            }
        }
        return true;
    }

    /**
     * Saves user profile data
     *
     * @param   array    $data    entered user data
     * @param   boolean  $isNew   true if this is a new user
     * @param   boolean  $result  true if saving the user worked
     * @param   string   $error   error message
     *
     * @return bool
     */
    public function onUserAfterSave($data, $isNew, $result, $error) {
        $userId = JArrayHelper::getValue($data, 'id', 0, 'int');
        if ($userId && $result && isset($data['profile']) && (count($data['profile']))) {
            $perfil = $this->knn($data['profile'], $userId);
            $data['profile']['perfil'] = $perfil;
            try {
                // Sanitize the date
                $data['profile']['dob'] = $this->date;
                $db = JFactory::getDbo();
                $query = $db->getQuery(true)
                        ->delete($db->quoteName('#__user_profiles'))
                        ->where($db->quoteName('user_id') . ' = ' . (int) $userId)
                        ->where($db->quoteName('profile_key') . ' LIKE ' . $db->quote('profile.%'));
                $db->setQuery($query);
                $db->execute();
                $tuples = array();
                $order = 1;
                foreach ($data['profile'] as $k => $v) {
                    $tuples[] = '(' . $userId . ', ' . $db->quote('profile.' . $k) . ', ' . $db->quote(json_encode($v)) . ', ' . ($order++) . ')';
                }
                $db->setQuery('INSERT INTO #__user_profiles VALUES ' . implode(', ', $tuples));
                $db->execute();
            } catch (RuntimeException $e) {
                $this->_subject->setError($e->getMessage());
                return false;
            }
        }
        return true;
    }

    /**
     * Remove all user profile information for the given user ID
     *
     * Method is called after user data is deleted from the database
     *
     * @param   array    $user     Holds the user data
     * @param   boolean  $success  True if user was succesfully stored in the database
     * @param   string   $msg      Message
     *
     * @return  boolean
     */
    public function onUserAfterDelete($user, $success, $msg) {
        if (!$success) {
            return false;
        }
        $userId = JArrayHelper::getValue($user, 'id', 0, 'int');
        if ($userId) {
            try {
                $db = JFactory::getDbo();
                $db->setQuery(
                        'DELETE FROM #__user_profiles WHERE user_id = ' . $userId .
                        " AND profile_key LIKE 'profile.%'"
                );
                $db->execute();
            } catch (Exception $e) {
                $this->_subject->setError($e->getMessage());
                return false;
            }
        }
        return true;
    }

    public function knn($data, $userId, $k = 20) {
        $profileUser = $this->getProfileUser($data, $userId);
        $profiles = $this->getListProfiles($userId);
        $similares = $this->getSimilaridadePerfis($profileUser, $profiles);
        $ksimiliares = array_slice($similares, 0, $k);
        $perfil = $this->getPerfil($ksimiliares);
        return $perfil;
    }

    public function preferencias($pref_id) {
        $db = JFactory::getDbo();
        $sql = "SELECT alias FROM #__tags WHERE id IN(" . $pref_id . ") ORDER BY id DESC";
        $db->setQuery($sql);
        $tags = $db->loadAssocList();
        foreach ($tags as $t => $tag):
            $tags[$t] = $tag["alias"];
        endforeach;
        return $tags;
    }

    public function getProfileUser($data, $userId) {
        $pref_id = implode(",", $data["preferencias"]);
        $preferencias = $this->preferencias($pref_id);
        $userProfile = ["data_nascimento" => $data["dob"], "sexo" => $data["sexo"], "renda" => $data["renda"], "preferencias" => $preferencias];
        $profile = [["user_id" => (int) $userId, "propietes" => $userProfile]];
        return $profile;
    }

    public function getListProfiles($userId) {
        $profilesId = $this->getListQueryProfile($userId);
        $listProfiles = array();
        foreach ($profilesId as $nimv => $profile):
            $listProfiles[$nimv] = ["user_id" => (int) $profile["user_id"], "propietes" => $this->getListProfilesProprietes($profile["user_id"])];
        endforeach;
        return $listProfiles;
    }

    public function getListQueryProfile($userId) {
        $query = "SELECT user_id FROM #__user_profiles WHERE user_id != " . $userId . " GROUP BY user_id";
        $db = JFactory::getDbo();
        $db->setQuery($query);
        $obj = $db->loadAssocList();
        return $obj;
    }

    public function getListProfilesProprietes($userProfileId) {
        $query = "SELECT * FROM #__user_profiles WHERE user_id = " . $userProfileId;
        $db = JFactory::getDbo();
        $db->setQuery($query);
        $obj = $db->loadAssocList();
        $profile = array();
        foreach ($obj as $k => $item):
            $profile[$item["profile_key"]] = $item["profile_value"];
        endforeach;
        $pref_id = implode(",", json_decode($profile["profile.preferencias"]));
        $preferencias = $this->preferencias($pref_id);
        $userProfile = ["data_nascimento" => json_decode($profile["profile.dob"]), "sexo" => json_decode($profile["profile.sexo"]), "renda" => json_decode($profile["profile.renda"]), "preferencias" => $preferencias];
        return $userProfile;
    }

    public function getSimilaridadePerfis($profileUser, $profiles) {
        $profileUserNumerosNorm = $this->getNormalizaNumeros($profileUser);
        $profilesNumerosNorm = $this->getNormalizaNumeros($profiles);
        $cosineDistance = array();

        function quadrado($n) {
            return $n * $n;
        }

        function multiplicar($n, $m) {
            return $n * $m;
        }

        foreach ($profilesNumerosNorm as $nimv => $profile):
            $cosineDistance[$nimv]["user_id"] = (int) $profileUserNumerosNorm[0]["user_id"];
            $cosineDistance[$nimv]["cosinedistance"] = $this->getSimilaridadeCossenos($profileUserNumerosNorm[0], $profile);
            $cosineDistance[$nimv]["profile_id"] = $profile["user_id"];
            $cosine[$nimv] = $this->getSimilaridadeCossenos($profileUserNumerosNorm[0], $profile);
        endforeach;
        array_multisort($cosine, SORT_DESC, $cosineDistance);

        return $cosineDistance;
    }

    public function getNormalizaNumeros($profiles) {
//      [data_nascimento]
        $max = ["data_nascimento" => date("Y") - 80];
        $min = ["data_nascimento" => date("Y") - 13];
//      Fórmula: f(x) = (x - min) / (max - min);
        foreach ($profiles as $k => $result):
            if ($result["propietes"]["data_nascimento"]) {
                $data_nascimento = date("Y", strtotime($result["propietes"]["data_nascimento"]));
                $formula = ($data_nascimento - $min["data_nascimento"]) / ($max["data_nascimento"] - $min["data_nascimento"]);
                $profiles[$k]["propietes"]["data_nascimento"] = $formula;
            }
        endforeach;

        return $profiles;
    }

    public function getSimilaridadeCossenos($profileUser, $profile) {
        $modelo = $this->getModelo();
        $modeloProfileUser = $this->normalizaModelo($modelo, $profileUser);
        $modeloProfile = $this->normalizaModelo($modelo, $profile);
        similar_text($profileUser["propietes"]["sexo"], $profile["propietes"]["sexo"], $similarTextSexo);
        similar_text($profileUser["propietes"]["renda"], $profile["propietes"]["renda"], $similarTextRenda);
        if ($similarTextSexo == 100) {
            $modeloProfileUser[1] = 1;
            $modeloProfile[1] = 1;
        } else {
            $modeloProfileUser[1] = 0;
            $modeloProfile[1] = 0;
        }
        if ($similarTextRenda == 100) {
            $modeloProfileUser[2] = 1;
            $modeloProfile[2] = 1;
        } else {
            $modeloProfileUser[2] = 0;
            $modeloProfile[2] = 0;
        }

        // dot product é um vetor cujos elementos é o produto dos respectivos elementos dos dois vetores iniciais
        $dot_product = array_sum(array_map('multiplicar', $modeloProfileUser, $modeloProfile));

        // vetores com os elementos dos vetores iniciais ao quadrado
        $profileUserQuadrado = array_map('quadrado', $modeloProfileUser);
        $profileQuadrado = array_map('quadrado', $modeloProfile);
        //var_dump($conjunto1_quadrado, $conjunto2_quadrado);
        //L2Norm é a raiz quadrada da soma dos elementos dos vetores iniciais ao quadrado
        $profileUserQuadradoNorm = sqrt(array_sum($profileUserQuadrado));
        $profileQuadradoNorm = sqrt(array_sum($profileQuadrado));
        //var_dump($conjunto1_l2norm, $conjunto2_l2norm);
        // a distancia do cosseno é dada pela divisão do dot product pela multiplicação da L2Norm dos vetores iniciais
        $cosine_distance = $dot_product / ($profileUserQuadradoNorm * $profileQuadradoNorm);
//        var_dump($cosine_distance);
//        die(var_dump($dot_product,$profileUserQuadradoNorm, $profileQuadradoNorm,$modeloProfileUser, $modeloProfile));
        return $cosine_distance;
    }

    public function getModelo() {
        $db = JFactory::getDbo();
        $sql = "SELECT alias FROM #__tags WHERE published = 1 AND id != 1 ORDER BY id DESC";
        $db->setQuery($sql);
        $tags = $db->loadAssocList();
        foreach ($tags as $t => $tag):
            $tags[$t] = $tag["alias"];
        endforeach;
        return $tags;
    }

    public function normalizaModelo($modelo, $profile) {
        $modeloNorm = [$profile["propietes"]["data_nascimento"], $profile["propietes"]["sexo"], $profile["propietes"]["renda"]];
        foreach ($modelo as $posicao):
            if (array_search($posicao, $profile["propietes"]["preferencias"]) !== FALSE) {
                array_push($modeloNorm, 1);
            } else {
                array_push($modeloNorm, 0);
            }
        endforeach;
        return $modeloNorm;
    }

    public function getPerfil($profiles) {
        $perfisSimilares = array();
        foreach ($profiles as $p => $profile):
            $perfisSimilares = array_merge($perfisSimilares, $this->perfilSimilar($profile["profile_id"]));
        endforeach;
            $perfil = array();
            $carecteristicasRepetidas = array_count_values($perfisSimilares);
            foreach ($carecteristicasRepetidas as $k => $caracteristica):
                array_push($perfil, (string) $k);
            endforeach;
            $perfil = array_slice($perfil, 0,3);
        return $perfil;
    }

    public function perfilSimilar($idUserSimilar) {
        $db = JFactory::getDbo();
        $sql = "SELECT profile_value as perfilsimilar FROM #__user_profiles WHERE user_id = " . $idUserSimilar . " AND profile_key = 'profile.perfil'";
        $db->setQuery($sql);
        $profilevalue = $db->loadAssoc();
        $perfilval = json_decode($profilevalue["perfilsimilar"]);
        return $perfilval;
    }

}

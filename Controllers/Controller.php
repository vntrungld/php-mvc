<?php
/**
 * Created by PhpStorm.
 * User: Admin
 * Date: 2/25/2019
 * Time: 8:31 PM
 */

require_once(__DIR__ . '/../Models/User.php');

class Controller
{
    protected function view($name, $data = []) {
        extract($data);
        include(__DIR__ . '/../Views/' . $name . '.php');
    }

    protected function user() {
        if (! $_SESSION['user_id']) {
            return null;
        }

        return (new User)->where(['id' => $_SESSION['user_id']])->first();
    }

    function redirect($url, $statusCode = 303) {
        header('Location: ' . $url, true, $statusCode);
        die();
    }
}

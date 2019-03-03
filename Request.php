<?php
/**
 * Created by PhpStorm.
 * User: Admin
 * Date: 2/25/2019
 * Time: 9:05 PM
 */

class Request
{
    function __construct() {
        foreach($_SERVER as $key => $value) {
            $this->{strtolower($key)} = $value;
        }

        if (in_array($this->request_method, ['POST', 'PUT', 'DELETE'])) {
            foreach($_POST as $key => $value) {
                $this->{$key} = $value;
            }
        }
    }
}
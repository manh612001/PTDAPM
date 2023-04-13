<?php

require_once __DIR__ . "/../config/constant.php";
require_once __DIR__ . "/../config/database.php";

class BaseController {
    function __construct() {}

    /**
     * METHOD GET
     */
    // abstract function get() {}

    /**
     * METHOD POST
     */
    // abstract function post() {}
    
    /**
     * METHOD UPDATE
     */
    // abstract function update() {}
    
    /**
     * METHOD DELETE
     */
    // abstract functio n delete() {}

    function index() {
        require_once DIRNAME_VIEWS_CONTROLLER . "/index.php";    
    }

    function __destruct() {}
}
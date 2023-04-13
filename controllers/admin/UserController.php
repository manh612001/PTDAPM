<?php

require_once __DIR__ . "/../../config/constant.php";
require_once __DIR__ . "/../BaseController.php";

class UserController extends BaseController {

    function login() {
        require_once DIRNAME_VIEWS_CONTROLLER . "/admin/login.php";
    }

    function index() {
        require_once DIRNAME_VIEWS_CONTROLLER . "/admin/index.php";
    }
}